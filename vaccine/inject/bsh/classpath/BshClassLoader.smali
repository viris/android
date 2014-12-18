.class public Lbsh/classpath/BshClassLoader;
.super Ljava/net/URLClassLoader;


# static fields
.field static class$bsh$Interpreter:Ljava/lang/Class;


# instance fields
.field classManager:Lbsh/BshClassManager;


# direct methods
.method protected constructor <init>(Lbsh/BshClassManager;)V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/net/URL;

    invoke-direct {p0, p1, v0}, Lbsh/classpath/BshClassLoader;-><init>(Lbsh/BshClassManager;[Ljava/net/URL;)V

    return-void
.end method

.method public constructor <init>(Lbsh/BshClassManager;Lbsh/classpath/BshClassPath;)V
    .registers 4

    invoke-virtual {p2}, Lbsh/classpath/BshClassPath;->getPathComponents()[Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lbsh/classpath/BshClassLoader;-><init>(Lbsh/BshClassManager;[Ljava/net/URL;)V

    return-void
.end method

.method public constructor <init>(Lbsh/BshClassManager;[Ljava/net/URL;)V
    .registers 3

    invoke-direct {p0, p2}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;)V

    iput-object p1, p0, Lbsh/classpath/BshClassLoader;->classManager:Lbsh/BshClassManager;

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


# virtual methods
.method public addURL(Ljava/net/URL;)V
    .registers 2

    invoke-super {p0, p1}, Ljava/net/URLClassLoader;->addURL(Ljava/net/URL;)V

    return-void
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lbsh/classpath/BshClassLoader;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    check-cast v0, Lbsh/classpath/ClassManagerImpl;

    invoke-virtual {v0, p1}, Lbsh/classpath/ClassManagerImpl;->getLoaderForClass(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_2d

    if-eq v1, p0, :cond_2d

    :try_start_e
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_11} :catch_13

    move-result-object v0

    :goto_12
    return-object v0

    :catch_13
    move-exception v0

    new-instance v1, Ljava/lang/ClassNotFoundException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Designated loader could not find class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2d
    invoke-virtual {p0}, Lbsh/classpath/BshClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_3a

    :try_start_34
    invoke-super {p0, p1}, Ljava/net/URLClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_37
    .catch Ljava/lang/ClassNotFoundException; {:try_start_34 .. :try_end_37} :catch_39

    move-result-object v0

    goto :goto_12

    :catch_39
    move-exception v1

    :cond_3a
    invoke-virtual {v0}, Lbsh/classpath/ClassManagerImpl;->getBaseLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_48

    if-eq v1, p0, :cond_48

    :try_start_42
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_45
    .catch Ljava/lang/ClassNotFoundException; {:try_start_42 .. :try_end_45} :catch_47

    move-result-object v0

    goto :goto_12

    :catch_47
    move-exception v1

    :cond_48
    invoke-virtual {v0, p1}, Lbsh/classpath/ClassManagerImpl;->plainClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_12
.end method

.method getClassManager()Lbsh/BshClassManager;
    .registers 2

    iget-object v0, p0, Lbsh/classpath/BshClassLoader;->classManager:Lbsh/BshClassManager;

    return-object v0
.end method

.method public loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lbsh/classpath/BshClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-object v0

    :cond_7
    const-string v1, "bsh"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    :try_start_f
    sget-object v1, Lbsh/classpath/BshClassLoader;->class$bsh$Interpreter:Ljava/lang/Class;

    if-nez v1, :cond_24

    const-string v1, "bsh.Interpreter"

    invoke-static {v1}, Lbsh/classpath/BshClassLoader;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lbsh/classpath/BshClassLoader;->class$bsh$Interpreter:Ljava/lang/Class;

    :goto_1b
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_6

    :cond_24
    sget-object v1, Lbsh/classpath/BshClassLoader;->class$bsh$Interpreter:Ljava/lang/Class;
    :try_end_26
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_26} :catch_27

    goto :goto_1b

    :catch_27
    move-exception v1

    :cond_28
    :try_start_28
    invoke-virtual {p0, p1}, Lbsh/classpath/BshClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_28 .. :try_end_2b} :catch_3c

    move-result-object v0

    :goto_2c
    if-nez v0, :cond_36

    new-instance v0, Ljava/lang/ClassNotFoundException;

    const-string v1, "here in loaClass"

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    if-eqz p2, :cond_6

    invoke-virtual {p0, v0}, Lbsh/classpath/BshClassLoader;->resolveClass(Ljava/lang/Class;)V

    goto :goto_6

    :catch_3c
    move-exception v1

    goto :goto_2c
.end method
