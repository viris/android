.class Lbsh/BSHIfStatement;
.super Lbsh/SimpleNode;


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method public static evaluateCondition(Lbsh/SimpleNode;Lbsh/CallStack;Lbsh/Interpreter;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lbsh/Primitive;

    if-eqz v1, :cond_1a

    sget-object v1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne v0, v1, :cond_14

    new-instance v0, Lbsh/EvalError;

    const-string v1, "Condition evaluates to void type"

    invoke-direct {v0, v1, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :cond_14
    check-cast v0, Lbsh/Primitive;

    invoke-virtual {v0}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    :cond_1a
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_25

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_25
    new-instance v0, Lbsh/EvalError;

    const-string v1, "Condition must evaluate to a Boolean or boolean."

    invoke-direct {v0, v1, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHIfStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    invoke-static {v0, p1, p2}, Lbsh/BSHIfStatement;->evaluateCondition(Lbsh/SimpleNode;Lbsh/CallStack;Lbsh/Interpreter;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbsh/BSHIfStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    :goto_1a
    instance-of v1, v0, Lbsh/ReturnControl;

    if-eqz v1, :cond_30

    :goto_1e
    return-object v0

    :cond_1f
    invoke-virtual {p0}, Lbsh/BSHIfStatement;->jjtGetNumChildren()I

    move-result v0

    if-le v0, v2, :cond_33

    invoke-virtual {p0, v2}, Lbsh/BSHIfStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1a

    :cond_30
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    goto :goto_1e

    :cond_33
    move-object v0, v1

    goto :goto_1a
.end method
