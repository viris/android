.class Lbsh/BSHReturnStatement;
.super Lbsh/SimpleNode;

# interfaces
.implements Lbsh/ParserConstants;


# instance fields
.field public kind:I


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

    invoke-virtual {p0}, Lbsh/BSHReturnStatement;->jjtGetNumChildren()I

    move-result v0

    if-lez v0, :cond_19

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHReturnStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    :goto_11
    new-instance v1, Lbsh/ReturnControl;

    iget v2, p0, Lbsh/BSHReturnStatement;->kind:I

    invoke-direct {v1, v2, v0, p0}, Lbsh/ReturnControl;-><init>(ILjava/lang/Object;Lbsh/SimpleNode;)V

    return-object v1

    :cond_19
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    goto :goto_11
.end method
