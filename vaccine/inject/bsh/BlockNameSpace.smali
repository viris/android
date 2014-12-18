.class Lbsh/BlockNameSpace;
.super Lbsh/NameSpace;


# direct methods
.method public constructor <init>(Lbsh/NameSpace;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lbsh/NameSpace;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/BlockNameSpace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lbsh/NameSpace;-><init>(Lbsh/NameSpace;Ljava/lang/String;)V

    return-void
.end method

.method private getNonBlockParent()Lbsh/NameSpace;
    .registers 3

    invoke-super {p0}, Lbsh/NameSpace;->getParent()Lbsh/NameSpace;

    move-result-object v0

    instance-of v1, v0, Lbsh/BlockNameSpace;

    if-eqz v1, :cond_e

    check-cast v0, Lbsh/BlockNameSpace;

    invoke-direct {v0}, Lbsh/BlockNameSpace;->getNonBlockParent()Lbsh/NameSpace;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method private weHaveVar(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-super {p0, p1, v1}, Lbsh/NameSpace;->getVariableImpl(Ljava/lang/String;Z)Lbsh/Variable;
    :try_end_5
    .catch Lbsh/UtilEvalError; {:try_start_2 .. :try_end_5} :catch_a

    move-result-object v1

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    :goto_9
    return v0

    :catch_a
    move-exception v1

    goto :goto_9
.end method


# virtual methods
.method public getSuper(Lbsh/Interpreter;)Lbsh/This;
    .registers 3

    invoke-direct {p0}, Lbsh/BlockNameSpace;->getNonBlockParent()Lbsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsh/NameSpace;->getSuper(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    return-object v0
.end method

.method getThis(Lbsh/Interpreter;)Lbsh/This;
    .registers 3

    invoke-direct {p0}, Lbsh/BlockNameSpace;->getNonBlockParent()Lbsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    return-object v0
.end method

.method public importClass(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lbsh/BlockNameSpace;->getParent()Lbsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsh/NameSpace;->importClass(Ljava/lang/String;)V

    return-void
.end method

.method public importPackage(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lbsh/BlockNameSpace;->getParent()Lbsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsh/NameSpace;->importPackage(Ljava/lang/String;)V

    return-void
.end method

.method public setBlockVariable(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0, v0}, Lbsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public setMethod(Ljava/lang/String;Lbsh/BshMethod;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    invoke-virtual {p0}, Lbsh/BlockNameSpace;->getParent()Lbsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbsh/NameSpace;->setMethod(Ljava/lang/String;Lbsh/BshMethod;)V

    return-void
.end method

.method public setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    invoke-direct {p0, p1}, Lbsh/BlockNameSpace;->weHaveVar(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, v0}, Lbsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0}, Lbsh/BlockNameSpace;->getParent()Lbsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lbsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    goto :goto_a
.end method
