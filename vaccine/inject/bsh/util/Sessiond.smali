.class public Lbsh/util/Sessiond;
.super Ljava/lang/Thread;


# instance fields
.field globalNameSpace:Lbsh/NameSpace;

.field private ss:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Lbsh/NameSpace;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lbsh/util/Sessiond;->ss:Ljava/net/ServerSocket;

    iput-object p1, p0, Lbsh/util/Sessiond;->globalNameSpace:Lbsh/NameSpace;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :goto_0
    :try_start_0
    new-instance v0, Lbsh/util/SessiondConnection;

    iget-object v1, p0, Lbsh/util/Sessiond;->globalNameSpace:Lbsh/NameSpace;

    iget-object v2, p0, Lbsh/util/Sessiond;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbsh/util/SessiondConnection;-><init>(Lbsh/NameSpace;Ljava/net/Socket;)V

    invoke-virtual {v0}, Lbsh/util/SessiondConnection;->start()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_0

    :catch_11
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method
