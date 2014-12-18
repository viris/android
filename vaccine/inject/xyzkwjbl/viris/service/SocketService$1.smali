.class Lxyzkwjbl/viris/service/SocketService$1;
.super Ljava/lang/Object;
.source "SocketService.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxyzkwjbl/viris/service/SocketService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lxyzkwjbl/viris/service/SocketService;


# direct methods
.method constructor <init>(Lxyzkwjbl/viris/service/SocketService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lxyzkwjbl/viris/service/SocketService$1;->this$0:Lxyzkwjbl/viris/service/SocketService;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 76
    iget-object v2, p0, Lxyzkwjbl/viris/service/SocketService$1;->this$0:Lxyzkwjbl/viris/service/SocketService;

    # getter for: Lxyzkwjbl/viris/service/SocketService;->rootObjects:Ljava/util/HashMap;
    invoke-static {v2}, Lxyzkwjbl/viris/service/SocketService;->access$5(Lxyzkwjbl/viris/service/SocketService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 77
    iget-object v2, p0, Lxyzkwjbl/viris/service/SocketService$1;->this$0:Lxyzkwjbl/viris/service/SocketService;

    # invokes: Lxyzkwjbl/viris/service/SocketService;->getName(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v2, p1}, Lxyzkwjbl/viris/service/SocketService;->access$7(Lxyzkwjbl/viris/service/SocketService;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lxyzkwjbl/viris/service/SocketService$1;->this$0:Lxyzkwjbl/viris/service/SocketService;

    # getter for: Lxyzkwjbl/viris/service/SocketService;->rootObjects:Ljava/util/HashMap;
    invoke-static {v2}, Lxyzkwjbl/viris/service/SocketService;->access$5(Lxyzkwjbl/viris/service/SocketService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :try_start_23
    iget-object v2, p0, Lxyzkwjbl/viris/service/SocketService$1;->this$0:Lxyzkwjbl/viris/service/SocketService;

    # getter for: Lxyzkwjbl/viris/service/SocketService;->interpreter:Lbsh/Interpreter;
    invoke-static {v2}, Lxyzkwjbl/viris/service/SocketService;->access$6(Lxyzkwjbl/viris/service/SocketService;)Lbsh/Interpreter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2d
    .catch Lbsh/EvalError; {:try_start_23 .. :try_end_2d} :catch_52

    .line 84
    :goto_2d
    const-string v2, "SocketService"

    new-instance v3, Ljava/lang/StringBuilder;

    # getter for: Lxyzkwjbl/viris/service/SocketService;->c:Ljava/util/Calendar;
    invoke-static {}, Lxyzkwjbl/viris/service/SocketService;->access$3()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " Activity destroyed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v1    # "name":Ljava/lang/String;
    :cond_51
    return-void

    .line 81
    .restart local v1    # "name":Ljava/lang/String;
    :catch_52
    move-exception v0

    .line 82
    .local v0, "e":Lbsh/EvalError;
    invoke-virtual {v0}, Lbsh/EvalError;->printStackTrace()V

    goto :goto_2d
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 92
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 62
    iget-object v2, p0, Lxyzkwjbl/viris/service/SocketService$1;->this$0:Lxyzkwjbl/viris/service/SocketService;

    # getter for: Lxyzkwjbl/viris/service/SocketService;->rootObjects:Ljava/util/HashMap;
    invoke-static {v2}, Lxyzkwjbl/viris/service/SocketService;->access$5(Lxyzkwjbl/viris/service/SocketService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    .line 63
    iget-object v2, p0, Lxyzkwjbl/viris/service/SocketService$1;->this$0:Lxyzkwjbl/viris/service/SocketService;

    # invokes: Lxyzkwjbl/viris/service/SocketService;->getName(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v2, p1}, Lxyzkwjbl/viris/service/SocketService;->access$7(Lxyzkwjbl/viris/service/SocketService;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lxyzkwjbl/viris/service/SocketService$1;->this$0:Lxyzkwjbl/viris/service/SocketService;

    # getter for: Lxyzkwjbl/viris/service/SocketService;->rootObjects:Ljava/util/HashMap;
    invoke-static {v2}, Lxyzkwjbl/viris/service/SocketService;->access$5(Lxyzkwjbl/viris/service/SocketService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :try_start_23
    iget-object v2, p0, Lxyzkwjbl/viris/service/SocketService$1;->this$0:Lxyzkwjbl/viris/service/SocketService;

    # getter for: Lxyzkwjbl/viris/service/SocketService;->interpreter:Lbsh/Interpreter;
    invoke-static {v2}, Lxyzkwjbl/viris/service/SocketService;->access$6(Lxyzkwjbl/viris/service/SocketService;)Lbsh/Interpreter;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2c
    .catch Lbsh/EvalError; {:try_start_23 .. :try_end_2c} :catch_51

    .line 71
    :goto_2c
    const-string v2, "SocketService"

    new-instance v3, Ljava/lang/StringBuilder;

    # getter for: Lxyzkwjbl/viris/service/SocketService;->c:Ljava/util/Calendar;
    invoke-static {}, Lxyzkwjbl/viris/service/SocketService;->access$3()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " Activity resumed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v1    # "name":Ljava/lang/String;
    :cond_50
    return-void

    .line 68
    .restart local v1    # "name":Ljava/lang/String;
    :catch_51
    move-exception v0

    .line 69
    .local v0, "e":Lbsh/EvalError;
    invoke-virtual {v0}, Lbsh/EvalError;->printStackTrace()V

    goto :goto_2c
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 98
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 100
    return-void
.end method
