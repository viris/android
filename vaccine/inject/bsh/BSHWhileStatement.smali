.class Lbsh/BSHWhileStatement;
.super Lbsh/SimpleNode;

# interfaces
.implements Lbsh/ParserConstants;


# instance fields
.field public isDoStatement:Z


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lbsh/BSHWhileStatement;->jjtGetNumChildren()I

    move-result v2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lbsh/BSHWhileStatement;->isDoStatement:Z

    if-eqz v0, :cond_27

    invoke-virtual {p0, v4}, Lbsh/BSHWhileStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    invoke-virtual {p0, v5}, Lbsh/BSHWhileStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/SimpleNode;

    move-object v2, v1

    move-object v3, v0

    :goto_19
    iget-boolean v0, p0, Lbsh/BSHWhileStatement;->isDoStatement:Z

    move v6, v0

    :cond_1c
    :goto_1c
    :sswitch_1c
    if-nez v6, :cond_38

    invoke-static {v3, p1, p2}, Lbsh/BSHIfStatement;->evaluateCondition(Lbsh/SimpleNode;Lbsh/CallStack;Lbsh/Interpreter;)Z

    move-result v0

    if-nez v0, :cond_38

    :cond_24
    sget-object v1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    :sswitch_26
    return-object v1

    :cond_27
    invoke-virtual {p0, v5}, Lbsh/BSHWhileStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    if-le v2, v4, :cond_51

    invoke-virtual {p0, v4}, Lbsh/BSHWhileStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/SimpleNode;

    move-object v2, v1

    move-object v3, v0

    goto :goto_19

    :cond_38
    if-eqz v2, :cond_1c

    invoke-virtual {v2, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Lbsh/ReturnControl;

    if-eqz v0, :cond_4a

    move-object v0, v1

    check-cast v0, Lbsh/ReturnControl;

    iget v0, v0, Lbsh/ReturnControl;->kind:I

    sparse-switch v0, :sswitch_data_54

    :cond_4a
    move v0, v5

    :goto_4b
    if-nez v0, :cond_24

    move v6, v5

    goto :goto_1c

    :sswitch_4f
    move v0, v4

    goto :goto_4b

    :cond_51
    move-object v2, v1

    move-object v3, v0

    goto :goto_19

    :sswitch_data_54
    .sparse-switch
        0xc -> :sswitch_4f
        0x13 -> :sswitch_1c
        0x2e -> :sswitch_26
    .end sparse-switch
.end method
