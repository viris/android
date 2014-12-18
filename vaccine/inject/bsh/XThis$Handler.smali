.class Lbsh/XThis$Handler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/XThis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Handler"
.end annotation


# instance fields
.field private final this$0:Lbsh/XThis;


# direct methods
.method constructor <init>(Lbsh/XThis;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsh/XThis$Handler;->this$0:Lbsh/XThis;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lbsh/XThis$Handler;->invokeImpl(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lbsh/TargetError; {:try_start_0 .. :try_end_3} :catch_5
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_3} :catch_b

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Lbsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :catch_b
    move-exception v0

    sget-boolean v1, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v1, :cond_36

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "EvalError in scripted interface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lbsh/XThis$Handler;->this$0:Lbsh/XThis;

    invoke-virtual {v2}, Lbsh/XThis;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_36
    throw v0
.end method

.method public invokeImpl(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lbsh/CallStack;

    iget-object v5, p0, Lbsh/XThis$Handler;->this$0:Lbsh/XThis;

    iget-object v5, v5, Lbsh/XThis;->namespace:Lbsh/NameSpace;

    invoke-direct {v0, v5}, Lbsh/CallStack;-><init>(Lbsh/NameSpace;)V

    :try_start_10
    iget-object v0, p0, Lbsh/XThis$Handler;->this$0:Lbsh/XThis;

    iget-object v5, v0, Lbsh/XThis;->namespace:Lbsh/NameSpace;

    const-string v6, "equals"

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v0, Lbsh/XThis;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_42

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lbsh/XThis;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/XThis;->class$java$lang$Object:Ljava/lang/Class;

    :goto_26
    aput-object v0, v7, v8

    invoke-virtual {v5, v6, v7}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;
    :try_end_2b
    .catch Lbsh/UtilEvalError; {:try_start_10 .. :try_end_2b} :catch_45

    move-result-object v0

    :goto_2c
    const-string v5, "equals"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    if-nez v0, :cond_4a

    aget-object v0, p3, v3

    new-instance v1, Ljava/lang/Boolean;

    if-ne p1, v0, :cond_48

    move v0, v2

    :goto_3d
    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v1

    :goto_41
    return-object v0

    :cond_42
    :try_start_42
    sget-object v0, Lbsh/XThis;->class$java$lang$Object:Ljava/lang/Class;
    :try_end_44
    .catch Lbsh/UtilEvalError; {:try_start_42 .. :try_end_44} :catch_45

    goto :goto_26

    :catch_45
    move-exception v0

    move-object v0, v1

    goto :goto_2c

    :cond_48
    move v0, v3

    goto :goto_3d

    :cond_4a
    :try_start_4a
    iget-object v0, p0, Lbsh/XThis$Handler;->this$0:Lbsh/XThis;

    iget-object v0, v0, Lbsh/XThis;->namespace:Lbsh/NameSpace;

    const-string v5, "toString"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;
    :try_end_56
    .catch Lbsh/UtilEvalError; {:try_start_4a .. :try_end_56} :catch_ce

    move-result-object v1

    :goto_57
    const-string v0, "toString"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    if-nez v1, :cond_ba

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lbsh/XThis$Handler;->this$0:Lbsh/XThis;

    invoke-virtual {v5}, Lbsh/XThis;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v5, "\nimplements:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_87
    array-length v0, v1

    if-lt v3, v0, :cond_8f

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    :cond_8f
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    array-length v0, v1

    if-le v0, v2, :cond_b7

    const-string v0, ","

    :goto_a9
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_87

    :cond_b7
    const-string v0, ""

    goto :goto_a9

    :cond_ba
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lbsh/XThis$Handler;->this$0:Lbsh/XThis;

    invoke-static {p3, v0}, Lbsh/Primitive;->wrap([Ljava/lang/Object;[Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lbsh/XThis;->invokeMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_41

    :catch_ce
    move-exception v0

    goto :goto_57
.end method
