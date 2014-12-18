.class Lbsh/BSHPrimaryExpression;
.super Lbsh/SimpleNode;


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method private eval(ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHPrimaryExpression;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    invoke-virtual {p0}, Lbsh/BSHPrimaryExpression;->jjtGetNumChildren()I

    move-result v3

    const/4 v0, 0x1

    move v2, v0

    :goto_b
    if-lt v2, v3, :cond_25

    instance-of v0, v1, Lbsh/SimpleNode;

    if-eqz v0, :cond_58

    instance-of v0, v1, Lbsh/BSHAmbiguousName;

    if-eqz v0, :cond_3a

    if-eqz p1, :cond_33

    move-object v0, v1

    check-cast v0, Lbsh/BSHAmbiguousName;

    invoke-virtual {v0, p2, p3}, Lbsh/BSHAmbiguousName;->toLHS(Lbsh/CallStack;Lbsh/Interpreter;)Lbsh/LHS;

    move-result-object v0

    :goto_1e
    instance-of v1, v0, Lbsh/LHS;

    if-eqz v1, :cond_24

    if-eqz p1, :cond_4b

    :cond_24
    :goto_24
    return-object v0

    :cond_25
    invoke-virtual {p0, v2}, Lbsh/BSHPrimaryExpression;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHPrimarySuffix;

    invoke-virtual {v0, v1, p1, p2, p3}, Lbsh/BSHPrimarySuffix;->doSuffix(Ljava/lang/Object;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    :cond_33
    check-cast v1, Lbsh/BSHAmbiguousName;

    invoke-virtual {v1, p2, p3}, Lbsh/BSHAmbiguousName;->toObject(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1e

    :cond_3a
    if-eqz p1, :cond_44

    new-instance v0, Lbsh/EvalError;

    const-string v1, "Can\'t assign to prefix."

    invoke-direct {v0, v1, p0, p2}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :cond_44
    check-cast v1, Lbsh/SimpleNode;

    invoke-virtual {v1, p2, p3}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1e

    :cond_4b
    :try_start_4b
    check-cast v0, Lbsh/LHS;

    invoke-virtual {v0}, Lbsh/LHS;->getValue()Ljava/lang/Object;
    :try_end_50
    .catch Lbsh/UtilEvalError; {:try_start_4b .. :try_end_50} :catch_52

    move-result-object v0

    goto :goto_24

    :catch_52
    move-exception v0

    invoke-virtual {v0, p0, p2}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0

    :cond_58
    move-object v0, v1

    goto :goto_1e
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lbsh/BSHPrimaryExpression;->eval(ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toLHS(Lbsh/CallStack;Lbsh/Interpreter;)Lbsh/LHS;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lbsh/BSHPrimaryExpression;->eval(ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lbsh/LHS;

    if-nez v1, :cond_11

    new-instance v0, Lbsh/EvalError;

    const-string v1, "Can\'t assign to:"

    invoke-direct {v0, v1, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :cond_11
    check-cast v0, Lbsh/LHS;

    return-object v0
.end method
