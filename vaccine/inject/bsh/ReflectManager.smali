.class public abstract Lbsh/ReflectManager;
.super Ljava/lang/Object;


# static fields
.field private static rfm:Lbsh/ReflectManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static RMSetAccessible(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/Capabilities$Unavailable;
        }
    .end annotation

    invoke-static {}, Lbsh/ReflectManager;->getReflectManager()Lbsh/ReflectManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbsh/ReflectManager;->setAccessible(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getReflectManager()Lbsh/ReflectManager;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/Capabilities$Unavailable;
        }
    .end annotation

    sget-object v0, Lbsh/ReflectManager;->rfm:Lbsh/ReflectManager;

    if-nez v0, :cond_12

    :try_start_4
    const-string v0, "bsh.reflect.ReflectManagerImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/ReflectManager;

    sput-object v0, Lbsh/ReflectManager;->rfm:Lbsh/ReflectManager;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_15

    :cond_12
    sget-object v0, Lbsh/ReflectManager;->rfm:Lbsh/ReflectManager;

    return-object v0

    :catch_15
    move-exception v0

    new-instance v1, Lbsh/Capabilities$Unavailable;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Reflect Manager unavailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/Capabilities$Unavailable;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public abstract setAccessible(Ljava/lang/Object;)Z
.end method
