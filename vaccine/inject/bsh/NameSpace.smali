.class public Lbsh/NameSpace;
.super Ljava/lang/Object;

# interfaces
.implements Lbsh/BshClassManager$Listener;
.implements Lbsh/NameSource;
.implements Ljava/io/Serializable;


# static fields
.field public static final JAVACODE:Lbsh/NameSpace;


# instance fields
.field callerInfoNode:Lbsh/SimpleNode;

.field private transient classCache:Ljava/util/Hashtable;

.field classInstance:Ljava/lang/Object;

.field private transient classManager:Lbsh/BshClassManager;

.field classStatic:Ljava/lang/Class;

.field protected importedClasses:Ljava/util/Hashtable;

.field private importedCommands:Ljava/util/Vector;

.field private importedObjects:Ljava/util/Vector;

.field private importedPackages:Ljava/util/Vector;

.field private importedStatic:Ljava/util/Vector;

.field isClass:Z

.field isMethod:Z

.field private methods:Ljava/util/Hashtable;

.field nameSourceListeners:Ljava/util/Vector;

.field private names:Ljava/util/Hashtable;

.field private nsName:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private parent:Lbsh/NameSpace;

.field private thisReference:Lbsh/This;

.field private variables:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v1, Lbsh/NameSpace;

    const/4 v0, 0x0

    check-cast v0, Lbsh/BshClassManager;

    const-string v2, "Called from compiled Java code."

    invoke-direct {v1, v0, v2}, Lbsh/NameSpace;-><init>(Lbsh/BshClassManager;Ljava/lang/String;)V

    sput-object v1, Lbsh/NameSpace;->JAVACODE:Lbsh/NameSpace;

    sget-object v0, Lbsh/NameSpace;->JAVACODE:Lbsh/NameSpace;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbsh/NameSpace;->isMethod:Z

    return-void
.end method

.method public constructor <init>(Lbsh/BshClassManager;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lbsh/NameSpace;-><init>(Lbsh/NameSpace;Lbsh/BshClassManager;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lbsh/NameSpace;Lbsh/BshClassManager;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p3}, Lbsh/NameSpace;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lbsh/NameSpace;->setParent(Lbsh/NameSpace;)V

    invoke-virtual {p0, p2}, Lbsh/NameSpace;->setClassManager(Lbsh/BshClassManager;)V

    if-eqz p2, :cond_11

    invoke-virtual {p2, p0}, Lbsh/BshClassManager;->addListener(Lbsh/BshClassManager$Listener;)V

    :cond_11
    return-void
.end method

.method public constructor <init>(Lbsh/NameSpace;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lbsh/NameSpace;-><init>(Lbsh/NameSpace;Lbsh/BshClassManager;Ljava/lang/String;)V

    return-void
.end method

.method private classForName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    invoke-virtual {p0}, Lbsh/NameSpace;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsh/BshClassManager;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private enumerationToStringArray(Ljava/util/Enumeration;)[Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_5
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v1

    :cond_15
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_5
.end method

.method private flattenMethodCollection(Ljava/util/Enumeration;)[Lbsh/BshMethod;
    .registers 6

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lbsh/BshMethod;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0

    :cond_15
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lbsh/BshMethod;

    if-eqz v1, :cond_21

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_5

    :cond_21
    check-cast v0, Ljava/util/Vector;

    const/4 v1, 0x0

    :goto_24
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_24
.end method

.method private getClassImpl(Ljava/lang/String;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lbsh/NameSpace;->classCache:Ljava/util/Hashtable;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lbsh/NameSpace;->classCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_11

    :cond_f
    :goto_f
    return-object v0

    :cond_10
    move-object v0, v1

    :cond_11
    invoke-static {p1}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    const/4 v2, 0x1

    :goto_18
    if-eqz v2, :cond_28

    if-nez v0, :cond_20

    invoke-direct {p0, p1}, Lbsh/NameSpace;->getImportedClassImpl(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_20
    if-eqz v0, :cond_28

    invoke-virtual {p0, p1, v0}, Lbsh/NameSpace;->cacheClass(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_f

    :cond_26
    const/4 v2, 0x0

    goto :goto_18

    :cond_28
    invoke-direct {p0, p1}, Lbsh/NameSpace;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_34

    if-eqz v2, :cond_f

    invoke-virtual {p0, p1, v0}, Lbsh/NameSpace;->cacheClass(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_f

    :cond_34
    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_58

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "getClass(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " not\tfound in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_58
    move-object v0, v1

    goto :goto_f
.end method

.method private getImportedClassImpl(Ljava/lang/String;)Ljava/lang/Class;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lbsh/NameSpace;->importedClasses:Ljava/util/Hashtable;

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lbsh/NameSpace;->importedClasses:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    :goto_e
    if-eqz v2, :cond_4b

    invoke-direct {p0, v2}, Lbsh/NameSpace;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_2d

    invoke-static {v2}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    :try_start_1c
    invoke-virtual {p0, v2}, Lbsh/NameSpace;->getNameResolver(Ljava/lang/String;)Lbsh/Name;

    move-result-object v3

    invoke-virtual {v3}, Lbsh/Name;->toClass()Ljava/lang/Class;
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_23} :catch_9a

    move-result-object v0

    :cond_24
    :goto_24
    if-eqz v0, :cond_49

    invoke-virtual {p0}, Lbsh/NameSpace;->getClassManager()Lbsh/BshClassManager;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lbsh/BshClassManager;->cacheClassInfo(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_2d
    :goto_2d
    return-object v0

    :cond_2e
    sget-boolean v3, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v3, :cond_24

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "imported unpackaged name not found:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    goto :goto_24

    :cond_49
    move-object v0, v1

    goto :goto_2d

    :cond_4b
    iget-object v0, p0, Lbsh/NameSpace;->importedPackages:Ljava/util/Vector;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lbsh/NameSpace;->importedPackages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_58
    if-gez v2, :cond_6f

    :cond_5a
    invoke-virtual {p0}, Lbsh/NameSpace;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/BshClassManager;->hasSuperImport()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-virtual {v0, p1}, Lbsh/BshClassManager;->getClassNameByUnqName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_98

    invoke-direct {p0, v0}, Lbsh/NameSpace;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_2d

    :cond_6f
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lbsh/NameSpace;->importedPackages:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbsh/NameSpace;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_2d

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_58

    :cond_98
    move-object v0, v1

    goto :goto_2d

    :catch_9a
    move-exception v3

    goto :goto_24

    :cond_9c
    move-object v2, v1

    goto/16 :goto_e
.end method

.method public static identifierToClass(Lbsh/ClassIdentifier;)Ljava/lang/Class;
    .registers 2

    invoke-virtual {p0}, Lbsh/ClassIdentifier;->getTargetClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private loadScriptedCommand(Ljava/io/InputStream;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/String;Lbsh/Interpreter;)Lbsh/BshMethod;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p5, v0, p0, p4}, Lbsh/Interpreter;->eval(Ljava/io/Reader;Lbsh/NameSpace;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_8
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_8} :catch_d

    invoke-virtual {p0, p2, p3}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;

    move-result-object v0

    return-object v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Lbsh/EvalError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    new-instance v1, Lbsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error loading script: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lbsh/EvalError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lbsh/NameSpace;->names:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addNameSourceListener(Lbsh/NameSource$Listener;)V
    .registers 3

    iget-object v0, p0, Lbsh/NameSpace;->nameSourceListeners:Ljava/util/Vector;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->nameSourceListeners:Ljava/util/Vector;

    :cond_b
    iget-object v0, p0, Lbsh/NameSpace;->nameSourceListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method cacheClass(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4

    iget-object v0, p0, Lbsh/NameSpace;->classCache:Ljava/util/Hashtable;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->classCache:Ljava/util/Hashtable;

    :cond_b
    iget-object v0, p0, Lbsh/NameSpace;->classCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public classLoaderChanged()V
    .registers 1

    invoke-virtual {p0}, Lbsh/NameSpace;->nameSpaceChanged()V

    return-void
.end method

.method public clear()V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    iput-object v1, p0, Lbsh/NameSpace;->methods:Ljava/util/Hashtable;

    iput-object v1, p0, Lbsh/NameSpace;->importedClasses:Ljava/util/Hashtable;

    iput-object v1, p0, Lbsh/NameSpace;->importedPackages:Ljava/util/Vector;

    iput-object v1, p0, Lbsh/NameSpace;->importedCommands:Ljava/util/Vector;

    iput-object v1, p0, Lbsh/NameSpace;->importedObjects:Ljava/util/Vector;

    iget-object v0, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lbsh/NameSpace;->loadDefaultImports()V

    :cond_14
    iput-object v1, p0, Lbsh/NameSpace;->classCache:Ljava/util/Hashtable;

    iput-object v1, p0, Lbsh/NameSpace;->names:Ljava/util/Hashtable;

    return-void
.end method

.method public doSuperImport()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    invoke-virtual {p0}, Lbsh/NameSpace;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/BshClassManager;->doSuperImport()V

    return-void
.end method

.method public get(Ljava/lang/String;Lbsh/Interpreter;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    new-instance v0, Lbsh/CallStack;

    invoke-direct {v0, p0}, Lbsh/CallStack;-><init>(Lbsh/NameSpace;)V

    invoke-virtual {p0, p1}, Lbsh/NameSpace;->getNameResolver(Ljava/lang/String;)Lbsh/Name;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lbsh/Name;->toObject(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAllNames()[Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->getAllNamesAux(Ljava/util/Vector;)V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v1
.end method

.method protected getAllNamesAux(Ljava/util/Vector;)V
    .registers 4

    iget-object v0, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v0, p0, Lbsh/NameSpace;->methods:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v0, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    invoke-virtual {v0, p1}, Lbsh/NameSpace;->getAllNamesAux(Ljava/util/Vector;)V

    :cond_21
    return-void

    :cond_22
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_6

    :cond_2a
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_12
.end method

.method public getClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    invoke-direct {p0, p1}, Lbsh/NameSpace;->getClassImpl(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    invoke-virtual {v0, p1}, Lbsh/NameSpace;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_6

    :cond_12
    const/4 v0, 0x0

    goto :goto_6
.end method

.method getClassInstance()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    iget-object v0, p0, Lbsh/NameSpace;->classInstance:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lbsh/NameSpace;->classInstance:Ljava/lang/Object;

    return-object v0

    :cond_7
    iget-object v0, p0, Lbsh/NameSpace;->classStatic:Ljava/lang/Class;

    if-eqz v0, :cond_13

    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Can\'t refer to class instance from static context."

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t resolve class instance \'this\' in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClassManager()Lbsh/BshClassManager;
    .registers 3

    iget-object v0, p0, Lbsh/NameSpace;->classManager:Lbsh/BshClassManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lbsh/NameSpace;->classManager:Lbsh/BshClassManager;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    sget-object v1, Lbsh/NameSpace;->JAVACODE:Lbsh/NameSpace;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    invoke-virtual {v0}, Lbsh/NameSpace;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    goto :goto_6

    :cond_18
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "experiment: creating class manager"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lbsh/BshClassManager;->createClassManager(Lbsh/Interpreter;)Lbsh/BshClassManager;

    move-result-object v0

    iput-object v0, p0, Lbsh/NameSpace;->classManager:Lbsh/BshClassManager;

    iget-object v0, p0, Lbsh/NameSpace;->classManager:Lbsh/BshClassManager;

    goto :goto_6
.end method

.method public getCommand(Ljava/lang/String;[Ljava/lang/Class;Lbsh/Interpreter;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "getCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_1a
    invoke-virtual {p3}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object v3

    iget-object v0, p0, Lbsh/NameSpace;->importedCommands:Ljava/util/Vector;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lbsh/NameSpace;->importedCommands:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2b
    if-gez v2, :cond_38

    :cond_2d
    iget-object v0, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    if-eqz v0, :cond_f1

    iget-object v0, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    invoke-virtual {v0, p1, p2, p3}, Lbsh/NameSpace;->getCommand(Ljava/lang/String;[Ljava/lang/Class;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    :cond_37
    :goto_37
    return-object v0

    :cond_38
    iget-object v0, p0, Lbsh/NameSpace;->importedCommands:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, ".bsh"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_5f
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "searching for script: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lbsh/BshClassManager;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_a2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lbsh/NameSpace;->loadScriptedCommand(Ljava/io/InputStream;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/String;Lbsh/Interpreter;)Lbsh/BshMethod;

    move-result-object v0

    goto :goto_37

    :cond_84
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, ".bsh"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5f

    :cond_a2
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cc

    move-object v0, p1

    :goto_ab
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "searching for class: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lbsh/BshClassManager;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_37

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto/16 :goto_2b

    :cond_cc
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x2f

    const/16 v5, 0x2e

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_ab

    :cond_f1
    const/4 v0, 0x0

    goto/16 :goto_37
.end method

.method public getDeclaredVariables()[Lbsh/Variable;
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    if-nez v1, :cond_8

    new-array v0, v0, [Lbsh/Variable;

    :goto_7
    return-object v0

    :cond_8
    iget-object v1, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    new-array v3, v1, [Lbsh/Variable;

    iget-object v1, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v4

    move v1, v0

    :goto_17
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1f

    move-object v0, v3

    goto :goto_7

    :cond_1f
    add-int/lit8 v2, v1, 0x1

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/Variable;

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_17
.end method

.method public getGlobal(Lbsh/Interpreter;)Lbsh/This;
    .registers 3

    iget-object v0, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    invoke-virtual {v0, p1}, Lbsh/NameSpace;->getGlobal(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0, p1}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    goto :goto_a
.end method

.method protected getImportedMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lbsh/NameSpace;->importedObjects:Ljava/util/Vector;

    if-eqz v0, :cond_f

    move v0, v1

    :goto_7
    iget-object v3, p0, Lbsh/NameSpace;->importedObjects:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v0, v3, :cond_1d

    :cond_f
    iget-object v0, p0, Lbsh/NameSpace;->importedStatic:Ljava/util/Vector;

    if-eqz v0, :cond_1b

    :goto_13
    iget-object v0, p0, Lbsh/NameSpace;->importedStatic:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_3a

    :cond_1b
    move-object v0, v2

    :goto_1c
    return-object v0

    :cond_1d
    iget-object v3, p0, Lbsh/NameSpace;->importedObjects:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Lbsh/NameSpace;->getClassManager()Lbsh/BshClassManager;

    move-result-object v5

    invoke-static {v5, v4, p1, p2, v1}, Lbsh/Reflect;->resolveJavaMethod(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_37

    new-instance v0, Lbsh/BshMethod;

    invoke-direct {v0, v4, v3}, Lbsh/BshMethod;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_1c

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_3a
    iget-object v0, p0, Lbsh/NameSpace;->importedStatic:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0}, Lbsh/NameSpace;->getClassManager()Lbsh/BshClassManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v0, p1, p2, v4}, Lbsh/Reflect;->resolveJavaMethod(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_53

    new-instance v0, Lbsh/BshMethod;

    invoke-direct {v0, v3, v2}, Lbsh/BshMethod;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_1c

    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method protected getImportedVar(Ljava/lang/String;)Lbsh/Variable;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lbsh/NameSpace;->importedObjects:Ljava/util/Vector;

    if-eqz v0, :cond_e

    move v0, v1

    :goto_6
    iget-object v2, p0, Lbsh/NameSpace;->importedObjects:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_1c

    :cond_e
    iget-object v0, p0, Lbsh/NameSpace;->importedStatic:Ljava/util/Vector;

    if-eqz v0, :cond_1a

    :goto_12
    iget-object v0, p0, Lbsh/NameSpace;->importedStatic:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_3e

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return-object v0

    :cond_1c
    iget-object v2, p0, Lbsh/NameSpace;->importedObjects:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p1, v1}, Lbsh/Reflect;->resolveJavaField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_3b

    new-instance v0, Lbsh/Variable;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    new-instance v4, Lbsh/LHS;

    invoke-direct {v4, v2, v3}, Lbsh/LHS;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    invoke-direct {v0, p1, v1, v4}, Lbsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/Class;Lbsh/LHS;)V

    goto :goto_1b

    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_3e
    iget-object v0, p0, Lbsh/NameSpace;->importedStatic:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v0, p1, v2}, Lbsh/Reflect;->resolveJavaField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_5c

    new-instance v0, Lbsh/Variable;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    new-instance v3, Lbsh/LHS;

    invoke-direct {v3, v2}, Lbsh/LHS;-><init>(Ljava/lang/reflect/Field;)V

    invoke-direct {v0, p1, v1, v3}, Lbsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/Class;Lbsh/LHS;)V

    goto :goto_1b

    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_12
.end method

.method public getInvocationLine()I
    .registers 2

    invoke-virtual {p0}, Lbsh/NameSpace;->getNode()Lbsh/SimpleNode;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lbsh/SimpleNode;->getLineNumber()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getInvocationText()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lbsh/NameSpace;->getNode()Lbsh/SimpleNode;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lbsh/SimpleNode;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "<invoked from Java code>"

    goto :goto_a
.end method

.method public getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Lbsh/BshMethod;

    move-result-object v0

    return-object v0
.end method

.method public getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Lbsh/BshMethod;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v3, :cond_e

    iget-boolean v0, p0, Lbsh/NameSpace;->isClass:Z

    if-eqz v0, :cond_e

    if-nez p3, :cond_e

    invoke-virtual {p0, p1, p2}, Lbsh/NameSpace;->getImportedMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;

    move-result-object v3

    :cond_e
    if-nez v3, :cond_6b

    iget-object v0, p0, Lbsh/NameSpace;->methods:Ljava/util/Hashtable;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lbsh/NameSpace;->methods:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6b

    instance-of v1, v0, Ljava/util/Vector;

    if-eqz v1, :cond_57

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lbsh/BshMethod;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    move-object v0, v1

    :goto_2c
    array-length v1, v0

    new-array v4, v1, [[Ljava/lang/Class;

    move v1, v2

    :goto_30
    array-length v2, v0

    if-lt v1, v2, :cond_60

    invoke-static {p2, v4}, Lbsh/Reflect;->findMostSpecificSignature([Ljava/lang/Class;[[Ljava/lang/Class;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6b

    aget-object v0, v0, v1

    :goto_3c
    if-nez v0, :cond_48

    iget-boolean v1, p0, Lbsh/NameSpace;->isClass:Z

    if-nez v1, :cond_48

    if-nez p3, :cond_48

    invoke-virtual {p0, p1, p2}, Lbsh/NameSpace;->getImportedMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;

    move-result-object v0

    :cond_48
    if-nez p3, :cond_56

    if-nez v0, :cond_56

    iget-object v1, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    if-eqz v1, :cond_56

    iget-object v0, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    invoke-virtual {v0, p1, p2}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;

    move-result-object v0

    :cond_56
    return-object v0

    :cond_57
    const/4 v1, 0x1

    new-array v1, v1, [Lbsh/BshMethod;

    check-cast v0, Lbsh/BshMethod;

    aput-object v0, v1, v2

    move-object v0, v1

    goto :goto_2c

    :cond_60
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lbsh/BshMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_6b
    move-object v0, v3

    goto :goto_3c
.end method

.method public getMethodNames()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbsh/NameSpace;->methods:Ljava/util/Hashtable;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lbsh/NameSpace;->methods:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-direct {p0, v0}, Lbsh/NameSpace;->enumerationToStringArray(Ljava/util/Enumeration;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public getMethods()[Lbsh/BshMethod;
    .registers 2

    iget-object v0, p0, Lbsh/NameSpace;->methods:Ljava/util/Hashtable;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    new-array v0, v0, [Lbsh/BshMethod;

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lbsh/NameSpace;->methods:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    invoke-direct {p0, v0}, Lbsh/NameSpace;->flattenMethodCollection(Ljava/util/Enumeration;)[Lbsh/BshMethod;

    move-result-object v0

    goto :goto_7
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbsh/NameSpace;->nsName:Ljava/lang/String;

    return-object v0
.end method

.method getNameResolver(Ljava/lang/String;)Lbsh/Name;
    .registers 4

    iget-object v0, p0, Lbsh/NameSpace;->names:Ljava/util/Hashtable;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->names:Ljava/util/Hashtable;

    :cond_b
    iget-object v0, p0, Lbsh/NameSpace;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/Name;

    if-nez v0, :cond_1f

    new-instance v0, Lbsh/Name;

    invoke-direct {v0, p0, p1}, Lbsh/Name;-><init>(Lbsh/NameSpace;Ljava/lang/String;)V

    iget-object v1, p0, Lbsh/NameSpace;->names:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-object v0
.end method

.method getNode()Lbsh/SimpleNode;
    .registers 2

    iget-object v0, p0, Lbsh/NameSpace;->callerInfoNode:Lbsh/SimpleNode;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lbsh/NameSpace;->callerInfoNode:Lbsh/SimpleNode;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    invoke-virtual {v0}, Lbsh/NameSpace;->getNode()Lbsh/SimpleNode;

    move-result-object v0

    goto :goto_6

    :cond_12
    const/4 v0, 0x0

    goto :goto_6
.end method

.method getPackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbsh/NameSpace;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lbsh/NameSpace;->packageName:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    invoke-virtual {v0}, Lbsh/NameSpace;->getPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_12
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getParent()Lbsh/NameSpace;
    .registers 2

    iget-object v0, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    return-object v0
.end method

.method public getSuper(Lbsh/Interpreter;)Lbsh/This;
    .registers 3

    iget-object v0, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    invoke-virtual {v0, p1}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0, p1}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    goto :goto_a
.end method

.method getThis(Lbsh/Interpreter;)Lbsh/This;
    .registers 3

    iget-object v0, p0, Lbsh/NameSpace;->thisReference:Lbsh/This;

    if-nez v0, :cond_a

    invoke-static {p0, p1}, Lbsh/This;->getThis(Lbsh/NameSpace;Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    iput-object v0, p0, Lbsh/NameSpace;->thisReference:Lbsh/This;

    :cond_a
    iget-object v0, p0, Lbsh/NameSpace;->thisReference:Lbsh/This;

    return-object v0
.end method

.method public getVariable(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lbsh/NameSpace;->getVariable(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getVariable(Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lbsh/NameSpace;->getVariableImpl(Ljava/lang/String;Z)Lbsh/Variable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->unwrapVariable(Lbsh/Variable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getVariableImpl(Ljava/lang/String;Z)Lbsh/Variable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez v0, :cond_b

    iget-boolean v1, p0, Lbsh/NameSpace;->isClass:Z

    if-eqz v1, :cond_b

    invoke-virtual {p0, p1}, Lbsh/NameSpace;->getImportedVar(Ljava/lang/String;)Lbsh/Variable;

    move-result-object v0

    :cond_b
    if-nez v0, :cond_19

    iget-object v1, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    if-eqz v1, :cond_19

    iget-object v0, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/Variable;

    :cond_19
    if-nez v0, :cond_23

    iget-boolean v1, p0, Lbsh/NameSpace;->isClass:Z

    if-nez v1, :cond_23

    invoke-virtual {p0, p1}, Lbsh/NameSpace;->getImportedVar(Ljava/lang/String;)Lbsh/Variable;

    move-result-object v0

    :cond_23
    if-eqz p2, :cond_31

    if-nez v0, :cond_31

    iget-object v1, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    if-eqz v1, :cond_31

    iget-object v0, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    invoke-virtual {v0, p1, p2}, Lbsh/NameSpace;->getVariableImpl(Ljava/lang/String;Z)Lbsh/Variable;

    move-result-object v0

    :cond_31
    return-object v0
.end method

.method public getVariableNames()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-direct {p0, v0}, Lbsh/NameSpace;->enumerationToStringArray(Ljava/util/Enumeration;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public importClass(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lbsh/NameSpace;->importedClasses:Ljava/util/Hashtable;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->importedClasses:Ljava/util/Hashtable;

    :cond_b
    iget-object v0, p0, Lbsh/NameSpace;->importedClasses:Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lbsh/Name;->suffix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lbsh/NameSpace;->nameSpaceChanged()V

    return-void
.end method

.method public importCommands(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lbsh/NameSpace;->importedCommands:Ljava/util/Vector;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->importedCommands:Ljava/util/Vector;

    :cond_b
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_48

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_48
    iget-object v1, p0, Lbsh/NameSpace;->importedCommands:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lbsh/NameSpace;->importedCommands:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_55
    iget-object v1, p0, Lbsh/NameSpace;->importedCommands:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lbsh/NameSpace;->nameSpaceChanged()V

    return-void
.end method

.method public importObject(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lbsh/NameSpace;->importedObjects:Ljava/util/Vector;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->importedObjects:Ljava/util/Vector;

    :cond_b
    iget-object v0, p0, Lbsh/NameSpace;->importedObjects:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lbsh/NameSpace;->importedObjects:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_18
    iget-object v0, p0, Lbsh/NameSpace;->importedObjects:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lbsh/NameSpace;->nameSpaceChanged()V

    return-void
.end method

.method public importPackage(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lbsh/NameSpace;->importedPackages:Ljava/util/Vector;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->importedPackages:Ljava/util/Vector;

    :cond_b
    iget-object v0, p0, Lbsh/NameSpace;->importedPackages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lbsh/NameSpace;->importedPackages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_18
    iget-object v0, p0, Lbsh/NameSpace;->importedPackages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lbsh/NameSpace;->nameSpaceChanged()V

    return-void
.end method

.method public importStatic(Ljava/lang/Class;)V
    .registers 3

    iget-object v0, p0, Lbsh/NameSpace;->importedStatic:Ljava/util/Vector;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->importedStatic:Ljava/util/Vector;

    :cond_b
    iget-object v0, p0, Lbsh/NameSpace;->importedStatic:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lbsh/NameSpace;->importedStatic:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_18
    iget-object v0, p0, Lbsh/NameSpace;->importedStatic:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lbsh/NameSpace;->nameSpaceChanged()V

    return-void
.end method

.method public invokeMethod(Ljava/lang/String;[Ljava/lang/Object;Lbsh/Interpreter;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lbsh/NameSpace;->invokeMethod(Ljava/lang/String;[Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invokeMethod(Ljava/lang/String;[Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lbsh/This;->invokeMethod(Ljava/lang/String;[Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadDefaultImports()V
    .registers 2

    const-string v0, "bsh.EvalError"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importClass(Ljava/lang/String;)V

    const-string v0, "bsh.Interpreter"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importClass(Ljava/lang/String;)V

    const-string v0, "javax.swing.event"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    const-string v0, "javax.swing"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    const-string v0, "java.awt.event"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    const-string v0, "java.awt"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    const-string v0, "java.net"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    const-string v0, "java.util"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    const-string v0, "java.io"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    const-string v0, "java.lang"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    const-string v0, "/bsh/commands"

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->importCommands(Ljava/lang/String;)V

    return-void
.end method

.method public nameSpaceChanged()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/NameSpace;->classCache:Ljava/util/Hashtable;

    iput-object v0, p0, Lbsh/NameSpace;->names:Ljava/util/Hashtable;

    return-void
.end method

.method public prune()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lbsh/NameSpace;->classManager:Lbsh/BshClassManager;

    if-nez v0, :cond_c

    invoke-static {v1}, Lbsh/BshClassManager;->createClassManager(Lbsh/Interpreter;)Lbsh/BshClassManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/NameSpace;->setClassManager(Lbsh/BshClassManager;)V

    :cond_c
    invoke-virtual {p0, v1}, Lbsh/NameSpace;->setParent(Lbsh/NameSpace;)V

    return-void
.end method

.method setClassInstance(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lbsh/NameSpace;->classInstance:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lbsh/NameSpace;->importObject(Ljava/lang/Object;)V

    return-void
.end method

.method setClassManager(Lbsh/BshClassManager;)V
    .registers 2

    iput-object p1, p0, Lbsh/NameSpace;->classManager:Lbsh/BshClassManager;

    return-void
.end method

.method setClassStatic(Ljava/lang/Class;)V
    .registers 2

    iput-object p1, p0, Lbsh/NameSpace;->classStatic:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lbsh/NameSpace;->importStatic(Ljava/lang/Class;)V

    return-void
.end method

.method setLocalVariable(Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lbsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public setMethod(Ljava/lang/String;Lbsh/BshMethod;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    iget-object v0, p0, Lbsh/NameSpace;->methods:Ljava/util/Hashtable;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->methods:Ljava/util/Hashtable;

    :cond_b
    iget-object v0, p0, Lbsh/NameSpace;->methods:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lbsh/NameSpace;->methods:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_18
    return-void

    :cond_19
    instance-of v1, v0, Lbsh/BshMethod;

    if-eqz v1, :cond_2e

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lbsh/NameSpace;->methods:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :cond_2e
    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_18
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lbsh/NameSpace;->nsName:Ljava/lang/String;

    return-void
.end method

.method setNode(Lbsh/SimpleNode;)V
    .registers 2

    iput-object p1, p0, Lbsh/NameSpace;->callerInfoNode:Lbsh/SimpleNode;

    return-void
.end method

.method setPackage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lbsh/NameSpace;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setParent(Lbsh/NameSpace;)V
    .registers 2

    iput-object p1, p0, Lbsh/NameSpace;->parent:Lbsh/NameSpace;

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lbsh/NameSpace;->loadDefaultImports()V

    :cond_7
    return-void
.end method

.method public setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    :cond_c
    invoke-virtual {p0, p1, v2}, Lbsh/NameSpace;->getVariableImpl(Ljava/lang/String;Z)Lbsh/Variable;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Lbsh/Variable;->getType()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_49

    invoke-virtual {v0}, Lbsh/Variable;->getType()Ljava/lang/Class;

    move-result-object v1

    if-eq v1, p2, :cond_45

    new-instance v1, Lbsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Typed variable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " was previously declared with type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lbsh/Variable;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_45
    invoke-virtual {v0, p3, v2}, Lbsh/Variable;->setValue(Ljava/lang/Object;I)V

    :goto_48
    return-void

    :cond_49
    iget-object v0, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    new-instance v1, Lbsh/Variable;

    invoke-direct {v1, p1, p2, p3, p4}, Lbsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_48
.end method

.method public setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    new-instance v0, Lbsh/Modifiers;

    invoke-direct {v0}, Lbsh/Modifiers;-><init>()V

    if-eqz p4, :cond_d

    const/4 v1, 0x2

    const-string v2, "final"

    invoke-virtual {v0, v1, v2}, Lbsh/Modifiers;->addModifier(ILjava/lang/String;)V

    :cond_d
    invoke-virtual {p0, p1, p2, p3, v0}, Lbsh/NameSpace;->setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V

    return-void
.end method

.method public setVariable(Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    sget-boolean v0, Lbsh/Interpreter;->LOCALSCOPING:Z

    if-eqz v0, :cond_9

    move v0, p3

    :goto_5
    invoke-virtual {p0, p1, p2, p3, v0}, Lbsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    return-void

    :cond_9
    const/4 v0, 0x1

    goto :goto_5
.end method

.method setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    iget-object v0, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    :cond_b
    if-nez p2, :cond_15

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "null variable value"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-virtual {p0, p1, p4}, Lbsh/NameSpace;->getVariableImpl(Ljava/lang/String;Z)Lbsh/Variable;

    move-result-object v0

    if-eqz v0, :cond_48

    const/4 v1, 0x1

    :try_start_1c
    invoke-virtual {v0, p2, v1}, Lbsh/Variable;->setValue(Ljava/lang/Object;I)V
    :try_end_1f
    .catch Lbsh/UtilEvalError; {:try_start_1c .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    new-instance v1, Lbsh/UtilEvalError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Variable assignment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lbsh/UtilEvalError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_48
    if-eqz p3, :cond_63

    new-instance v0, Lbsh/UtilEvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "(Strict Java mode) Assignment to undeclared variable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_63
    iget-object v0, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    new-instance v1, Lbsh/Variable;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lbsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/Object;Lbsh/Modifiers;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lbsh/NameSpace;->nameSpaceChanged()V

    goto :goto_1f
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "NameSpace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lbsh/NameSpace;->nsName:Ljava/lang/String;

    if-nez v0, :cond_44

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v0, p0, Lbsh/NameSpace;->isClass:Z

    if-eqz v0, :cond_68

    const-string v0, " (isClass) "

    :goto_1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v0, p0, Lbsh/NameSpace;->isMethod:Z

    if-eqz v0, :cond_6b

    const-string v0, " (method) "

    :goto_27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lbsh/NameSpace;->classStatic:Ljava/lang/Class;

    if-eqz v0, :cond_6e

    const-string v0, " (class static) "

    :goto_31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lbsh/NameSpace;->classInstance:Ljava/lang/Object;

    if-eqz v0, :cond_71

    const-string v0, " (class instance) "

    :goto_3b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_44
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lbsh/NameSpace;->nsName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_68
    const-string v0, ""

    goto :goto_1d

    :cond_6b
    const-string v0, ""

    goto :goto_27

    :cond_6e
    const-string v0, ""

    goto :goto_31

    :cond_71
    const-string v0, ""

    goto :goto_3b
.end method

.method public unsetVariable(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lbsh/NameSpace;->variables:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lbsh/NameSpace;->nameSpaceChanged()V

    :cond_c
    return-void
.end method

.method protected unwrapVariable(Lbsh/Variable;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    if-nez p1, :cond_5

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p1}, Lbsh/Variable;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_4
.end method
