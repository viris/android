.class Lbsh/util/SessiondConnection;
.super Ljava/lang/Thread;


# instance fields
.field client:Ljava/net/Socket;

.field globalNameSpace:Lbsh/NameSpace;


# direct methods
.method constructor <init>(Lbsh/NameSpace;Ljava/net/Socket;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lbsh/util/SessiondConnection;->client:Ljava/net/Socket;

    iput-object p1, p0, Lbsh/util/SessiondConnection;->globalNameSpace:Lbsh/NameSpace;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lbsh/util/SessiondConnection;->client:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    new-instance v2, Ljava/io/PrintStream;

    iget-object v0, p0, Lbsh/util/SessiondConnection;->client:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Lbsh/Interpreter;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/4 v4, 0x1

    iget-object v5, p0, Lbsh/util/SessiondConnection;->globalNameSpace:Lbsh/NameSpace;

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lbsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbsh/Interpreter;->setExitOnEOF(Z)V

    invoke-virtual {v0}, Lbsh/Interpreter;->run()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_27

    :goto_26
    return-void

    :catch_27
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_26
.end method
