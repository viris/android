.class Lbsh/BSHEnhancedForStatement;
.super Lbsh/SimpleNode;

# interfaces
.implements Lbsh/ParserConstants;


# instance fields
.field varName:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v7

    invoke-virtual {p0, v6}, Lbsh/BSHEnhancedForStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    invoke-virtual {p0}, Lbsh/BSHEnhancedForStatement;->jjtGetNumChildren()I

    move-result v1

    instance-of v3, v0, Lbsh/BSHType;

    if-eqz v3, :cond_43

    check-cast v0, Lbsh/BSHType;

    invoke-virtual {v0, p1, p2}, Lbsh/BSHType;->getType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v5}, Lbsh/BSHEnhancedForStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    if-le v1, v4, :cond_2b

    invoke-virtual {p0, v4}, Lbsh/BSHEnhancedForStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/SimpleNode;

    move-object v2, v1

    :cond_2b
    :goto_2b
    new-instance v8, Lbsh/BlockNameSpace;

    invoke-direct {v8, v7}, Lbsh/BlockNameSpace;-><init>(Lbsh/NameSpace;)V

    invoke-virtual {p1, v8}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne v0, v1, :cond_4e

    new-instance v0, Lbsh/EvalError;

    const-string v1, "The collection, array, map, iterator, or enumeration portion of a for statement cannot be null."

    invoke-direct {v0, v1, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :cond_43
    if-le v1, v5, :cond_de

    invoke-virtual {p0, v5}, Lbsh/BSHEnhancedForStatement;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/SimpleNode;

    move-object v3, v2

    move-object v2, v1

    goto :goto_2b

    :cond_4e
    invoke-static {}, Lbsh/CollectionManager;->getCollectionManager()Lbsh/CollectionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbsh/CollectionManager;->isBshIterable(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_75

    new-instance v1, Lbsh/EvalError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Can\'t iterate over type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1

    :cond_75
    invoke-virtual {v1, v0}, Lbsh/CollectionManager;->getBshIterator(Ljava/lang/Object;)Lbsh/BshIterator;

    move-result-object v9

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    move-object v4, v0

    :goto_7c
    invoke-interface {v9}, Lbsh/BshIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_87

    move-object v0, v4

    :cond_83
    invoke-virtual {p1, v7}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    return-object v0

    :cond_87
    if-eqz v3, :cond_af

    :try_start_89
    iget-object v0, p0, Lbsh/BSHEnhancedForStatement;->varName:Ljava/lang/String;

    invoke-interface {v9}, Lbsh/BshIterator;->next()Ljava/lang/Object;

    move-result-object v1

    new-instance v10, Lbsh/Modifiers;

    invoke-direct {v10}, Lbsh/Modifiers;-><init>()V

    invoke-virtual {v8, v0, v3, v1, v10}, Lbsh/BlockNameSpace;->setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V
    :try_end_97
    .catch Lbsh/UtilEvalError; {:try_start_89 .. :try_end_97} :catch_ba

    :goto_97
    if-eqz v2, :cond_a9

    invoke-virtual {v2, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Lbsh/ReturnControl;

    if-eqz v0, :cond_a9

    move-object v0, v1

    check-cast v0, Lbsh/ReturnControl;

    iget v0, v0, Lbsh/ReturnControl;->kind:I

    sparse-switch v0, :sswitch_data_e2

    :cond_a9
    move v1, v6

    move-object v0, v4

    :goto_ab
    if-nez v1, :cond_83

    move-object v4, v0

    goto :goto_7c

    :cond_af
    :try_start_af
    iget-object v0, p0, Lbsh/BSHEnhancedForStatement;->varName:Ljava/lang/String;

    invoke-interface {v9}, Lbsh/BshIterator;->next()Ljava/lang/Object;

    move-result-object v1

    const/4 v10, 0x0

    invoke-virtual {v8, v0, v1, v10}, Lbsh/BlockNameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_b9
    .catch Lbsh/UtilEvalError; {:try_start_af .. :try_end_b9} :catch_ba

    goto :goto_97

    :catch_ba
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "for loop iterator variable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lbsh/BSHEnhancedForStatement;->varName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0

    :sswitch_d5
    move-object v0, v1

    move v1, v5

    goto :goto_ab

    :sswitch_d8
    move v1, v6

    move-object v0, v4

    goto :goto_ab

    :sswitch_db
    move v1, v5

    move-object v0, v4

    goto :goto_ab

    :cond_de
    move-object v3, v2

    goto/16 :goto_2b

    nop

    :sswitch_data_e2
    .sparse-switch
        0xc -> :sswitch_db
        0x13 -> :sswitch_d8
        0x2e -> :sswitch_d5
    .end sparse-switch
.end method
