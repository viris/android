.class Lbsh/BSHFormalParameter;
.super Lbsh/SimpleNode;


# static fields
.field public static final UNTYPED:Ljava/lang/Class;


# instance fields
.field public name:Ljava/lang/String;

.field public type:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lbsh/BSHFormalParameter;->UNTYPED:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    invoke-virtual {p0}, Lbsh/BSHFormalParameter;->jjtGetNumChildren()I

    move-result v0

    if-lez v0, :cond_16

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHFormalParameter;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHType;

    invoke-virtual {v0, p1, p2}, Lbsh/BSHType;->getType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lbsh/BSHFormalParameter;->type:Ljava/lang/Class;

    :goto_13
    iget-object v0, p0, Lbsh/BSHFormalParameter;->type:Ljava/lang/Class;

    return-object v0

    :cond_16
    sget-object v0, Lbsh/BSHFormalParameter;->UNTYPED:Ljava/lang/Class;

    iput-object v0, p0, Lbsh/BSHFormalParameter;->type:Ljava/lang/Class;

    goto :goto_13
.end method

.method public getTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lbsh/BSHFormalParameter;->jjtGetNumChildren()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHFormalParameter;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHType;

    invoke-virtual {v0, p1, p2, p3}, Lbsh/BSHType;->getTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    const-string v0, "Ljava/lang/Object;"

    goto :goto_11
.end method
