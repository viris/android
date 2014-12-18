.class Lbsh/BSHForStatement;
.super Lbsh/SimpleNode;

# interfaces
.implements Lbsh/ParserConstants;


# instance fields
.field private expression:Lbsh/SimpleNode;

.field private forInit:Lbsh/SimpleNode;

.field private forUpdate:Lbsh/SimpleNode;

.field public hasExpression:Z

.field public hasForInit:Z

.field public hasForUpdate:Z

.field private parsed:Z

.field private statement:Lbsh/SimpleNode;


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

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lbsh/BSHForStatement;->hasForInit:Z

    if-eqz v0, :cond_95

    invoke-virtual {p0, v3}, Lbsh/BSHForStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    iput-object v0, p0, Lbsh/BSHForStatement;->forInit:Lbsh/SimpleNode;

    move v0, v2

    :goto_f
    iget-boolean v1, p0, Lbsh/BSHForStatement;->hasExpression:Z

    if-eqz v1, :cond_1e

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Lbsh/BSHForStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    iput-object v0, p0, Lbsh/BSHForStatement;->expression:Lbsh/SimpleNode;

    move v0, v1

    :cond_1e
    iget-boolean v1, p0, Lbsh/BSHForStatement;->hasForUpdate:Z

    if-eqz v1, :cond_2d

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Lbsh/BSHForStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    iput-object v0, p0, Lbsh/BSHForStatement;->forUpdate:Lbsh/SimpleNode;

    move v0, v1

    :cond_2d
    invoke-virtual {p0}, Lbsh/BSHForStatement;->jjtGetNumChildren()I

    move-result v1

    if-ge v0, v1, :cond_3b

    invoke-virtual {p0, v0}, Lbsh/BSHForStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    iput-object v0, p0, Lbsh/BSHForStatement;->statement:Lbsh/SimpleNode;

    :cond_3b
    invoke-virtual {p1}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v5

    new-instance v0, Lbsh/BlockNameSpace;

    invoke-direct {v0, v5}, Lbsh/BlockNameSpace;-><init>(Lbsh/NameSpace;)V

    invoke-virtual {p1, v0}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    iget-boolean v0, p0, Lbsh/BSHForStatement;->hasForInit:Z

    if-eqz v0, :cond_50

    iget-object v0, p0, Lbsh/BSHForStatement;->forInit:Lbsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    :cond_50
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    move-object v4, v0

    :goto_53
    iget-boolean v0, p0, Lbsh/BSHForStatement;->hasExpression:Z

    if-eqz v0, :cond_63

    iget-object v0, p0, Lbsh/BSHForStatement;->expression:Lbsh/SimpleNode;

    invoke-static {v0, p1, p2}, Lbsh/BSHIfStatement;->evaluateCondition(Lbsh/SimpleNode;Lbsh/CallStack;Lbsh/Interpreter;)Z

    move-result v0

    if-nez v0, :cond_63

    :goto_5f
    invoke-virtual {p1, v5}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    return-object v4

    :cond_63
    iget-object v0, p0, Lbsh/BSHForStatement;->statement:Lbsh/SimpleNode;

    if-eqz v0, :cond_79

    iget-object v0, p0, Lbsh/BSHForStatement;->statement:Lbsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Lbsh/ReturnControl;

    if-eqz v0, :cond_79

    move-object v0, v1

    check-cast v0, Lbsh/ReturnControl;

    iget v0, v0, Lbsh/ReturnControl;->kind:I

    sparse-switch v0, :sswitch_data_98

    :cond_79
    move v1, v3

    move-object v0, v4

    :goto_7b
    if-eqz v1, :cond_88

    move-object v4, v0

    goto :goto_5f

    :sswitch_7f
    move-object v0, v1

    move v1, v2

    goto :goto_7b

    :sswitch_82
    move v1, v3

    move-object v0, v4

    goto :goto_7b

    :sswitch_85
    move v1, v2

    move-object v0, v4

    goto :goto_7b

    :cond_88
    iget-boolean v1, p0, Lbsh/BSHForStatement;->hasForUpdate:Z

    if-eqz v1, :cond_93

    iget-object v1, p0, Lbsh/BSHForStatement;->forUpdate:Lbsh/SimpleNode;

    invoke-virtual {v1, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-object v4, v0

    goto :goto_53

    :cond_93
    move-object v4, v0

    goto :goto_53

    :cond_95
    move v0, v3

    goto/16 :goto_f

    :sswitch_data_98
    .sparse-switch
        0xc -> :sswitch_85
        0x13 -> :sswitch_82
        0x2e -> :sswitch_7f
    .end sparse-switch
.end method
