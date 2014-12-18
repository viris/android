.class Lbsh/BSHReturnType;
.super Lbsh/SimpleNode;


# instance fields
.field public isVoid:Z


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public evalReturnType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    iget-boolean v0, p0, Lbsh/BSHReturnType;->isVoid:Z

    if-eqz v0, :cond_7

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Lbsh/BSHReturnType;->getTypeNode()Lbsh/BSHType;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbsh/BSHType;->getType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_6
.end method

.method public getTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-boolean v0, p0, Lbsh/BSHReturnType;->isVoid:Z

    if-eqz v0, :cond_7

    const-string v0, "V"

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Lbsh/BSHReturnType;->getTypeNode()Lbsh/BSHType;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lbsh/BSHType;->getTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method getTypeNode()Lbsh/BSHType;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHReturnType;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHType;

    return-object v0
.end method
