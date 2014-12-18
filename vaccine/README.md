Vaccine
=======
Readme-Runtime.txt contains information on how to prepare and do runtime injection

#SOURCE
Source is a Eclipse workspace and contains the following projects:

GUI (the graphical user interface of Vaccine and the server part)  
ManifestChanger (a component for chaning the AndroidManifest.xml file  )
StaticVaccineLIb (a regular android application which includes Vaccine service and Beanshell library)    
RuntimeVaccineLib( a regular android application which includes Vaccine service and included Beanshell source code)   

In order to be able to inject StaticVaccineLib or RuntimeVaccineLib into the target application you need to first
build the project like an android aplication. The next step is to get smali source out of the apk package and place
it inside inject folder. Source from inject folder will be added to the target application. 


#REQUIREMENTS
 - smali/baksmali (vaccine has been tested with smali/baksmali 2.0b6)
 	- place smali-version.jar and baksmali-version.jar into vaccine directory and rename them to smali.jar and baksmali.jar
 - adt bundle (aapt and adb)
	- export aapt and adb:
		- export PATH=$PATH:/path_to_adt/adt/sdk/platform-tools
		- export PATH=$PATH:/path_to_adt/adt/sdk/tools
 - jarsigner 
	- export jarsigner:
		export PATH=$PATH:/path_to_jarsigner/
 - keystore
	- the keystore is used for signing application with jarsigner
	- you can create a keystore if you run eclipse from adt bundle, create an empty android application and run it. After that  a debug keystore is created in /your_home_dir/.android/debug.keystore
	- optional you can create the keystore with keytool:
		keytool -genkey -v -keystore ~/.android/debug.keystore -alias androiddebugkey -storepass android -keypass android -keyalg RSA -validity 14000
 - make sure device is connected
	- adb devices

#USAGE 

Vaccinate and install vaccinated apk file:  
./vaccine -i apkfile -p 8888

Stop service on vaccinated apk file that listens on specified port:  
./vaccine --stop full_package_name -p 8888

Start service of package (You can get the package name in log file):  
./vaccine --start full_package_name -p 8888

Use another keystore:  
./vaccine -i apkfile -p 8888 --keystore path_to_keystore --pass keystore_password --alias keystore_alias  

UI instructions:

right mouse click on an object in the tree object structure view (left upper part of the UI) returns all fields of the object.
double mouse click on an object copies the beanshell name of the object to beanshell scripting view (below the tree object structure view). Objects can be manipulated in the benashell scripting view by accessing them via the beanshell name or if they are static with statically name (like in Java). Output of the beanshell script can be seen in with adb logcat. You can run adb logcat like this:

adb -d logcat SocketService:V System.out:I System.err:V *:S


#Examples of beanshell scripts

//create new scripted object

object = object();  
object.foo = "This is foo of object";  

//print to stdout

print("This is a text...");  
System.out.println("This is printing the Java way");  


//run on UI thread  

__beanshell.Name.Of.Activitiy.runOnUiThread (  
	new Thread(new Runnable() {   
		public void run() {  
			__beanshell.Name.Of.Activitiy.someUIMethod();  
		}  
}));  


//create an thread that prints every 2s a variable value to STDOUT (if you want't to stop this   
//thread, just run the script object.flag=false)  

object = object();  
object.flag=true;  

foo() {  
    run() {  
    	   
    	   while(object.flag){  
    	   		print(SOME_VARIABLE);  
    	   		Thread.sleep(2000);  
    	   	}  
        
    }  
    return this;  
}  

foo = foo();  
new Thread( foo ).start();  



#MISC

First of all, you need an android application (apk). You can get the application with "adb pull /data/app/app.apk". Vaccine won't install the android application if the application is already installed
on the phone. If something goes wrong in the installation process, install.apk is the modified application. You can install the modified application with adb (adb install install.apk). After that you 
need to start the service with vaccine (./vaccine --start full_package_name -p 8888). 

The permissions file in vaccine folder contains all the permissions an android application can have. If you uncomment a line in this file, manifest.jar will add this permission to the apk. 
The java source code of the injected service (smali code is in the inject folder), the UI (vaccine.jar) and the manifest changer (manifest.jar) are located in folder workspace. Beanshell commands are placed in the bsh/commands directory. If you want to write your own beanshell commands you can place them in the bsh/commands directory and vaccine will automatic inject all the commands into the APK.



#We are using

Beanshell (http://www.beanshell.org/download.html). Original source code at http://www.beanshell.org/bsh-2.0b4-src.zip  
RSyntaxTextArea (https://github.com/bobbylight)  
Apache Commons IO (http://commons.apache.org/proper/commons-io/)  
AXML (https://code.google.com/p/axml/)  

RSyntaxTextArea  
© 2012 Robert Futrell  
http://fifesoft.com/rsyntaxtextarea/  
[All Rights Reserved](./referfiles/RSyntaxTextArea.License.txt)  

Apache Commons IO  
Copyright 2002-2012 The Apache Software Foundation  
This product includes software developed by   
The Apache Software Foundation (http://www.apache.org/).  
[Apache License](./referfiles/Apache.License.txt)  

AXML  
Copyright (c) 2009-2012 Panxiaobo  
https://code.google.com/p/axml/  
[Apache License](./referfiles/Apache.License.txt)  

BeanShell   
Copyright(C) 2000 Pat Niemeyer  
[All Rights Reserved](./referfiles/Beanshell.License.txt)   




