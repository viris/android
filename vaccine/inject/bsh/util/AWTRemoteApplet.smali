.class public Lbsh/util/AWTRemoteApplet;
.super Ljava/applet/Applet;


# instance fields
.field in:Ljava/io/InputStream;

.field out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/applet/Applet;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .registers 5

    new-instance v0, Ljava/awt/BorderLayout;

    invoke-direct {v0}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {p0, v0}, Lbsh/util/AWTRemoteApplet;->setLayout(Ljava/awt/LayoutManager;)V

    :try_start_8
    invoke-virtual {p0}, Lbsh/util/AWTRemoteApplet;->getDocumentBase()Ljava/net/URL;

    move-result-object v0

    new-instance v1, Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v2, v0}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lbsh/util/AWTRemoteApplet;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lbsh/util/AWTRemoteApplet;->in:Ljava/io/InputStream;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_27} :catch_36

    new-instance v0, Lbsh/util/AWTConsole;

    iget-object v1, p0, Lbsh/util/AWTRemoteApplet;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lbsh/util/AWTRemoteApplet;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v1, v2}, Lbsh/util/AWTConsole;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    const-string v1, "Center"

    invoke-virtual {p0, v1, v0}, Lbsh/util/AWTRemoteApplet;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    :goto_35
    return-void

    :catch_36
    move-exception v0

    const-string v0, "Center"

    new-instance v1, Ljava/awt/Label;

    const-string v2, "Remote Connection Failed"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/awt/Label;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Lbsh/util/AWTRemoteApplet;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    goto :goto_35
.end method
