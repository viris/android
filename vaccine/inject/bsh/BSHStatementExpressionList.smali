.class Lbsh/BSHStatementExpressionList;
.super Lbsh/SimpleNode;


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

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

    invoke-virtual {p0}, Lbsh/BSHStatementExpressionList;->jjtGetNumChildren()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-lt v1, v2, :cond_b

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-object v0

    :cond_b
    invoke-virtual {p0, v1}, Lbsh/BSHStatementExpressionList;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6
.end method
