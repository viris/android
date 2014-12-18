.class public Lbsh/util/AWTConsole;
.super Ljava/awt/TextArea;

# interfaces
.implements Lbsh/ConsoleInterface;
.implements Ljava/awt/event/KeyListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private histLine:I

.field private history:Ljava/util/Vector;

.field private in:Ljava/io/InputStream;

.field private inPipe:Ljava/io/InputStream;

.field private line:Ljava/lang/StringBuffer;

.field private out:Ljava/io/PrintStream;

.field private outPipe:Ljava/io/OutputStream;

.field private startedLine:Ljava/lang/String;

.field private textLength:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/16 v0, 0xc

    const/16 v1, 0x50

    invoke-direct {p0, v0, v1, v2, v2}, Lbsh/util/AWTConsole;-><init>(IILjava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(IILjava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 9

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Ljava/awt/TextArea;-><init>(II)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    iput v3, p0, Lbsh/util/AWTConsole;->textLength:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lbsh/util/AWTConsole;->history:Ljava/util/Vector;

    iput v3, p0, Lbsh/util/AWTConsole;->histLine:I

    new-instance v0, Ljava/awt/Font;

    const-string v1, "Monospaced"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v3, v2}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lbsh/util/AWTConsole;->setFont(Ljava/awt/Font;)V

    invoke-virtual {p0, v3}, Lbsh/util/AWTConsole;->setEditable(Z)V

    invoke-virtual {p0, p0}, Lbsh/util/AWTConsole;->addKeyListener(Ljava/awt/event/KeyListener;)V

    iput-object p4, p0, Lbsh/util/AWTConsole;->outPipe:Ljava/io/OutputStream;

    iget-object v0, p0, Lbsh/util/AWTConsole;->outPipe:Ljava/io/OutputStream;

    if-nez v0, :cond_40

    new-instance v0, Ljava/io/PipedOutputStream;

    invoke-direct {v0}, Ljava/io/PipedOutputStream;-><init>()V

    iput-object v0, p0, Lbsh/util/AWTConsole;->outPipe:Ljava/io/OutputStream;

    :try_start_35
    new-instance v1, Ljava/io/PipedInputStream;

    iget-object v0, p0, Lbsh/util/AWTConsole;->outPipe:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/PipedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    iput-object v1, p0, Lbsh/util/AWTConsole;->in:Ljava/io/InputStream;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_40} :catch_4e

    :cond_40
    :goto_40
    iput-object p3, p0, Lbsh/util/AWTConsole;->inPipe:Ljava/io/InputStream;

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0}, Lbsh/util/AWTConsole;->requestFocus()V

    return-void

    :catch_4e
    move-exception v0

    const-string v0, "Console internal error..."

    invoke-virtual {p0, v0}, Lbsh/util/AWTConsole;->print(Ljava/lang/Object;)V

    goto :goto_40
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5

    const/16 v0, 0xc

    const/16 v1, 0x50

    invoke-direct {p0, v0, v1, p1, p2}, Lbsh/util/AWTConsole;-><init>(IILjava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method private acceptLine(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lbsh/util/AWTConsole;->outPipe:Ljava/io/OutputStream;

    if-nez v0, :cond_a

    const-string v0, "Console internal error..."

    invoke-virtual {p0, v0}, Lbsh/util/AWTConsole;->print(Ljava/lang/Object;)V

    :goto_9
    return-void

    :cond_a
    :try_start_a
    iget-object v0, p0, Lbsh/util/AWTConsole;->outPipe:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lbsh/util/AWTConsole;->outPipe:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_18} :catch_19

    goto :goto_9

    :catch_19
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/util/AWTConsole;->outPipe:Ljava/io/OutputStream;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Console pipe broken..."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private countNLs()I
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lbsh/util/AWTConsole;->getText()Ljava/lang/String;

    move-result-object v2

    move v1, v0

    :goto_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_d

    return v1

    :cond_d
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_17

    add-int/lit8 v1, v1, 0x1

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private doChar(C)V
    .registers 3

    const/16 v0, 0x20

    if-lt p1, v0, :cond_1a

    const/16 v0, 0x7e

    if-gt p1, v0, :cond_1a

    iget-object v0, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/util/AWTConsole;->append(Ljava/lang/String;)V

    iget v0, p0, Lbsh/util/AWTConsole;->textLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/util/AWTConsole;->textLength:I

    :cond_1a
    return-void
.end method

.method private enter()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, ";\n"

    :goto_b
    iget-object v1, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    iput v3, p0, Lbsh/util/AWTConsole;->histLine:I

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Lbsh/util/AWTConsole;->append(Ljava/lang/String;)V

    invoke-virtual {p0}, Lbsh/util/AWTConsole;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lbsh/util/AWTConsole;->textLength:I

    invoke-direct {p0, v0}, Lbsh/util/AWTConsole;->acceptLine(Ljava/lang/String;)V

    iget v0, p0, Lbsh/util/AWTConsole;->textLength:I

    invoke-virtual {p0, v0}, Lbsh/util/AWTConsole;->setCaretPosition(I)V

    return-void

    :cond_2a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbsh/util/AWTConsole;->history:Ljava/util/Vector;

    iget-object v2, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_b
.end method

.method private historyDown()V
    .registers 2

    iget v0, p0, Lbsh/util/AWTConsole;->histLine:I

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget v0, p0, Lbsh/util/AWTConsole;->histLine:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbsh/util/AWTConsole;->histLine:I

    invoke-direct {p0}, Lbsh/util/AWTConsole;->showHistoryLine()V

    goto :goto_4
.end method

.method private historyUp()V
    .registers 3

    iget-object v0, p0, Lbsh/util/AWTConsole;->history:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget v0, p0, Lbsh/util/AWTConsole;->histLine:I

    if-nez v0, :cond_15

    iget-object v0, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbsh/util/AWTConsole;->startedLine:Ljava/lang/String;

    :cond_15
    iget v0, p0, Lbsh/util/AWTConsole;->histLine:I

    iget-object v1, p0, Lbsh/util/AWTConsole;->history:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    iget v0, p0, Lbsh/util/AWTConsole;->histLine:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/util/AWTConsole;->histLine:I

    invoke-direct {p0}, Lbsh/util/AWTConsole;->showHistoryLine()V

    goto :goto_8
.end method

.method private inPipeWatcher()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lbsh/util/AWTConsole;->inPipe:Ljava/io/InputStream;

    if-nez v0, :cond_17

    new-instance v0, Ljava/io/PipedOutputStream;

    invoke-direct {v0}, Ljava/io/PipedOutputStream;-><init>()V

    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lbsh/util/AWTConsole;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/io/PipedInputStream;

    invoke-direct {v1, v0}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    iput-object v1, p0, Lbsh/util/AWTConsole;->inPipe:Ljava/io/InputStream;

    :cond_17
    const/16 v0, 0x100

    new-array v0, v0, [B

    :goto_1b
    iget-object v1, p0, Lbsh/util/AWTConsole;->inPipe:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2a

    const-string v0, "Console: Input closed..."

    invoke-virtual {p0, v0}, Lbsh/util/AWTConsole;->println(Ljava/lang/Object;)V

    return-void

    :cond_2a
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v2}, Lbsh/util/AWTConsole;->print(Ljava/lang/Object;)V

    goto :goto_1b
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lbsh/util/AWTConsole;

    invoke-direct {v0}, Lbsh/util/AWTConsole;-><init>()V

    new-instance v1, Ljava/awt/Frame;

    const-string v2, "Bsh Console"

    invoke-direct {v1, v2}, Ljava/awt/Frame;-><init>(Ljava/lang/String;)V

    const-string v2, "Center"

    invoke-virtual {v1, v0, v2}, Ljava/awt/Frame;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/awt/Frame;->pack()V

    invoke-virtual {v1}, Ljava/awt/Frame;->show()V

    new-instance v2, Lbsh/util/AWTConsole$1;

    invoke-direct {v2, v1}, Lbsh/util/AWTConsole$1;-><init>(Ljava/awt/Frame;)V

    invoke-virtual {v1, v2}, Ljava/awt/Frame;->addWindowListener(Ljava/awt/event/WindowListener;)V

    new-instance v1, Lbsh/Interpreter;

    invoke-direct {v1, v0}, Lbsh/Interpreter;-><init>(Lbsh/ConsoleInterface;)V

    invoke-virtual {v1}, Lbsh/Interpreter;->run()V

    return-void
.end method

.method private showHistoryLine()V
    .registers 4

    iget v0, p0, Lbsh/util/AWTConsole;->histLine:I

    if-nez v0, :cond_26

    iget-object v0, p0, Lbsh/util/AWTConsole;->startedLine:Ljava/lang/String;

    :goto_6
    iget v1, p0, Lbsh/util/AWTConsole;->textLength:I

    iget-object v2, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lbsh/util/AWTConsole;->textLength:I

    invoke-virtual {p0, v0, v1, v2}, Lbsh/util/AWTConsole;->replaceRange(Ljava/lang/String;II)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lbsh/util/AWTConsole;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lbsh/util/AWTConsole;->textLength:I

    return-void

    :cond_26
    iget-object v0, p0, Lbsh/util/AWTConsole;->history:Ljava/util/Vector;

    iget-object v1, p0, Lbsh/util/AWTConsole;->history:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p0, Lbsh/util/AWTConsole;->histLine:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_6
.end method


# virtual methods
.method public error(Ljava/lang/Object;)V
    .registers 3

    sget-object v0, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-virtual {p0, p1, v0}, Lbsh/util/AWTConsole;->print(Ljava/lang/Object;Ljava/awt/Color;)V

    return-void
.end method

.method public getErr()Ljava/io/PrintStream;
    .registers 2

    iget-object v0, p0, Lbsh/util/AWTConsole;->out:Ljava/io/PrintStream;

    return-object v0
.end method

.method public getIn()Ljava/io/Reader;
    .registers 3

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lbsh/util/AWTConsole;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getOut()Ljava/io/PrintStream;
    .registers 2

    iget-object v0, p0, Lbsh/util/AWTConsole;->out:Ljava/io/PrintStream;

    return-object v0
.end method

.method public keyPressed(Ljava/awt/event/KeyEvent;)V
    .registers 5

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getKeyChar()C

    move-result v1

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getModifiers()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lbsh/util/AWTConsole;->type(ICI)V

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    return-void
.end method

.method public keyReleased(Ljava/awt/event/KeyEvent;)V
    .registers 2

    return-void
.end method

.method public keyTyped(Ljava/awt/event/KeyEvent;)V
    .registers 2

    return-void
.end method

.method public declared-synchronized print(Ljava/lang/Object;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/util/AWTConsole;->append(Ljava/lang/String;)V

    invoke-virtual {p0}, Lbsh/util/AWTConsole;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lbsh/util/AWTConsole;->textLength:I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public print(Ljava/lang/Object;Ljava/awt/Color;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "*** "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/util/AWTConsole;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public println(Ljava/lang/Object;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/util/AWTConsole;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .registers 2

    :try_start_0
    invoke-direct {p0}, Lbsh/util/AWTConsole;->inPipeWatcher()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const-string v0, "Console: I/O Error..."

    invoke-virtual {p0, v0}, Lbsh/util/AWTConsole;->println(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public setCaretPosition(I)V
    .registers 4

    invoke-virtual {p0}, Lbsh/util/AWTConsole;->getPeer()Ljava/awt/peer/ComponentPeer;

    move-result-object v0

    check-cast v0, Ljava/awt/peer/TextComponentPeer;

    invoke-direct {p0}, Lbsh/util/AWTConsole;->countNLs()I

    move-result v1

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/awt/peer/TextComponentPeer;->setCaretPosition(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "BeanShell AWTConsole"

    return-object v0
.end method

.method public type(ICI)V
    .registers 8

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_96

    invoke-direct {p0, p2}, Lbsh/util/AWTConsole;->doChar(C)V

    :cond_7
    :goto_7
    return-void

    :sswitch_8
    iget-object v0, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string v0, ""

    iget v1, p0, Lbsh/util/AWTConsole;->textLength:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lbsh/util/AWTConsole;->textLength:I

    invoke-virtual {p0, v0, v1, v2}, Lbsh/util/AWTConsole;->replaceRange(Ljava/lang/String;II)V

    iget v0, p0, Lbsh/util/AWTConsole;->textLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbsh/util/AWTConsole;->textLength:I

    goto :goto_7

    :sswitch_2f
    invoke-direct {p0}, Lbsh/util/AWTConsole;->enter()V

    goto :goto_7

    :sswitch_33
    and-int/lit8 v0, p3, 0x2

    if-lez v0, :cond_5a

    iget-object v0, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const-string v1, ""

    iget v2, p0, Lbsh/util/AWTConsole;->textLength:I

    sub-int v0, v2, v0

    iget v2, p0, Lbsh/util/AWTConsole;->textLength:I

    invoke-virtual {p0, v1, v0, v2}, Lbsh/util/AWTConsole;->replaceRange(Ljava/lang/String;II)V

    iget-object v0, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    iput v3, p0, Lbsh/util/AWTConsole;->histLine:I

    invoke-virtual {p0}, Lbsh/util/AWTConsole;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lbsh/util/AWTConsole;->textLength:I

    goto :goto_7

    :cond_5a
    invoke-direct {p0, p2}, Lbsh/util/AWTConsole;->doChar(C)V

    goto :goto_7

    :sswitch_5e
    invoke-direct {p0}, Lbsh/util/AWTConsole;->historyUp()V

    goto :goto_7

    :sswitch_62
    invoke-direct {p0}, Lbsh/util/AWTConsole;->historyDown()V

    goto :goto_7

    :sswitch_66
    iget-object v0, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "    "

    invoke-virtual {p0, v0}, Lbsh/util/AWTConsole;->append(Ljava/lang/String;)V

    iget v0, p0, Lbsh/util/AWTConsole;->textLength:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lbsh/util/AWTConsole;->textLength:I

    goto :goto_7

    :sswitch_79
    and-int/lit8 v0, p3, 0x2

    if-lez v0, :cond_91

    iget-object v0, p0, Lbsh/util/AWTConsole;->line:Ljava/lang/StringBuffer;

    const-string v1, "^C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "^C"

    invoke-virtual {p0, v0}, Lbsh/util/AWTConsole;->append(Ljava/lang/String;)V

    iget v0, p0, Lbsh/util/AWTConsole;->textLength:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lbsh/util/AWTConsole;->textLength:I

    goto/16 :goto_7

    :cond_91
    invoke-direct {p0, p2}, Lbsh/util/AWTConsole;->doChar(C)V

    goto/16 :goto_7

    :sswitch_data_96
    .sparse-switch
        0x8 -> :sswitch_8
        0x9 -> :sswitch_66
        0xa -> :sswitch_2f
        0x26 -> :sswitch_5e
        0x28 -> :sswitch_62
        0x43 -> :sswitch_79
        0x55 -> :sswitch_33
    .end sparse-switch
.end method
