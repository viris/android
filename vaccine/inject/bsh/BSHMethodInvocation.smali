.class Lbsh/BSHMethodInvocation;
.super Lbsh/SimpleNode;


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    invoke-virtual {p1}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v0

    invoke-virtual {p0}, Lbsh/BSHMethodInvocation;->getNameNode()Lbsh/BSHAmbiguousName;

    move-result-object v1

    invoke-virtual {v0}, Lbsh/NameSpace;->getParent()Lbsh/NameSpace;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-virtual {v0}, Lbsh/NameSpace;->getParent()Lbsh/NameSpace;

    move-result-object v2

    iget-boolean v2, v2, Lbsh/NameSpace;->isClass:Z

    if-eqz v2, :cond_2d

    iget-object v2, v1, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;

    const-string v3, "super"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    iget-object v2, v1, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;

    const-string v3, "this"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_2a
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    :goto_2c
    return-object v0

    :cond_2d
    invoke-virtual {v1, v0}, Lbsh/BSHAmbiguousName;->getName(Lbsh/NameSpace;)Lbsh/Name;

    move-result-object v0

    invoke-virtual {p0}, Lbsh/BSHMethodInvocation;->getArgsNode()Lbsh/BSHArguments;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lbsh/BSHArguments;->getArguments(Lbsh/CallStack;Lbsh/Interpreter;)[Ljava/lang/Object;

    move-result-object v1

    :try_start_39
    invoke-virtual {v0, p2, v1, p1, p0}, Lbsh/Name;->invokeMethod(Lbsh/Interpreter;[Ljava/lang/Object;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;
    :try_end_3c
    .catch Lbsh/ReflectError; {:try_start_39 .. :try_end_3c} :catch_3e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_39 .. :try_end_3c} :catch_5c
    .catch Lbsh/UtilEvalError; {:try_start_39 .. :try_end_3c} :catch_8e

    move-result-object v0

    goto :goto_2c

    :catch_3e
    move-exception v0

    new-instance v1, Lbsh/EvalError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error in method invocation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lbsh/ReflectError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1

    :catch_5c
    move-exception v2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Method Invocation "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    const/4 v5, 0x1

    instance-of v0, v2, Lbsh/EvalError;

    if-eqz v0, :cond_84

    instance-of v0, v2, Lbsh/TargetError;

    if-eqz v0, :cond_8c

    move-object v0, v2

    check-cast v0, Lbsh/TargetError;

    invoke-virtual {v0}, Lbsh/TargetError;->inNativeCode()Z

    move-result v5

    :cond_84
    :goto_84
    new-instance v0, Lbsh/TargetError;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lbsh/TargetError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lbsh/SimpleNode;Lbsh/CallStack;Z)V

    throw v0

    :cond_8c
    const/4 v5, 0x0

    goto :goto_84

    :catch_8e
    move-exception v0

    invoke-virtual {v0, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0
.end method

.method getArgsNode()Lbsh/BSHArguments;
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbsh/BSHMethodInvocation;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHArguments;

    return-object v0
.end method

.method getNameNode()Lbsh/BSHAmbiguousName;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHMethodInvocation;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHAmbiguousName;

    return-object v0
.end method
