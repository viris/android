package xyzkwjbl.viris.service;



import java.io.EOFException;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import android.widget.Toast;
import bsh.EvalError;
import bsh.Interpreter;

public class SocketService extends Service {

	private static final String TAG = "SocketService";
	private final IBinder mBinder = new SocketServiceBinder();
	private ServerSocket server;
	public static boolean connected;
	private HashMap<String,Object> rootObjects;
	//the port is just reference later it will be replaced with argument port
	private static int port = 38301;
	private static Calendar c = Calendar.getInstance();
	private Interpreter interpreter;

	
	@Override
	public void onCreate() {
		super.onCreate();
		createSocketServer();
		rootObjects = new HashMap<String,Object>();
		//put first root object in rootObjects
		String name = getName(getApplication());
		rootObjects.put(name,getApplication());
		try {
			interpreter.set(name, getApplication());
			//adding rootObject to interpreter
			interpreter.set("rootObjects", rootObjects);
		} catch (EvalError e) {
			e.printStackTrace();
		}
		//ading activities automatic to root objects
		//for refrence see activity lifecycle 
		getApplication().registerActivityLifecycleCallbacks(
				new ActivityLifecycleCallbacks() {
					public void onActivityResumed(final Activity activity) {
						
						if(!rootObjects.containsKey(activity.getClass().toString())){
							String name =getName(activity);
							rootObjects.put(name,activity);
							try {
								interpreter.set(name, activity);
								
							} catch (EvalError e) {
								e.printStackTrace();
							}
							Log.d(TAG,c.getTime().toString()+" Activity resumed");
							
						}
					}
					public void onActivityDestroyed(final Activity activity) {
						if(rootObjects.containsKey(activity.getClass().toString())){
							String name =getName(activity);
							rootObjects.remove(name);
							try {
								interpreter.set(name, null);
							} catch (EvalError e) {
								e.printStackTrace();
							}
							Log.d(TAG,c.getTime().toString()+" Activity destroyed");
						}
					}
					public void onActivityCreated(final Activity activity,
							final Bundle savedInstanceState) {
												
					}
					public void onActivityPaused(final Activity activity) {
					}
					public void onActivitySaveInstanceState(
							final Activity activity, Bundle outState) {
					}
					public void onActivityStarted(final Activity activity) {
						
					}
					public void onActivityStopped(final Activity activity) {
					}
				});
	
	}

	private String getName(Object object){
		return "__"+object.getClass().toString().split(" ")[1];
	}
	
	
	private void createSocketServer() {
		if (!connected) {
			connected = true;
			//starting server
			Thread t = new Thread(new ServerThread());
			t.start();
			
			//starting interpreter
			this.interpreter = new Interpreter();
		
			String msg = "Server started!";
			Toast.makeText(this, msg, msg.length()).show();
		
		} else {
			Log.d(TAG, c.getTime().toString()+" Already connected");
		}
	}

	public void stopSocketServer(){
			connected=false;
			try{
				server.close();
			}catch(IOException ex){
				Log.d(TAG, c.getTime().toString()+" IOException: "+ex.getMessage());
			}
		
	}
	@Override
	public void onDestroy() {
		stopSelf();
		stopSocketServer();
		super.onDestroy();
	}

	@Override
	public IBinder onBind(Intent intent) {
		return mBinder;
	}

	public class SocketServiceBinder extends Binder {
		SocketService getService() {
			return SocketService.this;
		}
	}
	
	
	
	public class ServerThread implements Runnable {
		
		public void run() {
		
			try {
				server = new ServerSocket(port);
				interpreter = new Interpreter();
				Log.d(TAG,  c.getTime().toString()+" waiting for connection");
				while (connected) {
					try {
						// listen for incoming clients
						Socket client = server.accept();
						ObjectInputStream in = new ObjectInputStream(client.getInputStream()); 					
						ObjectOutputStream out = new ObjectOutputStream(client.getOutputStream());
						Request request = (Request)in.readObject();		
						List<TransactionUnit> units = new ArrayList<TransactionUnit>();
						if(request.command.equals("init")){
						
							for(String key:rootObjects.keySet()){
								Object obj = rootObjects.get(key);
								String name = key;
								String arr[] = name.split("\\.");
								String shortName = arr[arr.length-1];
								TransactionUnit unit = new TransactionUnit(name,shortName,"entry point "+obj.hashCode(),obj.toString(),obj,obj.getClass().toString(),"object");
								units.add(unit);
								//set object in interpreter
								interpreter.set(name, obj);
							}
							String template = request.payload;
							interpreter.set("template", template);
												
						}else if (request.command.equals("stop")){
							out.writeObject(null);
							stopSocketServer();
							Log.d(TAG, c.getTime().toString()+" Service stoped");	
						}else if(request.command.equals("watch")){
							Object object=null;
							try{
								object = interpreter.eval(request.payload);							
							}catch (EvalError e) {
								e.printStackTrace();
								Log.d(TAG, c.getTime().toString()+" BSH Eval error: "+e.getMessage());				
							}
							TransactionUnit unit = request.watch;
							unit.value = object.toString();
							unit.ovalue = object;	
							units.add(unit);
							
						
							
						}else{
							System.out.println("Your command is: "+request.command);
							Object object=null;
							try{
								object = interpreter.eval(request.command);
							}catch (EvalError e) {
								e.printStackTrace();
								Log.d(TAG, c.getTime().toString()+" BSH Eval error: "+e.getMessage());				
							}
							//if inspect(object, boolean) command received
							//we are setting the fields to interpreter global namespace
							//TODO:couldn't find better way yet
							if(object instanceof ArrayList<?>){
								@SuppressWarnings("unchecked")
								List<?> list = (ArrayList<?>) object;
								if(list.size()>0 && list.get(0) instanceof TransactionUnit){
									for(int i=0; i<list.size(); i++){
										TransactionUnit tu = (TransactionUnit) list.get(i);
										if(tu.fieldType.equalsIgnoreCase("object")){
											try{
												interpreter.set(tu.bshName, tu.ovalue);									
											}catch(Exception exception){
												Log.d(TAG, c.getTime().toString()+"Interpreter couldn't set value");
												if(tu.ovalue != null){
													System.out.println(tu.bshName+": "+tu.ovalue.toString());
												}else{
													System.out.println(tu.bshName+": null");
												}
												
											}
										}
									}
									units = (ArrayList<TransactionUnit>)list;
								
								}
							}
						}
						out.writeObject(units);	
						out.writeObject(null);
						in.close();
						out.close();		
					
					}catch(EOFException e){
						//nothing to do here
					}catch (IOException e) {
						e.printStackTrace();
						Log.d(TAG, c.getTime().toString()+"IOException. The error is: "+e.getMessage());
						
					}
				}
			}catch (Exception e) {
				
				e.printStackTrace();
				Log.d(TAG, c.getTime().toString()+" Should not happen... The error is: "+e.getMessage());	
				stopSocketServer();
			}
			
			
		}
						
	}

}