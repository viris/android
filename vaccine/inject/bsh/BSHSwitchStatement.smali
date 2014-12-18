.class Lbsh/BSHSwitchStatement;
.super Lbsh/SimpleNode;

# interfaces
.implements Lbsh/ParserConstants;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method private primitiveEquals(Ljava/lang/Object;Ljava/lang/Object;Lbsh/CallStack;Lbsh/SimpleNode;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    instance-of v0, p1, Lbsh/Primitive;

    if-nez v0, :cond_8

    instance-of v0, p2, Lbsh/Primitive;

    if-eqz v0, :cond_3c

    :cond_8
    const/16 v0, 0x5a

    :try_start_a
    invoke-static {p1, p2, v0}, Lbsh/Primitive;->binaryOperation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_17
    .catch Lbsh/UtilEvalError; {:try_start_a .. :try_end_17} :catch_19

    move-result v0

    :goto_18
    return v0

    :catch_19
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Switch value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p4}, Lbsh/SimpleNode;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p3}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0

    :cond_3c
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_18
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    invoke-virtual {p0}, Lbsh/BSHSwitchStatement;->jjtGetNumChildren()I

    move-result v5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0}, Lbsh/BSHSwitchStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v6

    const/4 v2, 0x0

    if-lt v1, v5, :cond_1b

    new-instance v0, Lbsh/EvalError;

    const-string v1, "Empty switch statement."

    invoke-direct {v0, v1, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :cond_1b
    const/4 v3, 0x2

    invoke-virtual {p0, v1}, Lbsh/BSHSwitchStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/BSHSwitchLabel;

    move-object v4, v1

    move v1, v3

    :cond_24
    :goto_24
    if-ge v1, v5, :cond_28

    if-eqz v2, :cond_32

    :cond_28
    if-eqz v2, :cond_70

    iget v0, v2, Lbsh/ReturnControl;->kind:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_70

    move-object v0, v2

    :goto_31
    return-object v0

    :cond_32
    iget-boolean v3, v4, Lbsh/BSHSwitchLabel;->isDefault:Z

    if-nez v3, :cond_40

    invoke-virtual {v4, p1, p2}, Lbsh/BSHSwitchLabel;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v6, v3, p1, v0}, Lbsh/BSHSwitchStatement;->primitiveEquals(Ljava/lang/Object;Ljava/lang/Object;Lbsh/CallStack;Lbsh/SimpleNode;)Z

    move-result v3

    if-eqz v3, :cond_6d

    :cond_40
    :goto_40
    if-ge v1, v5, :cond_24

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Lbsh/BSHSwitchStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    instance-of v7, v1, Lbsh/BSHSwitchLabel;

    if-eqz v7, :cond_4e

    move v1, v3

    goto :goto_40

    :cond_4e
    check-cast v1, Lbsh/SimpleNode;

    invoke-virtual {v1, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v1

    instance-of v7, v1, Lbsh/ReturnControl;

    if-eqz v7, :cond_73

    check-cast v1, Lbsh/ReturnControl;

    move-object v2, v1

    move v1, v3

    goto :goto_24

    :cond_5d
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Lbsh/BSHSwitchStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    instance-of v7, v1, Lbsh/BSHSwitchLabel;

    if-eqz v7, :cond_6c

    check-cast v1, Lbsh/BSHSwitchLabel;

    move-object v4, v1

    move v1, v3

    goto :goto_24

    :cond_6c
    move v1, v3

    :cond_6d
    if-lt v1, v5, :cond_5d

    goto :goto_24

    :cond_70
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    goto :goto_31

    :cond_73
    move v1, v3

    goto :goto_40
.end method
