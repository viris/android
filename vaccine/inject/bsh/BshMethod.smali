.class public Lbsh/BshMethod;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cparamTypes:[Ljava/lang/Class;

.field private creturnType:Ljava/lang/Class;

.field declaringNameSpace:Lbsh/NameSpace;

.field private javaMethod:Ljava/lang/reflect/Method;

.field private javaObject:Ljava/lang/Object;

.field methodBody:Lbsh/BSHBlock;

.field modifiers:Lbsh/Modifiers;

.field private name:Ljava/lang/String;

.field private numArgs:I

.field private paramNames:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lbsh/BSHMethodDeclaration;Lbsh/NameSpace;Lbsh/Modifiers;)V
    .registers 12

    iget-object v1, p1, Lbsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    iget-object v2, p1, Lbsh/BSHMethodDeclaration;->returnType:Ljava/lang/Class;

    iget-object v0, p1, Lbsh/BSHMethodDeclaration;->paramsNode:Lbsh/BSHFormalParameters;

    invoke-virtual {v0}, Lbsh/BSHFormalParameters;->getParamNames()[Ljava/lang/String;

    move-result-object v3

    iget-object v0, p1, Lbsh/BSHMethodDeclaration;->paramsNode:Lbsh/BSHFormalParameters;

    iget-object v4, v0, Lbsh/BSHFormalParameters;->paramTypes:[Ljava/lang/Class;

    iget-object v5, p1, Lbsh/BSHMethodDeclaration;->blockNode:Lbsh/BSHBlock;

    move-object v0, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lbsh/BshMethod;-><init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Lbsh/BSHBlock;Lbsh/NameSpace;Lbsh/Modifiers;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Lbsh/BSHBlock;Lbsh/NameSpace;Lbsh/Modifiers;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsh/BshMethod;->name:Ljava/lang/String;

    iput-object p2, p0, Lbsh/BshMethod;->creturnType:Ljava/lang/Class;

    iput-object p3, p0, Lbsh/BshMethod;->paramNames:[Ljava/lang/String;

    if-eqz p3, :cond_e

    array-length v0, p3

    iput v0, p0, Lbsh/BshMethod;->numArgs:I

    :cond_e
    iput-object p4, p0, Lbsh/BshMethod;->cparamTypes:[Ljava/lang/Class;

    iput-object p5, p0, Lbsh/BshMethod;->methodBody:Lbsh/BSHBlock;

    iput-object p6, p0, Lbsh/BshMethod;->declaringNameSpace:Lbsh/NameSpace;

    iput-object p7, p0, Lbsh/BshMethod;->modifiers:Lbsh/Modifiers;

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .registers 11

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lbsh/BshMethod;-><init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Lbsh/BSHBlock;Lbsh/NameSpace;Lbsh/Modifiers;)V

    iput-object p1, p0, Lbsh/BshMethod;->javaMethod:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lbsh/BshMethod;->javaObject:Ljava/lang/Object;

    return-void
.end method

.method private invokeImpl([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    invoke-virtual {p0}, Lbsh/BshMethod;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lbsh/BshMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    if-nez p3, :cond_11

    new-instance p3, Lbsh/CallStack;

    iget-object v0, p0, Lbsh/BshMethod;->declaringNameSpace:Lbsh/NameSpace;

    invoke-direct {p3, v0}, Lbsh/CallStack;-><init>(Lbsh/NameSpace;)V

    :cond_11
    if-nez p1, :cond_16

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/Object;

    :cond_16
    array-length v0, p1

    iget v1, p0, Lbsh/BshMethod;->numArgs:I

    if-eq v0, v1, :cond_36

    new-instance v0, Lbsh/EvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Wrong number of arguments for local method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lbsh/BshMethod;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p4, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :cond_36
    if-eqz p5, :cond_7d

    invoke-virtual {p3}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v0

    :goto_3c
    invoke-virtual {v0, p4}, Lbsh/NameSpace;->setNode(Lbsh/SimpleNode;)V

    const/4 v1, 0x0

    :goto_40
    iget v4, p0, Lbsh/BshMethod;->numArgs:I

    if-lt v1, v4, :cond_8a

    if-nez p5, :cond_49

    invoke-virtual {p3, v0}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    :cond_49
    iget-object v0, p0, Lbsh/BshMethod;->methodBody:Lbsh/BSHBlock;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, p2, v1}, Lbsh/BSHBlock;->eval(Lbsh/CallStack;Lbsh/Interpreter;Z)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3}, Lbsh/CallStack;->copy()Lbsh/CallStack;

    move-result-object v3

    if-nez p5, :cond_59

    invoke-virtual {p3}, Lbsh/CallStack;->pop()Lbsh/NameSpace;

    :cond_59
    const/4 v0, 0x0

    instance-of v4, v1, Lbsh/ReturnControl;

    if-eqz v4, :cond_175

    move-object v0, v1

    check-cast v0, Lbsh/ReturnControl;

    iget v4, v0, Lbsh/ReturnControl;->kind:I

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_132

    check-cast v1, Lbsh/ReturnControl;

    iget-object v1, v1, Lbsh/ReturnControl;->value:Ljava/lang/Object;

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_13c

    sget-object v4, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq v1, v4, :cond_13c

    new-instance v1, Lbsh/EvalError;

    const-string v2, "Cannot return value from void method"

    iget-object v0, v0, Lbsh/ReturnControl;->returnPoint:Lbsh/SimpleNode;

    invoke-direct {v1, v2, v0, v3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1

    :cond_7d
    new-instance v0, Lbsh/NameSpace;

    iget-object v1, p0, Lbsh/BshMethod;->declaringNameSpace:Lbsh/NameSpace;

    iget-object v4, p0, Lbsh/BshMethod;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lbsh/NameSpace;-><init>(Lbsh/NameSpace;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbsh/NameSpace;->isMethod:Z

    goto :goto_3c

    :cond_8a
    aget-object v4, v3, v1

    if-eqz v4, :cond_ee

    :try_start_8e
    aget-object v4, p1, v1

    aget-object v5, v3, v1

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lbsh/Types;->castObject(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p1, v1
    :try_end_99
    .catch Lbsh/UtilEvalError; {:try_start_8e .. :try_end_99} :catch_a8

    :try_start_99
    iget-object v4, p0, Lbsh/BshMethod;->paramNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-object v5, v3, v1

    aget-object v6, p1, v1

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v5, v6, v7}, Lbsh/NameSpace;->setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V
    :try_end_a5
    .catch Lbsh/UtilEvalError; {:try_start_99 .. :try_end_a5} :catch_e6

    :goto_a5
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :catch_a8
    move-exception v0

    new-instance v2, Lbsh/EvalError;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid argument: `"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lbsh/BshMethod;->paramNames:[Ljava/lang/String;

    aget-object v1, v4, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " for method: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lbsh/BshMethod;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lbsh/UtilEvalError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p4, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v2

    :catch_e6
    move-exception v0

    const-string v1, "Typed method parameter assignment"

    invoke-virtual {v0, v1, p4, p3}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0

    :cond_ee
    aget-object v4, p1, v1

    sget-object v5, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne v4, v5, :cond_11d

    new-instance v0, Lbsh/EvalError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Undefined variable or class name, parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lbsh/BshMethod;->paramNames:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " to method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lbsh/BshMethod;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p4, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :cond_11d
    :try_start_11d
    iget-object v4, p0, Lbsh/BshMethod;->paramNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-object v5, p1, v1

    invoke-virtual {p2}, Lbsh/Interpreter;->getStrictJava()Z

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Lbsh/NameSpace;->setLocalVariable(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_12a
    .catch Lbsh/UtilEvalError; {:try_start_11d .. :try_end_12a} :catch_12c

    goto/16 :goto_a5

    :catch_12c
    move-exception v0

    invoke-virtual {v0, p4, p3}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0

    :cond_132
    new-instance v1, Lbsh/EvalError;

    const-string v2, "\'continue\' or \'break\' in method body"

    iget-object v0, v0, Lbsh/ReturnControl;->returnPoint:Lbsh/SimpleNode;

    invoke-direct {v1, v2, v0, v3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1

    :cond_13c
    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_13f
    if-eqz v2, :cond_147

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_148

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    :cond_147
    :goto_147
    return-object v0

    :cond_148
    const/4 v3, 0x1

    :try_start_149
    invoke-static {v0, v2, v3}, Lbsh/Types;->castObject(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;
    :try_end_14c
    .catch Lbsh/UtilEvalError; {:try_start_149 .. :try_end_14c} :catch_14e

    move-result-object v0

    goto :goto_147

    :catch_14e
    move-exception v0

    if-eqz v1, :cond_153

    iget-object p4, v1, Lbsh/ReturnControl;->returnPoint:Lbsh/SimpleNode;

    :cond_153
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Incorrect type returned from method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lbsh/BshMethod;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lbsh/UtilEvalError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p3}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0

    :cond_175
    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_13f
.end method


# virtual methods
.method public getModifiers()Lbsh/Modifiers;
    .registers 2

    iget-object v0, p0, Lbsh/BshMethod;->modifiers:Lbsh/Modifiers;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbsh/BshMethod;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterNames()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbsh/BshMethod;->paramNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lbsh/BshMethod;->cparamTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lbsh/BshMethod;->creturnType:Ljava/lang/Class;

    return-object v0
.end method

.method public hasModifier(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lbsh/BshMethod;->modifiers:Lbsh/Modifiers;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lbsh/BshMethod;->modifiers:Lbsh/Modifiers;

    invoke-virtual {v0, p1}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public invoke([Ljava/lang/Object;Lbsh/Interpreter;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lbsh/BshMethod;->invoke([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lbsh/BshMethod;->invoke([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method invoke([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    :goto_3
    array-length v1, p1

    if-lt v0, v1, :cond_13

    :cond_6
    iget-object v0, p0, Lbsh/BshMethod;->javaMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_48

    :try_start_a
    iget-object v0, p0, Lbsh/BshMethod;->javaMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lbsh/BshMethod;->javaObject:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lbsh/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Lbsh/ReflectError; {:try_start_a .. :try_end_11} :catch_22
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_11} :catch_3c

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    aget-object v1, p1, v0

    if-nez v1, :cond_1f

    new-instance v0, Ljava/lang/Error;

    const-string v1, "HERE!"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catch_22
    move-exception v0

    new-instance v1, Lbsh/EvalError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error invoking Java method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p4, p3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1

    :catch_3c
    move-exception v2

    new-instance v0, Lbsh/TargetError;

    const-string v1, "Exception invoking imported object method."

    const/4 v5, 0x1

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lbsh/TargetError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lbsh/SimpleNode;Lbsh/CallStack;Z)V

    throw v0

    :cond_48
    iget-object v0, p0, Lbsh/BshMethod;->modifiers:Lbsh/Modifiers;

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lbsh/BshMethod;->modifiers:Lbsh/Modifiers;

    const-string v1, "synchronized"

    invoke-virtual {v0, v1}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lbsh/BshMethod;->declaringNameSpace:Lbsh/NameSpace;

    iget-boolean v0, v0, Lbsh/NameSpace;->isClass:Z

    if-eqz v0, :cond_73

    :try_start_5c
    iget-object v0, p0, Lbsh/BshMethod;->declaringNameSpace:Lbsh/NameSpace;

    invoke-virtual {v0}, Lbsh/NameSpace;->getClassInstance()Ljava/lang/Object;
    :try_end_61
    .catch Lbsh/UtilEvalError; {:try_start_5c .. :try_end_61} :catch_6a

    move-result-object v0

    :goto_62
    monitor-enter v0

    :try_start_63
    invoke-direct/range {p0 .. p5}, Lbsh/BshMethod;->invokeImpl([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_7a

    move-object v0, v1

    goto :goto_12

    :catch_6a
    move-exception v0

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "Can\'t get class instance for synchronized method."

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_73
    iget-object v0, p0, Lbsh/BshMethod;->declaringNameSpace:Lbsh/NameSpace;

    invoke-virtual {v0, p2}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    goto :goto_62

    :catchall_7a
    move-exception v1

    :try_start_7b
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v1

    :cond_7d
    invoke-direct/range {p0 .. p5}, Lbsh/BshMethod;->invokeImpl([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_12
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Scripted Method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lbsh/BshMethod;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lbsh/BshMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lbsh/StringUtil;->methodString(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
