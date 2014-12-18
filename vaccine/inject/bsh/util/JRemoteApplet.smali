.class public Lbsh/util/JRemoteApplet;
.super Ljavax/swing/JApplet;


# instance fields
.field in:Ljava/io/InputStream;

.field out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljavax/swing/JApplet;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .registers 6

    invoke-virtual {p0}, Lbsh/util/JRemoteApplet;->getContentPane()Ljava/awt/Container;

    move-result-object v0

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    :try_start_c
    invoke-virtual {p0}, Lbsh/util/JRemoteApplet;->getDocumentBase()Ljava/net/URL;

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

    iput-object v0, p0, Lbsh/util/JRemoteApplet;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lbsh/util/JRemoteApplet;->in:Ljava/io/InputStream;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_2b} :catch_3e

    new-instance v0, Lbsh/util/JConsole;

    iget-object v1, p0, Lbsh/util/JRemoteApplet;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lbsh/util/JRemoteApplet;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v1, v2}, Lbsh/util/JConsole;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lbsh/util/JRemoteApplet;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    const-string v2, "Center"

    invoke-virtual {v1, v2, v0}, Ljava/awt/Container;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    :goto_3d
    return-void

    :catch_3e
    move-exception v0

    invoke-virtual {p0}, Lbsh/util/JRemoteApplet;->getContentPane()Ljava/awt/Container;

    move-result-object v0

    const-string v1, "Center"

    new-instance v2, Ljava/awt/Label;

    const-string v3, "Remote Connection Failed"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/awt/Label;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/awt/Container;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    goto :goto_3d
.end method
