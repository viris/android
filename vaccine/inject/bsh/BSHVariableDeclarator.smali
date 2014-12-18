.class Lbsh/BSHVariableDeclarator;
.super Lbsh/SimpleNode;


# instance fields
.field public name:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lbsh/BSHType;Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lbsh/BSHVariableDeclarator;->jjtGetNumChildren()I

    move-result v1

    if-lez v1, :cond_22

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHVariableDeclarator;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    if-eqz p1, :cond_2e

    instance-of v1, v0, Lbsh/BSHArrayInitializer;

    if-eqz v1, :cond_2e

    check-cast v0, Lbsh/BSHArrayInitializer;

    invoke-virtual {p1}, Lbsh/BSHType;->getBaseType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lbsh/BSHType;->getArrayDims()I

    move-result v2

    invoke-virtual {v0, v1, v2, p2, p3}, Lbsh/BSHArrayInitializer;->eval(Ljava/lang/Class;ILbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    :cond_22
    :goto_22
    sget-object v1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne v0, v1, :cond_33

    new-instance v0, Lbsh/EvalError;

    const-string v1, "Void initializer."

    invoke-direct {v0, v1, p0, p2}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :cond_2e
    invoke-virtual {v0, p2, p3}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_22

    :cond_33
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "BSHVariableDeclarator "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lbsh/BSHVariableDeclarator;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
