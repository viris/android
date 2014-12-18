.class Lbsh/BSHMethodDeclaration;
.super Lbsh/SimpleNode;


# instance fields
.field blockNode:Lbsh/BSHBlock;

.field firstThrowsClause:I

.field public modifiers:Lbsh/Modifiers;

.field public name:Ljava/lang/String;

.field numThrows:I

.field paramsNode:Lbsh/BSHFormalParameters;

.field returnType:Ljava/lang/Class;

.field returnTypeNode:Lbsh/BSHReturnType;


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lbsh/BSHMethodDeclaration;->numThrows:I

    return-void
.end method

.method private evalNodes(Lbsh/CallStack;Lbsh/Interpreter;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lbsh/BSHMethodDeclaration;->insureNodesParsed()V

    iget v0, p0, Lbsh/BSHMethodDeclaration;->firstThrowsClause:I

    move v1, v0

    :goto_7
    iget v0, p0, Lbsh/BSHMethodDeclaration;->numThrows:I

    iget v2, p0, Lbsh/BSHMethodDeclaration;->firstThrowsClause:I

    add-int/2addr v0, v2

    if-lt v1, v0, :cond_40

    iget-object v0, p0, Lbsh/BSHMethodDeclaration;->paramsNode:Lbsh/BSHFormalParameters;

    invoke-virtual {v0, p1, p2}, Lbsh/BSHFormalParameters;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    invoke-virtual {p2}, Lbsh/Interpreter;->getStrictJava()Z

    move-result v0

    if-eqz v0, :cond_85

    const/4 v0, 0x0

    :goto_1a
    iget-object v1, p0, Lbsh/BSHMethodDeclaration;->paramsNode:Lbsh/BSHFormalParameters;

    iget-object v1, v1, Lbsh/BSHFormalParameters;->paramTypes:[Ljava/lang/Class;

    array-length v1, v1

    if-lt v0, v1, :cond_4d

    iget-object v0, p0, Lbsh/BSHMethodDeclaration;->returnType:Ljava/lang/Class;

    if-nez v0, :cond_85

    new-instance v0, Lbsh/EvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "(Strict Java Mode) Undeclared return type for method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lbsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v4}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :cond_40
    invoke-virtual {p0, v1}, Lbsh/BSHMethodDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHAmbiguousName;

    invoke-virtual {v0, p1, p2}, Lbsh/BSHAmbiguousName;->toClass(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_4d
    iget-object v1, p0, Lbsh/BSHMethodDeclaration;->paramsNode:Lbsh/BSHFormalParameters;

    iget-object v1, v1, Lbsh/BSHFormalParameters;->paramTypes:[Ljava/lang/Class;

    aget-object v1, v1, v0

    if-nez v1, :cond_82

    new-instance v1, Lbsh/EvalError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "(Strict Java Mode) Undeclared argument type, parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lbsh/BSHMethodDeclaration;->paramsNode:Lbsh/BSHFormalParameters;

    invoke-virtual {v3}, Lbsh/BSHFormalParameters;->getParamNames()[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " in method: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lbsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v4}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1

    :cond_82
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_85
    return-void
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lbsh/BSHMethodDeclaration;->evalReturnType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lbsh/BSHMethodDeclaration;->returnType:Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Lbsh/BSHMethodDeclaration;->evalNodes(Lbsh/CallStack;Lbsh/Interpreter;)V

    invoke-virtual {p1}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v0

    new-instance v1, Lbsh/BshMethod;

    iget-object v2, p0, Lbsh/BSHMethodDeclaration;->modifiers:Lbsh/Modifiers;

    invoke-direct {v1, p0, v0, v2}, Lbsh/BshMethod;-><init>(Lbsh/BSHMethodDeclaration;Lbsh/NameSpace;Lbsh/Modifiers;)V

    :try_start_14
    iget-object v2, p0, Lbsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lbsh/NameSpace;->setMethod(Ljava/lang/String;Lbsh/BshMethod;)V
    :try_end_19
    .catch Lbsh/UtilEvalError; {:try_start_14 .. :try_end_19} :catch_1c

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-object v0

    :catch_1c
    move-exception v0

    invoke-virtual {v0, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0
.end method

.method evalReturnType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    invoke-virtual {p0}, Lbsh/BSHMethodDeclaration;->insureNodesParsed()V

    iget-object v0, p0, Lbsh/BSHMethodDeclaration;->returnTypeNode:Lbsh/BSHReturnType;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lbsh/BSHMethodDeclaration;->returnTypeNode:Lbsh/BSHReturnType;

    invoke-virtual {v0, p1, p2}, Lbsh/BSHReturnType;->evalReturnType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method getReturnTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lbsh/BSHMethodDeclaration;->insureNodesParsed()V

    iget-object v0, p0, Lbsh/BSHMethodDeclaration;->returnTypeNode:Lbsh/BSHReturnType;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lbsh/BSHMethodDeclaration;->returnTypeNode:Lbsh/BSHReturnType;

    invoke-virtual {v0, p1, p2, p3}, Lbsh/BSHReturnType;->getTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method getReturnTypeNode()Lbsh/BSHReturnType;
    .registers 2

    invoke-virtual {p0}, Lbsh/BSHMethodDeclaration;->insureNodesParsed()V

    iget-object v0, p0, Lbsh/BSHMethodDeclaration;->returnTypeNode:Lbsh/BSHReturnType;

    return-object v0
.end method

.method declared-synchronized insureNodesParsed()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lbsh/BSHMethodDeclaration;->paramsNode:Lbsh/BSHFormalParameters;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3d

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {p0, v0}, Lbsh/BSHMethodDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, p0, Lbsh/BSHMethodDeclaration;->firstThrowsClause:I

    instance-of v1, v0, Lbsh/BSHReturnType;

    if-eqz v1, :cond_40

    check-cast v0, Lbsh/BSHReturnType;

    iput-object v0, p0, Lbsh/BSHMethodDeclaration;->returnTypeNode:Lbsh/BSHReturnType;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbsh/BSHMethodDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHFormalParameters;

    iput-object v0, p0, Lbsh/BSHMethodDeclaration;->paramsNode:Lbsh/BSHFormalParameters;

    invoke-virtual {p0}, Lbsh/BSHMethodDeclaration;->jjtGetNumChildren()I

    move-result v0

    iget v1, p0, Lbsh/BSHMethodDeclaration;->numThrows:I

    add-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_36

    iget v0, p0, Lbsh/BSHMethodDeclaration;->numThrows:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lbsh/BSHMethodDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHBlock;

    iput-object v0, p0, Lbsh/BSHMethodDeclaration;->blockNode:Lbsh/BSHBlock;

    :cond_36
    iget v0, p0, Lbsh/BSHMethodDeclaration;->firstThrowsClause:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/BSHMethodDeclaration;->firstThrowsClause:I
    :try_end_3c
    .catchall {:try_start_8 .. :try_end_3c} :catchall_3d

    goto :goto_5

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_40
    const/4 v0, 0x0

    :try_start_41
    invoke-virtual {p0, v0}, Lbsh/BSHMethodDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHFormalParameters;

    iput-object v0, p0, Lbsh/BSHMethodDeclaration;->paramsNode:Lbsh/BSHFormalParameters;

    iget v0, p0, Lbsh/BSHMethodDeclaration;->numThrows:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lbsh/BSHMethodDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHBlock;

    iput-object v0, p0, Lbsh/BSHMethodDeclaration;->blockNode:Lbsh/BSHBlock;
    :try_end_55
    .catchall {:try_start_41 .. :try_end_55} :catchall_3d

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "MethodDeclaration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lbsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
