.class public Lbsh/Capabilities;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/Capabilities$Unavailable;
    }
.end annotation


# static fields
.field private static accessibility:Z

.field static class$java$lang$String:Ljava/lang/Class;

.field private static classes:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lbsh/Capabilities;->accessibility:Z

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lbsh/Capabilities;->classes:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canGenerateInterfaces()Z
    .registers 1

    const-string v0, "java.lang.reflect.Proxy"

    invoke-static {v0}, Lbsh/Capabilities;->classExists(Ljava/lang/String;)Z

    move-result v0

    return v0
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

.method public static classExists(Ljava/lang/String;)Z
    .registers 4

    sget-object v0, Lbsh/Capabilities;->classes:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_15

    :try_start_8
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_b} :catch_1b

    move-result-object v0

    :goto_c
    if-eqz v0, :cond_15

    sget-object v1, Lbsh/Capabilities;->classes:Ljava/util/Hashtable;

    const-string v2, "unused"

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    if-eqz v0, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18

    :catch_1b
    move-exception v1

    goto :goto_c
.end method

.method public static haveAccessibility()Z
    .registers 1

    sget-boolean v0, Lbsh/Capabilities;->accessibility:Z

    return v0
.end method

.method public static haveSwing()Z
    .registers 1

    const-string v0, "javax.swing.JButton"

    invoke-static {v0}, Lbsh/Capabilities;->classExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setAccessibility(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/Capabilities$Unavailable;
        }
    .end annotation

    if-nez p0, :cond_6

    const/4 v0, 0x0

    sput-boolean v0, Lbsh/Capabilities;->accessibility:Z

    :goto_5
    return-void

    :cond_6
    const-string v0, "java.lang.reflect.AccessibleObject"

    invoke-static {v0}, Lbsh/Capabilities;->classExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "bsh.reflect.ReflectManagerImpl"

    invoke-static {v0}, Lbsh/Capabilities;->classExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_16
    new-instance v0, Lbsh/Capabilities$Unavailable;

    const-string v1, "Accessibility unavailable"

    invoke-direct {v0, v1}, Lbsh/Capabilities$Unavailable;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    :try_start_1e
    sget-object v0, Lbsh/Capabilities;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_31

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lbsh/Capabilities;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Capabilities;->class$java$lang$String:Ljava/lang/Class;

    :goto_2a
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
    :try_end_2d
    .catch Ljava/lang/SecurityException; {:try_start_1e .. :try_end_2d} :catch_34

    const/4 v0, 0x1

    sput-boolean v0, Lbsh/Capabilities;->accessibility:Z

    goto :goto_5

    :cond_31
    :try_start_31
    sget-object v0, Lbsh/Capabilities;->class$java$lang$String:Ljava/lang/Class;
    :try_end_33
    .catch Ljava/lang/SecurityException; {:try_start_31 .. :try_end_33} :catch_34

    goto :goto_2a

    :catch_34
    move-exception v0

    new-instance v1, Lbsh/Capabilities$Unavailable;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Accessibility unavailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/Capabilities$Unavailable;-><init>(Ljava/lang/String;)V

    throw v1
.end method
