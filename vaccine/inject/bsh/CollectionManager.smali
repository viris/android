.class public Lbsh/CollectionManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/CollectionManager$BasicBshIterator;
    }
.end annotation


# static fields
.field private static manager:Lbsh/CollectionManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getCollectionManager()Lbsh/CollectionManager;
    .registers 4

    const-class v1, Lbsh/CollectionManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lbsh/CollectionManager;->manager:Lbsh/CollectionManager;

    if-nez v0, :cond_1d

    const-string v0, "java.util.Collection"

    invoke-static {v0}, Lbsh/Capabilities;->classExists(Ljava/lang/String;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_44

    move-result v0

    if-eqz v0, :cond_1d

    :try_start_f
    const-string v0, "bsh.collection.CollectionManagerImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/CollectionManager;

    sput-object v0, Lbsh/CollectionManager;->manager:Lbsh/CollectionManager;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1d} :catch_2c
    .catchall {:try_start_f .. :try_end_1d} :catchall_44

    :cond_1d
    :goto_1d
    :try_start_1d
    sget-object v0, Lbsh/CollectionManager;->manager:Lbsh/CollectionManager;

    if-nez v0, :cond_28

    new-instance v0, Lbsh/CollectionManager;

    invoke-direct {v0}, Lbsh/CollectionManager;-><init>()V

    sput-object v0, Lbsh/CollectionManager;->manager:Lbsh/CollectionManager;

    :cond_28
    sget-object v0, Lbsh/CollectionManager;->manager:Lbsh/CollectionManager;
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_44

    monitor-exit v1

    return-object v0

    :catch_2c
    move-exception v0

    :try_start_2d
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "unable to load CollectionManagerImpl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_2d .. :try_end_43} :catchall_44

    goto :goto_1d

    :catchall_44
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBshIterator(Ljava/lang/Object;)Lbsh/BshIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lbsh/CollectionManager$BasicBshIterator;

    invoke-direct {v0, p1}, Lbsh/CollectionManager$BasicBshIterator;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFromMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Ljava/util/Hashtable;

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isBshIterable(Ljava/lang/Object;)Z
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1}, Lbsh/CollectionManager;->getBshIterator(Ljava/lang/Object;)Lbsh/BshIterator;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method

.method public isMap(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Ljava/util/Hashtable;

    return v0
.end method

.method public putInMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Ljava/util/Hashtable;

    invoke-virtual {p1, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
