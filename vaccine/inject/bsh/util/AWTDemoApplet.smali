.class public Lbsh/util/AWTDemoApplet;
.super Ljava/applet/Applet;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/applet/Applet;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .registers 4

    new-instance v0, Ljava/awt/BorderLayout;

    invoke-direct {v0}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {p0, v0}, Lbsh/util/AWTDemoApplet;->setLayout(Ljava/awt/LayoutManager;)V

    new-instance v1, Lbsh/util/AWTConsole;

    invoke-direct {v1}, Lbsh/util/AWTConsole;-><init>()V

    const-string v2, "Center"

    move-object v0, v1

    check-cast v0, Ljava/awt/Component;

    invoke-virtual {p0, v2, v0}, Lbsh/util/AWTDemoApplet;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v0, Lbsh/Interpreter;

    invoke-direct {v0, v1}, Lbsh/Interpreter;-><init>(Lbsh/ConsoleInterface;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
