.class public Lbsh/util/Util;
.super Ljava/lang/Object;


# static fields
.field static class$bsh$Interpreter:Ljava/lang/Class;

.field static splashScreen:Ljava/awt/Window;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static endSplashScreen()V
    .registers 1

    sget-object v0, Lbsh/util/Util;->splashScreen:Ljava/awt/Window;

    if-eqz v0, :cond_9

    sget-object v0, Lbsh/util/Util;->splashScreen:Ljava/awt/Window;

    invoke-virtual {v0}, Ljava/awt/Window;->dispose()V

    :cond_9
    return-void
.end method

.method public static startSplashScreen()V
    .registers 8

    const/4 v7, 0x0

    const/16 v0, 0x113

    const/16 v1, 0x94

    new-instance v2, Ljava/awt/Window;

    new-instance v3, Ljava/awt/Frame;

    invoke-direct {v3}, Ljava/awt/Frame;-><init>()V

    invoke-direct {v2, v3}, Ljava/awt/Window;-><init>(Ljava/awt/Frame;)V

    invoke-virtual {v2}, Ljava/awt/Window;->pack()V

    new-instance v3, Lbsh/util/BshCanvas;

    invoke-direct {v3}, Lbsh/util/BshCanvas;-><init>()V

    invoke-virtual {v3, v0, v1}, Lbsh/util/BshCanvas;->setSize(II)V

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v4

    invoke-virtual {v4}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v5

    iget v6, v5, Ljava/awt/Dimension;->width:I

    div-int/lit8 v6, v6, 0x2

    add-int/lit16 v6, v6, -0x89

    iget v5, v5, Ljava/awt/Dimension;->height:I

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x4a

    invoke-virtual {v2, v6, v5, v0, v1}, Ljava/awt/Window;->setBounds(IIII)V

    const-string v0, "Center"

    invoke-virtual {v2, v0, v3}, Ljava/awt/Window;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    sget-object v0, Lbsh/util/Util;->class$bsh$Interpreter:Ljava/lang/Class;

    if-nez v0, :cond_68

    const-string v0, "bsh.Interpreter"

    invoke-static {v0}, Lbsh/util/Util;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/util/Util;->class$bsh$Interpreter:Ljava/lang/Class;

    :goto_42
    const-string v1, "/bsh/util/lib/splash.gif"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/awt/Toolkit;->getImage(Ljava/net/URL;)Ljava/awt/Image;

    move-result-object v0

    new-instance v1, Ljava/awt/MediaTracker;

    invoke-direct {v1, v3}, Ljava/awt/MediaTracker;-><init>(Ljava/awt/Component;)V

    invoke-virtual {v1, v0, v7}, Ljava/awt/MediaTracker;->addImage(Ljava/awt/Image;I)V

    :try_start_54
    invoke-virtual {v1}, Ljava/awt/MediaTracker;->waitForAll()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_6b

    :goto_57
    invoke-virtual {v3}, Lbsh/util/BshCanvas;->getBufferedGraphics()Ljava/awt/Graphics;

    move-result-object v1

    invoke-virtual {v1, v0, v7, v7, v3}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/awt/Window;->setVisible(Z)V

    invoke-virtual {v2}, Ljava/awt/Window;->toFront()V

    sput-object v2, Lbsh/util/Util;->splashScreen:Ljava/awt/Window;

    return-void

    :cond_68
    sget-object v0, Lbsh/util/Util;->class$bsh$Interpreter:Ljava/lang/Class;

    goto :goto_42

    :catch_6b
    move-exception v1

    goto :goto_57
.end method
