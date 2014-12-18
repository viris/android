.class public Lbsh/util/Httpd;
.super Ljava/lang/Thread;


# instance fields
.field ss:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lbsh/util/Httpd;->ss:Ljava/net/ServerSocket;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lbsh/util/Httpd;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lbsh/util/Httpd;-><init>(I)V

    invoke-virtual {v0}, Lbsh/util/Httpd;->start()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :goto_0
    :try_start_0
    new-instance v0, Lbsh/util/HttpdConnection;

    iget-object v1, p0, Lbsh/util/Httpd;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/util/HttpdConnection;-><init>(Ljava/net/Socket;)V

    invoke-virtual {v0}, Lbsh/util/HttpdConnection;->start()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_0

    :catch_f
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method
