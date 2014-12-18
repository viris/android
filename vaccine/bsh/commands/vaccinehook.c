/*
 *  Collin's Dynamic Dalvik Instrumentation Toolkit for Android
 *  Collin Mulliner <collin[at]mulliner.org>
 *
 *  (c) 2012,2013
 *
 *  License: LGPL v2.1
 *
 */

#define _GNU_SOURCE
#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <dlfcn.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <sys/select.h>
#include <string.h>
#include <termios.h>
#include <pthread.h>
#include <sys/epoll.h>

#include <jni.h>
#include <stdlib.h>

#include "hook.h"
#include "dexstuff.h"
#include "dalvik_hook.h"
#include "base.h"

#undef log

#define log(...) \
        {FILE *fp = fopen("/data/local/tmp/vaccine.log", "a+");\
        fprintf(fp, __VA_ARGS__);\
        fclose(fp);}

static struct hook_t eph;
static struct dexstuff_t d;

static int debug;

static void my_log(char *msg)
{
	log(msg)
}
static void my_log2(char *msg)
{
	if (debug)
		log(msg)
}

static struct dalvik_hook_t sb1;


// helper function
void printString(JNIEnv *env, jobject str, char *l)
{
	char *s = (*env)->GetStringUTFChars(env, str, 0);
	if (s) {
		log("%s%s\n", l, s)
		(*env)->ReleaseStringUTFChars(env, str, s); 
	}
}

// patches
static void* sb1_toMyString(JNIEnv *env, jobject obj, jobject str)
{


	int cookie = dexstuff_loaddex(&d, "/data/local/tmp/vaclasses.dex");
	log("libvaccine: loaddex res = %x\n", cookie)
	if (!cookie)
		log("libsmsdispatch: make sure /data/dalvik-cache/ is world writable and delete data@local@tmp@ddiclasses.dex\n")

	void *clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/ConsoleInterface", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/UtilEvalError", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/Capabilities", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/Capabilities$Unavailable", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/CollectionManager", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/CollectionManager$2", cookie);
	
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BshClassManager", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BshClassManager$Listener", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BshClassManager$SignatureKey", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/NameSource", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/ParserTreeConstants", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/ParserConstants", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/Primitive", cookie);
	
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/Primitive$Special", cookie);	
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/Primitive$Special$1", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/Primitive$Special$2", cookie);
		
	
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/ClassIdentifier", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/Reflect", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/Types", cookie);	
	
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/Name", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/Variable", cookie);
	
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/NameSpace", cookie);	
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/This", cookie);	
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/This$Handler", cookie);
	
	
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/Token", cookie);	

	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/ParserTokenManager", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/Node", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/SimpleNode", cookie);	
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/SimpleNode$1", cookie);	
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHMethodInvocation", cookie);	
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHAmbiguousName", cookie);	
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHArguments", cookie);	
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHLiteral", cookie);	
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/Modifiers", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/ReturnControl", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHAssignment", cookie);	
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHForStatement", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHAllocationExpression", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHArrayDimensions", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHArrayInitializer", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHBinaryExpression", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHBlock", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHCastExpression", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHClassDeclaration", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHEnhancedForStatement", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHFormalComment", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHFormalParameter", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHFormalParameters", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHIfStatement", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHImportDeclaration", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHLiteral", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BshMethod", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHMethodDeclaration", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHPackageDeclaration", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHPrimarySuffix", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHPrimitiveType", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHReturnStatement", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHReturnType", cookie);
	
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BlockNameSpace", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHStatementExpressionList", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHSwitchLabel", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHSwitchStatement", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHTernaryExpression", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHThrowStatement", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHTryStatement", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHType", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHTypedVariableDeclaration", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHUnaryExpression", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHVariableDeclarator", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHWhileStatement", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/GeneratedClass", cookie);	
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/ReflectError", cookie);		
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/StringUtil", cookie);	
	
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/EvalError", cookie);	
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/ParseException", cookie);	
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/Parser", cookie);	
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/Parser$LookaheadSuccess", cookie);	
		
			
	
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/CommandLineReader", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/CallStack", cookie);

		
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/InterpreterError", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/EvalError", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/TokenMgrError", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/JJTParserState", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/JavaCharStream", cookie);

	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/LHS", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/BSHPrimaryExpression", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/ext/Interpreter", cookie);

	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/service/Request", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/service/TransactionUnit", cookie);

	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/service/SocketService", cookie);
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/service/SocketService$1", cookie);	
	clazz = dexstuff_defineclass(&d, "xyzkwjbl/viris/service/SocketService$ServerThread", cookie);
	

	//log("libvaccine: clazz2 = 0x%x\n", clazz2)


	//dump classes
	//dalvik_dump_class(&d, "Lbsh/Interpreter;");	

	jclass smsd = (*env)->FindClass(env, "xyzkwjbl/viris/service/SocketService");
	jmethodID constructor = (*env)->GetMethodID(env, smsd, "<init>", "()V");
	if (constructor) { 

		jobject obj = (*env)->NewObject(env, smsd, constructor);      
		log("libsmsdispatch: new obj = 0x%x\n", obj)
		
		if (!obj)
			log("libsmsdispatch: failed to create smsdispatch class, FATAL!\n")
	}
	else {
		log("libsmsdispatch: constructor not found!\n")
	}

	jvalue args[1];
	args[0].l = str;
	dalvik_prepare(&d, &sb1, env);
	void *res = (*env)->CallObjectMethodA(env, obj, sb1.mid,args); 
	log("success calling : %s\n", sb1.method_name)
	dalvik_postcall(&d, &sb1);

	char *s = (*env)->GetStringUTFChars(env, res, 0);
	if (s) {
		log("sb1.toString() = %s\n", s)
		(*env)->ReleaseStringUTFChars(env, res, s); 
	}

	return res;
}


void do_patch()
{
	log("do_patch()\n")
	dalvik_hook_setup(&sb1, "Lcom/example/labapp/SocketService;",  "toMyString",  "(Ljava/lang/String;)Ljava/lang/String;", 2, sb1_toMyString);
	dalvik_hook(&d, &sb1);
	
}

static int my_epoll_wait(int epfd, struct epoll_event *events, int maxevents, int timeout)
{
	int (*orig_epoll_wait)(int epfd, struct epoll_event *events, int maxevents, int timeout);
	orig_epoll_wait = (void*)eph.orig;
	// remove hook for epoll_wait
	hook_precall(&eph);

	// resolve symbols from DVM
	dexstuff_resolv_dvm(&d);
	// insert hooks
	do_patch();
	
	

        
	// call original function
	int res = orig_epoll_wait(epfd, events, maxevents, timeout);    
	return res;
}

// set my_init as the entry point
void __attribute__ ((constructor)) my_init(void);

void my_init(void)
{
	log("libstrmon: started\n")
 
 	// set to 1 to turn on, this will be noisy
	debug = 0;

 	// set log function for  libbase (very important!)
	set_logfunction(my_log2);
	// set log function for libdalvikhook (very important!)
	dalvikhook_set_logfunction(my_log2);

    hook(&eph, getpid(), "libc.", "epoll_wait", my_epoll_wait, 0);
}
