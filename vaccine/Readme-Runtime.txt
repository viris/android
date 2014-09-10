#1.	Download NDK
###########################
https://developer.android.com/tools/sdk/ndk/index.html#Installing

#2.	Extract and add to path
###########################

export PATH=$PATH:/root/android/android-ndk-r9d

#3.	Download ADBI and DDI
###########################

git clone https://github.com/crmulliner/adbi
git clone https://github.com/crmulliner/ddi


#4.	Build hijack from ADBI and push to phone, build libbase
###########################
cd adbi/hijack/jni
ndk-build
cd ..
adb push libs/armeabi/hijack /data/local/tmp/

cd adbi/instruments/base/jni/
ndk-build


#5.	Setup DDI
###########################
#a.	Poll libraries from Phone and build Dalvikhook
###########################

cd ddi/dalvikhook/jni/libs
adb pull /system/lib/libdl.so
adb pull /system/lib/libdvm.so
cd..
ndk-build


#b.	Build vaccinehook and push it to phone. Also push vaclasses.dex to phone.
###########################

cd ddi/examples/vaccine/jni
ndk-build
cd ..
adb push libs/armeabi/libvaccine.so /data/local/tmp
adb push vaclasses.dex /data/local/tmp

#If you get the error “cc1: some warnings being treated as errors” you should comment the line “TARGET_FORMAT_STRING_CFLAGS := #-Wformat -Werror=format-security” in file “ndk/build/core/default-build-commands.mk”

#c.	Hook method and Inject Vaccine Service
###########################

adb push vaclasses.dex /data/local/tmp/
adb shell
su
cd /data/local/tmp
touch vaccine.log
chmod 777 /data/local/tmp/vaccine.log
chmod 777 /data/dalvik-cache/

#get PID of zygote

./hijack -d -p PID -z -l /data/local/tmp/libvaccine.so -s full.package.name

#example 

./hijack -d -p 141 -z -l /data/local/tmp/libvaccine.so -s com.android.mms

#now run the Messaging apk on phone and you should see something similar

mprotect: 0x401e0ef4
dlopen: 0x401060a5
^[[1;2DPID=141  child=1504
zygote -> com.android.mms
pc=401e0e90 lr=401e5fc9 sp=beb51678 fp=100000
r0=53dd6000 r1=100000
r2=3 r3=4022
stack: 0xbeb31000-0xbeb52000 leng = 135168
executing injection code at 0xbeb51628
calling mprotect
library injection completed!

#d.	Run Vaccine GUI (For now!!!). 
#################################
#In folder smali should be smali source of target apk

java -jar vaccine.jar rstart 38301 smali/


