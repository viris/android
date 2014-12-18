.class public Lbsh/util/BshCanvas;
.super Ljavax/swing/JComponent;


# instance fields
.field imageBuffer:Ljava/awt/Image;

.field ths:Lbsh/This;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljavax/swing/JComponent;-><init>()V

    return-void
.end method

.method public constructor <init>(Lbsh/This;)V
    .registers 2

    invoke-direct {p0}, Ljavax/swing/JComponent;-><init>()V

    iput-object p1, p0, Lbsh/util/BshCanvas;->ths:Lbsh/This;

    return-void
.end method


# virtual methods
.method public getBufferedGraphics()Ljava/awt/Graphics;
    .registers 3

    invoke-virtual {p0}, Lbsh/util/BshCanvas;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    iget v1, v0, Ljava/awt/Dimension;->width:I

    iget v0, v0, Ljava/awt/Dimension;->height:I

    invoke-virtual {p0, v1, v0}, Lbsh/util/BshCanvas;->createImage(II)Ljava/awt/Image;

    move-result-object v0

    iput-object v0, p0, Lbsh/util/BshCanvas;->imageBuffer:Ljava/awt/Image;

    iget-object v0, p0, Lbsh/util/BshCanvas;->imageBuffer:Ljava/awt/Image;

    invoke-virtual {v0}, Ljava/awt/Image;->getGraphics()Ljava/awt/Graphics;

    move-result-object v0

    return-object v0
.end method

.method public paintComponent(Ljava/awt/Graphics;)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lbsh/util/BshCanvas;->imageBuffer:Ljava/awt/Image;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lbsh/util/BshCanvas;->imageBuffer:Ljava/awt/Image;

    invoke-virtual {p1, v0, v1, v1, p0}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    :cond_a
    iget-object v0, p0, Lbsh/util/BshCanvas;->ths:Lbsh/This;

    if-eqz v0, :cond_1b

    :try_start_e
    iget-object v0, p0, Lbsh/util/BshCanvas;->ths:Lbsh/This;

    const-string v1, "paint"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lbsh/This;->invokeMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Lbsh/EvalError; {:try_start_e .. :try_end_1b} :catch_1c

    :cond_1b
    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    sget-boolean v1, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v1, :cond_1b

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "BshCanvas: method invocation error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public setBounds(IIII)V
    .registers 6

    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0, p3, p4}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {p0, v0}, Lbsh/util/BshCanvas;->setPreferredSize(Ljava/awt/Dimension;)V

    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0, p3, p4}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {p0, v0}, Lbsh/util/BshCanvas;->setMinimumSize(Ljava/awt/Dimension;)V

    invoke-super {p0, p1, p2, p3, p4}, Ljavax/swing/JComponent;->setBounds(IIII)V

    return-void
.end method
