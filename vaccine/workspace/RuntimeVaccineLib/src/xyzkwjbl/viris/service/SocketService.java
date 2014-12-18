package xyzkwjbl.viris.service;



import java.io.EOFException;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.URL;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import xyzkwjbl.viris.ext.Capabilities;
import xyzkwjbl.viris.ext.Capabilities.Unavailable;
import xyzkwjbl.viris.ext.EvalError;
import xyzkwjbl.viris.ext.Interpreter;
import xyzkwjbl.viris.ext.This;
import xyzkwjbl.viris.ext.classpath.ClassManagerImpl;
import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;
import android.util.Log;

public class SocketService {

	private static final String TAG = "SocketService";
	private ServerSocket server;
	public static boolean connected;
	private HashMap<String,Object> rootObjects;
	//the port is just reference later it will be replaced with argument port
	private static int port = 38301;
	private static Calendar c = Calendar.getInstance();
	private Interpreter interpreter;
	private Application app;
	
	public SocketService(){
		start();
	}
	
	public void start() {
		Class<?> activityThreadClass;
		try {
			activityThreadClass = Class.forName("android.app.ActivityThread");
			Method method = activityThreadClass.getMethod("currentApplication");
			Application app = (Application) method.invoke(null, (Object[]) null);
			this.app = app;
		
				
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (NoSuchMethodException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		createSocketServer();
		rootObjects = new HashMap<String,Object>();
		//put first root object in rootObjects
		String name = getName(app);
		
		rootObjects.put(name,app);
		try {
			interpreter.set(name, app);
			//adding rootObject to interpreter
			interpreter.set("rootObjects", rootObjects);
		} catch (EvalError e) {
			e.printStackTrace();
		}
		//ading activities automatic to root objects
		//for refrence see activity lifecycle 
		app.registerActivityLifecycleCallbacks(
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
			//make private fields accessible
			try {
				Capabilities.setAccessibility(true);
			} catch (Unavailable e) {
				
				e.printStackTrace();
			}
			
			String msg = "Server started!";
			Log.d(TAG, c.getTime().toString()+" "+msg);
		
		} else {
			Log.d(TAG, c.getTime().toString()+" Already connected");
		}
	}
	public void destroySocketServer(){
		if(connected){
			connected=false;
			try{
				server.close();
			}catch(IOException ex){
				Log.d(TAG, c.getTime().toString()+" IOException: "+ex.getMessage());
			}
		}
		
	}
	
		
	
	public class ServerThread implements Runnable {
		
		public void run() {
		
			try {
				server = new ServerSocket(port);
				
			
				
				Log.d(TAG,  c.getTime().toString()+" waiting for connection");
				while (connected) {
					// listen for incoming clients
					Socket client = server.accept();
					
					try {
				
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
							destroySocketServer();
							return;
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
			}
			
			
		}
						
	}

}