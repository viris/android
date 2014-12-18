.class public Lbsh/util/JConsole$BlockingPipedInputStream;
.super Ljava/io/PipedInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/util/JConsole;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockingPipedInputStream"
.end annotation


# instance fields
.field closed:Z


# direct methods
.method public constructor <init>(Ljava/io/PipedOutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsh/util/JConsole$BlockingPipedInputStream;->closed:Z

    invoke-super {p0}, Ljava/io/PipedInputStream;->close()V

    return-void
.end method

.method public declared-synchronized read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lbsh/util/JConsole$BlockingPipedInputStream;->closed:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_d

    const-wide/16 v0, 0x2ee

    :try_start_15
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_3d
    .catchall {:try_start_15 .. :try_end_18} :catchall_d

    :cond_18
    :try_start_18
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    if-ltz v0, :cond_10

    iget-object v0, p0, Lbsh/util/JConsole$BlockingPipedInputStream;->buffer:[B

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/PipedInputStream;->out:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    iget-object v2, p0, Lbsh/util/JConsole$BlockingPipedInputStream;->buffer:[B

    array-length v2, v2

    if-lt v1, v2, :cond_32

    const/4 v1, 0x0

    iput v1, p0, Ljava/io/PipedInputStream;->out:I

    :cond_32
    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    iget v2, p0, Ljava/io/PipedInputStream;->out:I

    if-ne v1, v2, :cond_3b

    const/4 v1, -0x1

    iput v1, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_3b
    .catchall {:try_start_18 .. :try_end_3b} :catchall_d

    :cond_3b
    monitor-exit p0

    return v0

    :catch_3d
    move-exception v0

    :try_start_3e
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_d
.end method
