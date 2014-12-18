.class public Lbsh/BSHPackageDeclaration;
.super Lbsh/SimpleNode;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
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

    invoke-virtual {p0, v0}, Lbsh/BSHPackageDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHAmbiguousName;

    invoke-virtual {p1}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v1

    iget-object v2, v0, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lbsh/NameSpace;->setPackage(Ljava/lang/String;)V

    iget-object v0, v0, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-object v0
.end method
