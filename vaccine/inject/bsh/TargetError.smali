.class public Lbsh/TargetError;
.super Lbsh/EvalError;


# instance fields
.field inNativeCode:Z

.field target:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lbsh/SimpleNode;Lbsh/CallStack;Z)V
    .registers 6

    invoke-direct {p0, p1, p3, p4}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    iput-object p2, p0, Lbsh/TargetError;->target:Ljava/lang/Throwable;

    iput-boolean p5, p0, Lbsh/TargetError;->inNativeCode:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lbsh/SimpleNode;Lbsh/CallStack;)V
    .registers 10

    const-string v1, "TargetError"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lbsh/TargetError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lbsh/SimpleNode;Lbsh/CallStack;Z)V

    return-void
.end method


# virtual methods
.method public getTarget()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lbsh/TargetError;->target:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lbsh/TargetError;->target:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lbsh/TargetError;->target:Ljava/lang/Throwable;

    goto :goto_e
.end method

.method public inNativeCode()Z
    .registers 2

    iget-boolean v0, p0, Lbsh/TargetError;->inNativeCode:Z

    return v0
.end method

.method public printStackTrace()V
    .registers 3

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0, v1}, Lbsh/TargetError;->printStackTrace(ZLjava/io/PrintStream;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lbsh/TargetError;->printStackTrace(ZLjava/io/PrintStream;)V

    return-void
.end method

.method public printStackTrace(ZLjava/io/PrintStream;)V
    .registers 4

    if-eqz p1, :cond_a

    invoke-super {p0, p2}, Lbsh/EvalError;->printStackTrace(Ljava/io/PrintStream;)V

    const-string v0, "--- Target Stack Trace ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lbsh/TargetError;->target:Ljava/lang/Throwable;

    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public printTargetError(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lbsh/TargetError;->target:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lbsh/Capabilities;->canGenerateInterfaces()Z

    move-result v1

    if-eqz v1, :cond_27

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0, p1}, Lbsh/TargetError;->xPrintTargetError(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_27
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Lbsh/EvalError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\nTarget exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lbsh/TargetError;->target:Ljava/lang/Throwable;

    invoke-virtual {p0, v1}, Lbsh/TargetError;->printTargetError(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public xPrintTargetError(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 6

    const-string v0, "import java.lang.reflect.UndeclaredThrowableException;String result=\"\";while ( target instanceof UndeclaredThrowableException ) {\ttarget=target.getUndeclaredThrowable(); \tresult+=\"Nested: \"+target.toString();}return result;"

    new-instance v1, Lbsh/Interpreter;

    invoke-direct {v1}, Lbsh/Interpreter;-><init>()V

    :try_start_7
    const-string v2, "target"

    invoke-virtual {v1, v2, p1}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_12
    .catch Lbsh/EvalError; {:try_start_7 .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    move-exception v0

    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "xprintarget: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lbsh/EvalError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
