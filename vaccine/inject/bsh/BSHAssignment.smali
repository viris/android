.class Lbsh/BSHAssignment;
.super Lbsh/SimpleNode;

# interfaces
.implements Lbsh/ParserConstants;


# instance fields
.field public operator:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method private operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_28

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq p2, v0, :cond_28

    const/16 v0, 0x66

    if-eq p3, v0, :cond_14

    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Use of non + operator with String LHS"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_27
    return-object v0

    :cond_28
    instance-of v0, p1, Lbsh/Primitive;

    if-nez v0, :cond_30

    instance-of v0, p2, Lbsh/Primitive;

    if-eqz v0, :cond_50

    :cond_30
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq p1, v0, :cond_38

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p2, v0, :cond_40

    :cond_38
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Illegal use of undefined object or \'void\' literal"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-eq p1, v0, :cond_48

    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne p2, v0, :cond_50

    :cond_48
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Illegal use of null object or \'null\' literal"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_60

    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_60

    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_60

    instance-of v0, p1, Lbsh/Primitive;

    if-eqz v0, :cond_75

    :cond_60
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_70

    instance-of v0, p2, Ljava/lang/Character;

    if-nez v0, :cond_70

    instance-of v0, p2, Ljava/lang/Number;

    if-nez v0, :cond_70

    instance-of v0, p2, Lbsh/Primitive;

    if-eqz v0, :cond_75

    :cond_70
    invoke-static {p1, p2, p3}, Lbsh/Primitive;->binaryOperation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_27

    :cond_75
    new-instance v0, Lbsh/UtilEvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Non primitive value in operator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lbsh/ParserConstants;->tokenImage:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHAssignment;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHPrimaryExpression;

    if-nez v0, :cond_11

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "Error, null LHSnode"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {p2}, Lbsh/Interpreter;->getStrictJava()Z

    move-result v2

    invoke-virtual {v0, p1, p2}, Lbsh/BSHPrimaryExpression;->toLHS(Lbsh/CallStack;Lbsh/Interpreter;)Lbsh/LHS;

    move-result-object v3

    if-nez v3, :cond_23

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "Error, null LHS"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    const/4 v0, 0x0

    iget v1, p0, Lbsh/BSHAssignment;->operator:I

    const/16 v4, 0x51

    if-eq v1, v4, :cond_dd

    :try_start_2a
    invoke-virtual {v3}, Lbsh/LHS;->getValue()Ljava/lang/Object;
    :try_end_2d
    .catch Lbsh/UtilEvalError; {:try_start_2a .. :try_end_2d} :catch_46

    move-result-object v0

    move-object v1, v0

    :goto_2f
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbsh/BSHAssignment;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne v0, v4, :cond_4c

    new-instance v0, Lbsh/EvalError;

    const-string v1, "Void assignment."

    invoke-direct {v0, v1, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :catch_46
    move-exception v0

    invoke-virtual {v0, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0

    :cond_4c
    :try_start_4c
    iget v4, p0, Lbsh/BSHAssignment;->operator:I

    sparse-switch v4, :sswitch_data_e0

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "unimplemented operator in assignment BSH"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_59
    .catch Lbsh/UtilEvalError; {:try_start_4c .. :try_end_59} :catch_59

    :catch_59
    move-exception v0

    invoke-virtual {v0, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0

    :sswitch_5f
    :try_start_5f
    invoke-virtual {v3, v0, v2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    :goto_63
    return-object v0

    :sswitch_64
    const/16 v4, 0x66

    invoke-direct {p0, v1, v0, v4}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_63

    :sswitch_6f
    const/16 v4, 0x67

    invoke-direct {p0, v1, v0, v4}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_63

    :sswitch_7a
    const/16 v4, 0x68

    invoke-direct {p0, v1, v0, v4}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_63

    :sswitch_85
    const/16 v4, 0x69

    invoke-direct {p0, v1, v0, v4}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_63

    :sswitch_90
    const/16 v4, 0x6a

    invoke-direct {p0, v1, v0, v4}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_63

    :sswitch_9b
    const/16 v4, 0x6c

    invoke-direct {p0, v1, v0, v4}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_63

    :sswitch_a6
    const/16 v4, 0x6e

    invoke-direct {p0, v1, v0, v4}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_63

    :sswitch_b1
    const/16 v4, 0x6f

    invoke-direct {p0, v1, v0, v4}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_63

    :sswitch_bc
    const/16 v4, 0x70

    invoke-direct {p0, v1, v0, v4}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_63

    :sswitch_c7
    const/16 v4, 0x72

    invoke-direct {p0, v1, v0, v4}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_63

    :sswitch_d2
    const/16 v4, 0x74

    invoke-direct {p0, v1, v0, v4}, Lbsh/BSHAssignment;->operation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;
    :try_end_db
    .catch Lbsh/UtilEvalError; {:try_start_5f .. :try_end_db} :catch_59

    move-result-object v0

    goto :goto_63

    :cond_dd
    move-object v1, v0

    goto/16 :goto_2f

    :sswitch_data_e0
    .sparse-switch
        0x51 -> :sswitch_5f
        0x76 -> :sswitch_64
        0x77 -> :sswitch_6f
        0x78 -> :sswitch_7a
        0x79 -> :sswitch_85
        0x7a -> :sswitch_90
        0x7b -> :sswitch_90
        0x7c -> :sswitch_9b
        0x7d -> :sswitch_9b
        0x7e -> :sswitch_a6
        0x7f -> :sswitch_b1
        0x80 -> :sswitch_bc
        0x81 -> :sswitch_bc
        0x82 -> :sswitch_c7
        0x83 -> :sswitch_c7
        0x84 -> :sswitch_d2
        0x85 -> :sswitch_d2
    .end sparse-switch
.end method
