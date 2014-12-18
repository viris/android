.class public Lbsh/classpath/BshClassPath;
.super Ljava/lang/Object;

# interfaces
.implements Lbsh/NameSource;
.implements Lbsh/classpath/ClassPathListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/classpath/BshClassPath$MappingFeedback;,
        Lbsh/classpath/BshClassPath$AmbiguousName;,
        Lbsh/classpath/BshClassPath$UnqualifiedNameTable;,
        Lbsh/classpath/BshClassPath$GeneratedClassSource;,
        Lbsh/classpath/BshClassPath$DirClassSource;,
        Lbsh/classpath/BshClassPath$JarClassSource;,
        Lbsh/classpath/BshClassPath$ClassSource;
    }
.end annotation


# static fields
.field static bootClassPath:Lbsh/classpath/BshClassPath;

.field static class$java$lang$Class:Ljava/lang/Class;

.field static mappingFeedbackListener:Lbsh/classpath/BshClassPath$MappingFeedback;

.field static userClassPath:Lbsh/classpath/BshClassPath;

.field static userClassPathComp:[Ljava/net/URL;


# instance fields
.field private classSource:Ljava/util/Map;

.field private compPaths:Ljava/util/List;

.field listeners:Ljava/util/Vector;

.field private mapsInitialized:Z

.field name:Ljava/lang/String;

.field private nameCompletionIncludesUnqNames:Z

.field nameSourceListeners:Ljava/util/List;

.field private packageMap:Ljava/util/Map;

.field private path:Ljava/util/List;

.field private unqNameTable:Lbsh/classpath/BshClassPath$UnqualifiedNameTable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsh/classpath/BshClassPath;->nameCompletionIncludesUnqNames:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lbsh/classpath/BshClassPath;->listeners:Ljava/util/Vector;

    iput-object p1, p0, Lbsh/classpath/BshClassPath;->name:Ljava/lang/String;

    invoke-direct {p0}, Lbsh/classpath/BshClassPath;->reset()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/net/URL;)V
    .registers 3

    invoke-direct {p0, p1}, Lbsh/classpath/BshClassPath;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lbsh/classpath/BshClassPath;->add([Ljava/net/URL;)V

    return-void
.end method

.method public static addMappingFeedback(Lbsh/classpath/BshClassPath$MappingFeedback;)V
    .registers 3

    sget-object v0, Lbsh/classpath/BshClassPath;->mappingFeedbackListener:Lbsh/classpath/BshClassPath$MappingFeedback;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unimplemented: already a listener"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    sput-object p0, Lbsh/classpath/BshClassPath;->mappingFeedbackListener:Lbsh/classpath/BshClassPath$MappingFeedback;

    return-void
.end method

.method private buildUnqualifiedNameTable()Lbsh/classpath/BshClassPath$UnqualifiedNameTable;
    .registers 5

    new-instance v2, Lbsh/classpath/BshClassPath$UnqualifiedNameTable;

    invoke-direct {v2}, Lbsh/classpath/BshClassPath$UnqualifiedNameTable;-><init>()V

    iget-object v0, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_24

    :cond_13
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->classSource:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4a

    return-object v2

    :cond_24
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/classpath/BshClassPath;

    iget-object v0, v0, Lbsh/classpath/BshClassPath;->classSource:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_40

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_40
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lbsh/classpath/BshClassPath$UnqualifiedNameTable;->add(Ljava/lang/String;)V

    goto :goto_36

    :cond_4a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lbsh/classpath/BshClassPath$UnqualifiedNameTable;->add(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public static canonicalizeClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/16 v2, 0x2e

    const/16 v0, 0x2f

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, "class "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1b
    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2e
    return-object v0
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

.method private declared-synchronized clearCachedStructures()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lbsh/classpath/BshClassPath;->mapsInitialized:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbsh/classpath/BshClassPath;->packageMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbsh/classpath/BshClassPath;->classSource:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/classpath/BshClassPath;->unqNameTable:Lbsh/classpath/BshClassPath$UnqualifiedNameTable;

    invoke-virtual {p0}, Lbsh/classpath/BshClassPath;->nameSpaceChanged()V
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getBootClassPath()Lbsh/classpath/BshClassPath;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ClassPathException;
        }
    .end annotation

    sget-object v0, Lbsh/classpath/BshClassPath;->bootClassPath:Lbsh/classpath/BshClassPath;

    if-nez v0, :cond_20

    :try_start_4
    invoke-static {}, Lbsh/classpath/BshClassPath;->getRTJarPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v0

    new-instance v1, Lbsh/classpath/BshClassPath;

    const-string v2, "Boot Class Path"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/net/URL;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lbsh/classpath/BshClassPath;-><init>(Ljava/lang/String;[Ljava/net/URL;)V

    sput-object v1, Lbsh/classpath/BshClassPath;->bootClassPath:Lbsh/classpath/BshClassPath;
    :try_end_20
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_20} :catch_23

    :cond_20
    sget-object v0, Lbsh/classpath/BshClassPath;->bootClassPath:Lbsh/classpath/BshClassPath;

    return-object v0

    :catch_23
    move-exception v0

    new-instance v1, Lbsh/ClassPathException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, " can\'t find boot jar: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/ClassPathException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getRTJarPath()Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    sget-object v0, Lbsh/classpath/BshClassPath;->class$java$lang$Class:Ljava/lang/Class;

    if-nez v0, :cond_21

    const-string v0, "java.lang.Class"

    invoke-static {v0}, Lbsh/classpath/BshClassPath;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/classpath/BshClassPath;->class$java$lang$Class:Ljava/lang/Class;

    :goto_d
    const-string v2, "/java/lang/String.class"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    const-string v2, "jar:file:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    move-object v0, v1

    :goto_20
    return-object v0

    :cond_21
    sget-object v0, Lbsh/classpath/BshClassPath;->class$java$lang$Class:Ljava/lang/Class;

    goto :goto_d

    :cond_24
    const-string v2, "!"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2f

    move-object v0, v1

    goto :goto_20

    :cond_2f
    const-string v1, "jar:file:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method

.method private getUnqualifiedNameTable()Lbsh/classpath/BshClassPath$UnqualifiedNameTable;
    .registers 2

    iget-object v0, p0, Lbsh/classpath/BshClassPath;->unqNameTable:Lbsh/classpath/BshClassPath$UnqualifiedNameTable;

    if-nez v0, :cond_a

    invoke-direct {p0}, Lbsh/classpath/BshClassPath;->buildUnqualifiedNameTable()Lbsh/classpath/BshClassPath$UnqualifiedNameTable;

    move-result-object v0

    iput-object v0, p0, Lbsh/classpath/BshClassPath;->unqNameTable:Lbsh/classpath/BshClassPath$UnqualifiedNameTable;

    :cond_a
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->unqNameTable:Lbsh/classpath/BshClassPath$UnqualifiedNameTable;

    return-object v0
.end method

.method public static getUserClassPath()Lbsh/classpath/BshClassPath;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ClassPathException;
        }
    .end annotation

    sget-object v0, Lbsh/classpath/BshClassPath;->userClassPath:Lbsh/classpath/BshClassPath;

    if-nez v0, :cond_11

    new-instance v0, Lbsh/classpath/BshClassPath;

    const-string v1, "User Class Path"

    invoke-static {}, Lbsh/classpath/BshClassPath;->getUserClassPathComponents()[Ljava/net/URL;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbsh/classpath/BshClassPath;-><init>(Ljava/lang/String;[Ljava/net/URL;)V

    sput-object v0, Lbsh/classpath/BshClassPath;->userClassPath:Lbsh/classpath/BshClassPath;

    :cond_11
    sget-object v0, Lbsh/classpath/BshClassPath;->userClassPath:Lbsh/classpath/BshClassPath;

    return-object v0
.end method

.method public static getUserClassPathComponents()[Ljava/net/URL;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ClassPathException;
        }
    .end annotation

    sget-object v0, Lbsh/classpath/BshClassPath;->userClassPathComp:[Ljava/net/URL;

    if-eqz v0, :cond_7

    sget-object v0, Lbsh/classpath/BshClassPath;->userClassPathComp:[Ljava/net/URL;

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "java.class.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v0, v1}, Lbsh/StringUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    new-array v0, v0, [Ljava/net/URL;

    const/4 v1, 0x0

    :goto_17
    :try_start_17
    array-length v3, v2
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_18} :catch_36

    if-lt v1, v3, :cond_1d

    sput-object v0, Lbsh/classpath/BshClassPath;->userClassPathComp:[Ljava/net/URL;

    goto :goto_6

    :cond_1d
    :try_start_1d
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    aget-object v5, v2, v1

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v3

    aput-object v3, v0, v1
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_33} :catch_36

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :catch_36
    move-exception v0

    new-instance v1, Lbsh/ClassPathException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "can\'t parse class path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/ClassPathException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isArchiveFileName(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static isClassFileName(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    array-length v0, p0

    new-array v1, v0, [Ljava/net/URL;

    const/4 v0, 0x0

    :goto_4
    array-length v2, p0

    if-lt v0, v2, :cond_f

    new-instance v0, Lbsh/classpath/BshClassPath;

    const-string v2, "Test"

    invoke-direct {v0, v2, v1}, Lbsh/classpath/BshClassPath;-><init>(Ljava/lang/String;[Ljava/net/URL;)V

    return-void

    :cond_f
    new-instance v2, Ljava/io/File;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private map([Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-lt v0, v1, :cond_5

    return-void

    :cond_5
    aget-object v1, p1, v0

    invoke-direct {p0, v1, p2}, Lbsh/classpath/BshClassPath;->mapClass(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private mapClass(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    invoke-static {p1}, Lbsh/classpath/BshClassPath;->splitClassname(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iget-object v0, p0, Lbsh/classpath/BshClassPath;->packageMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_1e

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lbsh/classpath/BshClassPath;->packageMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbsh/classpath/BshClassPath;->classSource:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lbsh/classpath/BshClassPath;->classSource:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    return-void
.end method

.method public static removeInnerClassNames(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    return-object v1

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_c
.end method

.method private declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbsh/classpath/BshClassPath;->path:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    invoke-direct {p0}, Lbsh/classpath/BshClassPath;->clearCachedStructures()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static searchJarForClasses(Ljava/net/URL;)[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_e
    :goto_e
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-nez v1, :cond_21

    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v1

    :cond_21
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbsh/classpath/BshClassPath;->isClassFileName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {v1}, Lbsh/classpath/BshClassPath;->canonicalizeClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_e
.end method

.method public static splitClassname(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    invoke-static {p0}, Lbsh/classpath/BshClassPath;->canonicalizeClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v0, -0x1

    if-ne v2, v0, :cond_19

    const-string v0, "<unpackaged>"

    :goto_10
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2

    :cond_19
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_10
.end method

.method static traverseDirForClasses(Ljava/io/File;)[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p0}, Lbsh/classpath/BshClassPath;->traverseDirForClassesAux(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method static traverseDirForClassesAux(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    const/4 v0, 0x0

    :goto_e
    array-length v4, v3

    if-lt v0, v4, :cond_12

    return-object v1

    :cond_12
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-static {p0, v4}, Lbsh/classpath/BshClassPath;->traverseDirForClassesAux(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_21
    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_24
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbsh/classpath/BshClassPath;->isClassFileName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbsh/classpath/BshClassPath;->canonicalizeClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_46
    new-instance v0, Ljava/io/IOException;

    const-string v1, "problem parsing paths"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/net/URL;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lbsh/classpath/BshClassPath;->path:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lbsh/classpath/BshClassPath;->mapsInitialized:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0, p1}, Lbsh/classpath/BshClassPath;->map(Ljava/net/URL;)V

    :cond_c
    return-void
.end method

.method public add([Ljava/net/URL;)V
    .registers 4

    iget-object v0, p0, Lbsh/classpath/BshClassPath;->path:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-boolean v0, p0, Lbsh/classpath/BshClassPath;->mapsInitialized:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1}, Lbsh/classpath/BshClassPath;->map([Ljava/net/URL;)V

    :cond_10
    return-void
.end method

.method public addComponent(Lbsh/classpath/BshClassPath;)V
    .registers 3

    iget-object v0, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lbsh/classpath/BshClassPath;->addListener(Lbsh/classpath/ClassPathListener;)V

    return-void
.end method

.method public addListener(Lbsh/classpath/ClassPathListener;)V
    .registers 4

    iget-object v0, p0, Lbsh/classpath/BshClassPath;->listeners:Ljava/util/Vector;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addNameSourceListener(Lbsh/NameSource$Listener;)V
    .registers 3

    iget-object v0, p0, Lbsh/classpath/BshClassPath;->nameSourceListeners:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbsh/classpath/BshClassPath;->nameSourceListeners:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->nameSourceListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method classMapping(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lbsh/classpath/BshClassPath;->mappingFeedbackListener:Lbsh/classpath/BshClassPath$MappingFeedback;

    if-eqz v0, :cond_a

    sget-object v0, Lbsh/classpath/BshClassPath;->mappingFeedbackListener:Lbsh/classpath/BshClassPath$MappingFeedback;

    invoke-interface {v0, p1}, Lbsh/classpath/BshClassPath$MappingFeedback;->classMapping(Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Mapping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public classPathChanged()V
    .registers 1

    invoke-direct {p0}, Lbsh/classpath/BshClassPath;->clearCachedStructures()V

    invoke-virtual {p0}, Lbsh/classpath/BshClassPath;->notifyListeners()V

    return-void
.end method

.method endClassMapping()V
    .registers 3

    sget-object v0, Lbsh/classpath/BshClassPath;->mappingFeedbackListener:Lbsh/classpath/BshClassPath$MappingFeedback;

    if-eqz v0, :cond_a

    sget-object v0, Lbsh/classpath/BshClassPath;->mappingFeedbackListener:Lbsh/classpath/BshClassPath$MappingFeedback;

    invoke-interface {v0}, Lbsh/classpath/BshClassPath$MappingFeedback;->endClassMapping()V

    :goto_9
    return-void

    :cond_a
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "End ClassPath Mapping"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9
.end method

.method errorWhileMapping(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lbsh/classpath/BshClassPath;->mappingFeedbackListener:Lbsh/classpath/BshClassPath$MappingFeedback;

    if-eqz v0, :cond_a

    sget-object v0, Lbsh/classpath/BshClassPath;->mappingFeedbackListener:Lbsh/classpath/BshClassPath$MappingFeedback;

    invoke-interface {v0, p1}, Lbsh/classpath/BshClassPath$MappingFeedback;->errorWhileMapping(Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public getAllNames()[Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lbsh/classpath/BshClassPath;->insureInitialized()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lbsh/classpath/BshClassPath;->getPackagesSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-boolean v0, p0, Lbsh/classpath/BshClassPath;->nameCompletionIncludesUnqNames:Z

    if-eqz v0, :cond_25

    invoke-direct {p0}, Lbsh/classpath/BshClassPath;->getUnqualifiedNameTable()Lbsh/classpath/BshClassPath$UnqualifiedNameTable;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/classpath/BshClassPath$UnqualifiedNameTable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_25
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_2f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lbsh/classpath/BshClassPath;->getClassesForPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lbsh/classpath/BshClassPath;->removeInnerClassNames(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_10
.end method

.method public getClassNameByUnqName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ClassPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lbsh/classpath/BshClassPath;->insureInitialized()V

    invoke-direct {p0}, Lbsh/classpath/BshClassPath;->getUnqualifiedNameTable()Lbsh/classpath/BshClassPath$UnqualifiedNameTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsh/classpath/BshClassPath$UnqualifiedNameTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lbsh/classpath/BshClassPath$AmbiguousName;

    if-eqz v1, :cond_2e

    new-instance v1, Lbsh/ClassPathException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Ambigous class names: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    check-cast v0, Lbsh/classpath/BshClassPath$AmbiguousName;

    invoke-virtual {v0}, Lbsh/classpath/BshClassPath$AmbiguousName;->get()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/ClassPathException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2e
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getClassSource(Ljava/lang/String;)Lbsh/classpath/BshClassPath$ClassSource;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->classSource:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/classpath/BshClassPath$ClassSource;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_3a

    if-eqz v0, :cond_d

    :cond_b
    monitor-exit p0

    return-object v0

    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lbsh/classpath/BshClassPath;->insureInitialized()V

    iget-object v0, p0, Lbsh/classpath/BshClassPath;->classSource:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/classpath/BshClassPath$ClassSource;

    if-nez v0, :cond_b

    iget-object v1, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    :goto_1f
    iget-object v2, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    if-nez v0, :cond_b

    iget-object v0, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/classpath/BshClassPath;

    invoke-virtual {v0, p1}, Lbsh/classpath/BshClassPath;->getClassSource(Ljava/lang/String;)Lbsh/classpath/BshClassPath$ClassSource;
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_3a

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_1f

    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getClassesForPackage(Ljava/lang/String;)Ljava/util/Set;
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lbsh/classpath/BshClassPath;->insureInitialized()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lbsh/classpath/BshClassPath;->packageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_16

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_16
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    move v1, v0

    :goto_1c
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_3b

    move-result v0

    if-lt v1, v0, :cond_26

    :cond_24
    monitor-exit p0

    return-object v2

    :cond_26
    :try_start_26
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/classpath/BshClassPath;

    invoke-virtual {v0, p1}, Lbsh/classpath/BshClassPath;->getClassesForPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_3b

    :cond_37
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1c

    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getFullPath()Ljava/util/List;
    .registers 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_19

    :cond_13
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->path:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v2

    :cond_19
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/classpath/BshClassPath;

    invoke-virtual {v0}, Lbsh/classpath/BshClassPath;->getFullPath()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_29
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_33

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29
.end method

.method public getPackagesSet()Ljava/util/Set;
    .registers 4

    invoke-virtual {p0}, Lbsh/classpath/BshClassPath;->insureInitialized()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lbsh/classpath/BshClassPath;->packageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    move v1, v0

    :goto_17
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_20

    :cond_1f
    return-object v2

    :cond_20
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/classpath/BshClassPath;

    iget-object v0, v0, Lbsh/classpath/BshClassPath;->packageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17
.end method

.method public getPathComponents()[Ljava/net/URL;
    .registers 3

    invoke-virtual {p0}, Lbsh/classpath/BshClassPath;->getFullPath()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/net/URL;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/URL;

    return-object v0
.end method

.method public insureInitialized()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbsh/classpath/BshClassPath;->insureInitialized(Z)V

    return-void
.end method

.method protected declared-synchronized insureInitialized(Z)V
    .registers 5

    const/4 v0, 0x0

    monitor-enter p0

    if-eqz p1, :cond_b

    :try_start_4
    iget-boolean v1, p0, Lbsh/classpath/BshClassPath;->mapsInitialized:Z

    if-nez v1, :cond_b

    invoke-virtual {p0}, Lbsh/classpath/BshClassPath;->startClassMapping()V

    :cond_b
    iget-object v1, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    if-eqz v1, :cond_18

    move v1, v0

    :goto_10
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_38

    :cond_18
    iget-boolean v0, p0, Lbsh/classpath/BshClassPath;->mapsInitialized:Z

    if-nez v0, :cond_2a

    iget-object v0, p0, Lbsh/classpath/BshClassPath;->path:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/net/URL;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/URL;

    invoke-virtual {p0, v0}, Lbsh/classpath/BshClassPath;->map([Ljava/net/URL;)V

    :cond_2a
    if-eqz p1, :cond_33

    iget-boolean v0, p0, Lbsh/classpath/BshClassPath;->mapsInitialized:Z

    if-nez v0, :cond_33

    invoke-virtual {p0}, Lbsh/classpath/BshClassPath;->endClassMapping()V

    :cond_33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsh/classpath/BshClassPath;->mapsInitialized:Z
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_48

    monitor-exit p0

    return-void

    :cond_38
    :try_start_38
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/classpath/BshClassPath;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lbsh/classpath/BshClassPath;->insureInitialized(Z)V
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_48

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized map(Ljava/net/URL;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_38

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Directory "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/classpath/BshClassPath;->classMapping(Ljava/lang/String;)V

    invoke-static {v1}, Lbsh/classpath/BshClassPath;->traverseDirForClasses(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lbsh/classpath/BshClassPath$DirClassSource;

    invoke-direct {v2, v1}, Lbsh/classpath/BshClassPath$DirClassSource;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, v2}, Lbsh/classpath/BshClassPath;->map([Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_61

    :goto_36
    monitor-exit p0

    return-void

    :cond_38
    :try_start_38
    invoke-static {v0}, Lbsh/classpath/BshClassPath;->isArchiveFileName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Archive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/classpath/BshClassPath;->classMapping(Ljava/lang/String;)V

    invoke-static {p1}, Lbsh/classpath/BshClassPath;->searchJarForClasses(Ljava/net/URL;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lbsh/classpath/BshClassPath$JarClassSource;

    invoke-direct {v1, p1}, Lbsh/classpath/BshClassPath$JarClassSource;-><init>(Ljava/net/URL;)V

    invoke-direct {p0, v0, v1}, Lbsh/classpath/BshClassPath;->map([Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_60
    .catchall {:try_start_38 .. :try_end_60} :catchall_61

    goto :goto_36

    :catchall_61
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_64
    :try_start_64
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Not a classpath component: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/classpath/BshClassPath;->errorWhileMapping(Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_64 .. :try_end_7a} :catchall_61

    goto :goto_36
.end method

.method declared-synchronized map([Ljava/net/URL;)V
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    :try_start_3
    array-length v0, p1
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_35

    if-lt v1, v0, :cond_8

    monitor-exit p0

    return-void

    :cond_8
    :try_start_8
    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Lbsh/classpath/BshClassPath;->map(Ljava/net/URL;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_11
    .catchall {:try_start_8 .. :try_end_d} :catchall_35

    :goto_d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :catch_11
    move-exception v0

    :try_start_12
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error constructing classpath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/classpath/BshClassPath;->errorWhileMapping(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_12 .. :try_end_34} :catchall_35

    goto :goto_d

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method nameSpaceChanged()V
    .registers 3

    iget-object v0, p0, Lbsh/classpath/BshClassPath;->nameSourceListeners:Ljava/util/List;

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->nameSourceListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lbsh/classpath/BshClassPath;->nameSourceListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/NameSource$Listener;

    invoke-interface {v0, p0}, Lbsh/NameSource$Listener;->nameSourceChanged(Lbsh/NameSource;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7
.end method

.method notifyListeners()V
    .registers 4

    iget-object v0, p0, Lbsh/classpath/BshClassPath;->listeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbsh/classpath/ClassPathListener;

    if-nez v1, :cond_21

    iget-object v1, p0, Lbsh/classpath/BshClassPath;->listeners:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_21
    invoke-interface {v1}, Lbsh/classpath/ClassPathListener;->classPathChanged()V

    goto :goto_6
.end method

.method public removeListener(Lbsh/classpath/ClassPathListener;)V
    .registers 3

    iget-object v0, p0, Lbsh/classpath/BshClassPath;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized setClassSource(Ljava/lang/String;Lbsh/classpath/BshClassPath$ClassSource;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lbsh/classpath/BshClassPath;->classSource:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPath([Ljava/net/URL;)V
    .registers 2

    invoke-direct {p0}, Lbsh/classpath/BshClassPath;->reset()V

    invoke-virtual {p0, p1}, Lbsh/classpath/BshClassPath;->add([Ljava/net/URL;)V

    return-void
.end method

.method startClassMapping()V
    .registers 3

    sget-object v0, Lbsh/classpath/BshClassPath;->mappingFeedbackListener:Lbsh/classpath/BshClassPath$MappingFeedback;

    if-eqz v0, :cond_a

    sget-object v0, Lbsh/classpath/BshClassPath;->mappingFeedbackListener:Lbsh/classpath/BshClassPath$MappingFeedback;

    invoke-interface {v0}, Lbsh/classpath/BshClassPath$MappingFeedback;->startClassMapping()V

    :goto_9
    return-void

    :cond_a
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Start ClassPath Mapping"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "BshClassPath "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lbsh/classpath/BshClassPath;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ") path= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lbsh/classpath/BshClassPath;->path:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "compPaths = {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lbsh/classpath/BshClassPath;->compPaths:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
