.class Lbsh/BSHArrayDimensions;
.super Lbsh/SimpleNode;


# instance fields
.field public baseType:Ljava/lang/Class;

.field public definedDimensions:[I

.field public numDefinedDims:I

.field public numUndefinedDims:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public addDefinedDimension()V
    .registers 2

    iget v0, p0, Lbsh/BSHArrayDimensions;->numDefinedDims:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/BSHArrayDimensions;->numDefinedDims:I

    return-void
.end method

.method public addUndefinedDimension()V
    .registers 2

    iget v0, p0, Lbsh/BSHArrayDimensions;->numUndefinedDims:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/BSHArrayDimensions;->numUndefinedDims:I

    return-void
.end method

.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lbsh/BSHArrayDimensions;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    instance-of v2, v0, Lbsh/BSHArrayInitializer;

    if-eqz v2, :cond_7c

    iget-object v2, p0, Lbsh/BSHArrayDimensions;->baseType:Ljava/lang/Class;

    if-nez v2, :cond_17

    new-instance v0, Lbsh/EvalError;

    const-string v1, "Internal Array Eval err:  unknown base type"

    invoke-direct {v0, v1, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :cond_17
    check-cast v0, Lbsh/BSHArrayInitializer;

    iget-object v2, p0, Lbsh/BSHArrayDimensions;->baseType:Ljava/lang/Class;

    iget v3, p0, Lbsh/BSHArrayDimensions;->numUndefinedDims:I

    invoke-virtual {v0, v2, v3, p1, p2}, Lbsh/BSHArrayInitializer;->eval(Ljava/lang/Class;ILbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lbsh/Reflect;->getArrayDimensions(Ljava/lang/Class;)I

    move-result v0

    new-array v2, v0, [I

    iput-object v2, p0, Lbsh/BSHArrayDimensions;->definedDimensions:[I

    iget-object v2, p0, Lbsh/BSHArrayDimensions;->definedDimensions:[I

    array-length v2, v2

    iget v4, p0, Lbsh/BSHArrayDimensions;->numUndefinedDims:I

    if-eq v2, v4, :cond_5f

    new-instance v1, Lbsh/EvalError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Incompatible initializer. Allocation calls for a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lbsh/BSHArrayDimensions;->numUndefinedDims:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " dimensional array, but initializer is a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " dimensional array"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1

    :cond_5f
    move v0, v1

    move-object v2, v3

    :goto_61
    iget-object v4, p0, Lbsh/BSHArrayDimensions;->definedDimensions:[I

    array-length v4, v4

    if-lt v0, v4, :cond_67

    :goto_66
    return-object v3

    :cond_67
    iget-object v4, p0, Lbsh/BSHArrayDimensions;->definedDimensions:[I

    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    aput v5, v4, v0

    iget-object v4, p0, Lbsh/BSHArrayDimensions;->definedDimensions:[I

    aget v4, v4, v0

    if-lez v4, :cond_79

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    :cond_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    :cond_7c
    iget v0, p0, Lbsh/BSHArrayDimensions;->numDefinedDims:I

    new-array v0, v0, [I

    iput-object v0, p0, Lbsh/BSHArrayDimensions;->definedDimensions:[I

    :goto_82
    iget v0, p0, Lbsh/BSHArrayDimensions;->numDefinedDims:I

    if-lt v1, v0, :cond_89

    sget-object v3, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    goto :goto_66

    :cond_89
    :try_start_89
    invoke-virtual {p0, v1}, Lbsh/BSHArrayDimensions;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lbsh/BSHArrayDimensions;->definedDimensions:[I

    check-cast v0, Lbsh/Primitive;

    invoke-virtual {v0}, Lbsh/Primitive;->intValue()I

    move-result v0

    aput v0, v2, v1
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_9d} :catch_a0

    add-int/lit8 v1, v1, 0x1

    goto :goto_82

    :catch_a0
    move-exception v0

    new-instance v0, Lbsh/EvalError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Array index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " does not evaluate to an integer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0
.end method

.method public eval(Ljava/lang/Class;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "array base type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_1a
    iput-object p1, p0, Lbsh/BSHArrayDimensions;->baseType:Ljava/lang/Class;

    invoke-virtual {p0, p2, p3}, Lbsh/BSHArrayDimensions;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
