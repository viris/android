.class Lbsh/BSHUnaryExpression;
.super Lbsh/SimpleNode;

# interfaces
.implements Lbsh/ParserConstants;


# instance fields
.field public kind:I

.field public postfix:Z


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsh/BSHUnaryExpression;->postfix:Z

    return-void
.end method

.method private lhsUnaryOperation(Lbsh/LHS;Z)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "lhsUnaryOperation"

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1}, Lbsh/LHS;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lbsh/BSHUnaryExpression;->kind:I

    invoke-direct {p0, v0, v1}, Lbsh/BSHUnaryExpression;->unaryOperation(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, p0, Lbsh/BSHUnaryExpression;->postfix:Z

    if-eqz v2, :cond_1b

    :goto_17
    invoke-virtual {p1, v1, p2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    return-object v0

    :cond_1b
    move-object v0, v1

    goto :goto_17
.end method

.method private primitiveWrapperUnaryOperation(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Lbsh/Primitive;->promoteToInteger(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_19

    new-instance v1, Ljava/lang/Boolean;

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0, p2}, Lbsh/Primitive;->booleanUnaryOperation(Ljava/lang/Boolean;I)Z

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v1

    :goto_18
    return-object v0

    :cond_19
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_52

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0, p2}, Lbsh/Primitive;->intUnaryOperation(Ljava/lang/Integer;I)I

    move-result v2

    const/16 v0, 0x64

    if-eq p2, v0, :cond_2b

    const/16 v0, 0x65

    if-ne p2, v0, :cond_4c

    :cond_2b
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_36

    new-instance v0, Ljava/lang/Byte;

    int-to-byte v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    goto :goto_18

    :cond_36
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_41

    new-instance v0, Ljava/lang/Short;

    int-to-short v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    goto :goto_18

    :cond_41
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_4c

    new-instance v0, Ljava/lang/Character;

    int-to-char v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    goto :goto_18

    :cond_4c
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_18

    :cond_52
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_63

    new-instance v1, Ljava/lang/Long;

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0, p2}, Lbsh/Primitive;->longUnaryOperation(Ljava/lang/Long;I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    move-object v0, v1

    goto :goto_18

    :cond_63
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_74

    new-instance v1, Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    invoke-static {v0, p2}, Lbsh/Primitive;->floatUnaryOperation(Ljava/lang/Float;I)F

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Float;-><init>(F)V

    move-object v0, v1

    goto :goto_18

    :cond_74
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_85

    new-instance v1, Ljava/lang/Double;

    check-cast v0, Ljava/lang/Double;

    invoke-static {v0, p2}, Lbsh/Primitive;->doubleUnaryOperation(Ljava/lang/Double;I)D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    move-object v0, v1

    goto :goto_18

    :cond_85
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "An error occurred.  Please call technical support."

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private unaryOperation(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_c

    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_c

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_11

    :cond_c
    invoke-direct {p0, p1, p2}, Lbsh/BSHUnaryExpression;->primitiveWrapperUnaryOperation(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    instance-of v0, p1, Lbsh/Primitive;

    if-nez v0, :cond_38

    new-instance v0, Lbsh/UtilEvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unary operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lbsh/ParserConstants;->tokenImage:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " inappropriate for object"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    check-cast p1, Lbsh/Primitive;

    invoke-static {p1, p2}, Lbsh/Primitive;->unaryOperation(Lbsh/Primitive;I)Lbsh/Primitive;

    move-result-object v0

    goto :goto_10
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHUnaryExpression;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    :try_start_7
    iget v1, p0, Lbsh/BSHUnaryExpression;->kind:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_13

    iget v1, p0, Lbsh/BSHUnaryExpression;->kind:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_22

    :cond_13
    check-cast v0, Lbsh/BSHPrimaryExpression;

    invoke-virtual {v0, p1, p2}, Lbsh/BSHPrimaryExpression;->toLHS(Lbsh/CallStack;Lbsh/Interpreter;)Lbsh/LHS;

    move-result-object v0

    invoke-virtual {p2}, Lbsh/Interpreter;->getStrictJava()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lbsh/BSHUnaryExpression;->lhsUnaryOperation(Lbsh/LHS;Z)Ljava/lang/Object;

    move-result-object v0

    :goto_21
    return-object v0

    :cond_22
    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lbsh/BSHUnaryExpression;->kind:I

    invoke-direct {p0, v0, v1}, Lbsh/BSHUnaryExpression;->unaryOperation(Ljava/lang/Object;I)Ljava/lang/Object;
    :try_end_2b
    .catch Lbsh/UtilEvalError; {:try_start_7 .. :try_end_2b} :catch_2d

    move-result-object v0

    goto :goto_21

    :catch_2d
    move-exception v0

    invoke-virtual {v0, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0
.end method
