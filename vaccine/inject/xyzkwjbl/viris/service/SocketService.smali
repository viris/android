.class public Lxyzkwjbl/viris/service/SocketService;
.super Landroid/app/Service;
.source "SocketService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxyzkwjbl/viris/service/SocketService$ServerThread;,
        Lxyzkwjbl/viris/service/SocketService$SocketServiceBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SocketService"

.field private static c:Ljava/util/Calendar;

.field public static connected:Z

.field private static port:I


# instance fields
.field private interpreter:Lbsh/Interpreter;

.field private final mBinder:Landroid/os/IBinder;

.field private rootObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private server:Ljava/net/ServerSocket;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const v0, 0x959d

    sput v0, Lxyzkwjbl/viris/service/SocketService;->port:I

    .line 37
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lxyzkwjbl/viris/service/SocketService;->c:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    new-instance v0, Lxyzkwjbl/viris/service/SocketService$SocketServiceBinder;

    invoke-direct {v0, p0}, Lxyzkwjbl/viris/service/SocketService$SocketServiceBinder;-><init>(Lxyzkwjbl/viris/service/SocketService;)V

    iput-object v0, p0, Lxyzkwjbl/viris/service/SocketService;->mBinder:Landroid/os/IBinder;

    .line 28
    return-void
.end method

.method static synthetic access$0()I
    .registers 1

    .prologue
    .line 36
    sget v0, Lxyzkwjbl/viris/service/SocketService;->port:I

    return v0
.end method

.method static synthetic access$1(Lxyzkwjbl/viris/service/SocketService;Ljava/net/ServerSocket;)V
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lxyzkwjbl/viris/service/SocketService;->server:Ljava/net/ServerSocket;

    return-void
.end method

.method static synthetic access$2(Lxyzkwjbl/viris/service/SocketService;Lbsh/Interpreter;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lxyzkwjbl/viris/service/SocketService;->interpreter:Lbsh/Interpreter;

    return-void
.end method

.method static synthetic access$3()Ljava/util/Calendar;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lxyzkwjbl/viris/service/SocketService;->c:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$4(Lxyzkwjbl/viris/service/SocketService;)Ljava/net/ServerSocket;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lxyzkwjbl/viris/service/SocketService;->server:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic access$5(Lxyzkwjbl/viris/service/SocketService;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lxyzkwjbl/viris/service/SocketService;->rootObjects:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$6(Lxyzkwjbl/viris/service/SocketService;)Lbsh/Interpreter;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lxyzkwjbl/viris/service/SocketService;->interpreter:Lbsh/Interpreter;

    return-object v0
.end method

.method static synthetic access$7(Lxyzkwjbl/viris/service/SocketService;Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lxyzkwjbl/viris/service/SocketService;->getName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createSocketServer()V
    .registers 6

    .prologue
    .line 111
    sget-boolean v2, Lxyzkwjbl/viris/service/SocketService;->connected:Z

    if-nez v2, :cond_29

    .line 112
    const/4 v2, 0x1

    sput-boolean v2, Lxyzkwjbl/viris/service/SocketService;->connected:Z

    .line 114
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lxyzkwjbl/viris/service/SocketService$ServerThread;

    invoke-direct {v2, p0}, Lxyzkwjbl/viris/service/SocketService$ServerThread;-><init>(Lxyzkwjbl/viris/service/SocketService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 115
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 118
    new-instance v2, Lbsh/Interpreter;

    invoke-direct {v2}, Lbsh/Interpreter;-><init>()V

    iput-object v2, p0, Lxyzkwjbl/viris/service/SocketService;->interpreter:Lbsh/Interpreter;

    .line 120
    const-string v0, "Server started!"

    .line 121
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 126
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "t":Ljava/lang/Thread;
    :goto_28
    return-void

    .line 124
    :cond_29
    const-string v2, "SocketService"

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lxyzkwjbl/viris/service/SocketService;->c:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " Already connected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method private getName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "__"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 146
    iget-object v0, p0, Lxyzkwjbl/viris/service/SocketService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 6

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 44
    invoke-direct {p0}, Lxyzkwjbl/viris/service/SocketService;->createSocketServer()V

    .line 45
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lxyzkwjbl/viris/service/SocketService;->rootObjects:Ljava/util/HashMap;

    .line 47
    invoke-virtual {p0}, Lxyzkwjbl/viris/service/SocketService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {p0, v2}, Lxyzkwjbl/viris/service/SocketService;->getName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lxyzkwjbl/viris/service/SocketService;->rootObjects:Ljava/util/HashMap;

    invoke-virtual {p0}, Lxyzkwjbl/viris/service/SocketService;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :try_start_1e
    iget-object v2, p0, Lxyzkwjbl/viris/service/SocketService;->interpreter:Lbsh/Interpreter;

    invoke-virtual {p0}, Lxyzkwjbl/viris/service/SocketService;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    iget-object v2, p0, Lxyzkwjbl/viris/service/SocketService;->interpreter:Lbsh/Interpreter;

    const-string v3, "rootObjects"

    iget-object v4, p0, Lxyzkwjbl/viris/service/SocketService;->rootObjects:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_30
    .catch Lbsh/EvalError; {:try_start_1e .. :try_end_30} :catch_3d

    .line 58
    :goto_30
    invoke-virtual {p0}, Lxyzkwjbl/viris/service/SocketService;->getApplication()Landroid/app/Application;

    move-result-object v2

    .line 59
    new-instance v3, Lxyzkwjbl/viris/service/SocketService$1;

    invoke-direct {v3, p0}, Lxyzkwjbl/viris/service/SocketService$1;-><init>(Lxyzkwjbl/viris/service/SocketService;)V

    .line 58
    invoke-virtual {v2, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 103
    return-void

    .line 53
    :catch_3d
    move-exception v0

    .line 54
    .local v0, "e":Lbsh/EvalError;
    invoke-virtual {v0}, Lbsh/EvalError;->printStackTrace()V

    goto :goto_30
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lxyzkwjbl/viris/service/SocketService;->stopSelf()V

    .line 140
    invoke-virtual {p0}, Lxyzkwjbl/viris/service/SocketService;->stopSocketServer()V

    .line 141
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 142
    return-void
.end method

.method public stopSocketServer()V
    .registers 5

    .prologue
    .line 129
    const/4 v1, 0x0

    sput-boolean v1, Lxyzkwjbl/viris/service/SocketService;->connected:Z

    .line 131
    :try_start_3
    iget-object v1, p0, Lxyzkwjbl/viris/service/SocketService;->server:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_9

    .line 136
    :goto_8
    return-void

    .line 132
    :catch_9
    move-exception v0

    .line 133
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "SocketService"

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lxyzkwjbl/viris/service/SocketService;->c:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method
