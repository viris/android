.class public Lbsh/util/JDemoApplet;
.super Ljavax/swing/JApplet;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljavax/swing/JApplet;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .registers 4

    const-string v0, "debug"

    invoke-virtual {p0, v0}, Lbsh/util/JDemoApplet;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    sput-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    :cond_13
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lbsh/util/JDemoApplet;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4d

    const-string v1, "desktop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    :try_start_23
    new-instance v0, Lbsh/Interpreter;

    invoke-direct {v0}, Lbsh/Interpreter;-><init>()V

    const-string v1, "desktop()"

    invoke-virtual {v0, v1}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2d
    .catch Lbsh/TargetError; {:try_start_23 .. :try_end_2d} :catch_2e
    .catch Lbsh/EvalError; {:try_start_23 .. :try_end_2d} :catch_43

    :goto_2d
    return-void

    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Lbsh/TargetError;->printStackTrace()V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lbsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lbsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2d

    :catch_43
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lbsh/EvalError;->printStackTrace()V

    goto :goto_2d

    :cond_4d
    invoke-virtual {p0}, Lbsh/util/JDemoApplet;->getContentPane()Ljava/awt/Container;

    move-result-object v0

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    new-instance v0, Lbsh/util/JConsole;

    invoke-direct {v0}, Lbsh/util/JConsole;-><init>()V

    invoke-virtual {p0}, Lbsh/util/JDemoApplet;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    const-string v2, "Center"

    invoke-virtual {v1, v2, v0}, Ljava/awt/Container;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v1, Lbsh/Interpreter;

    invoke-direct {v1, v0}, Lbsh/Interpreter;-><init>(Lbsh/ConsoleInterface;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_2d
.end method
