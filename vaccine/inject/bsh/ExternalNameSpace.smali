.class public Lbsh/ExternalNameSpace;
.super Lbsh/NameSpace;


# instance fields
.field private externalMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const-string v0, "External Map Namespace"

    invoke-direct {p0, v1, v0, v1}, Lbsh/ExternalNameSpace;-><init>(Lbsh/NameSpace;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lbsh/NameSpace;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lbsh/NameSpace;-><init>(Lbsh/NameSpace;Ljava/lang/String;)V

    if-nez p3, :cond_a

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_a
    iput-object p3, p0, Lbsh/ExternalNameSpace;->externalMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    invoke-super {p0}, Lbsh/NameSpace;->clear()V

    iget-object v0, p0, Lbsh/ExternalNameSpace;->externalMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method protected getAllNamesAux(Ljava/util/Vector;)V
    .registers 2

    invoke-super {p0, p1}, Lbsh/NameSpace;->getAllNamesAux(Ljava/util/Vector;)V

    return-void
.end method

.method public getDeclaredVariables()[Lbsh/Variable;
    .registers 2

    invoke-super {p0}, Lbsh/NameSpace;->getDeclaredVariables()[Lbsh/Variable;

    move-result-object v0

    return-object v0
.end method

.method public getMap()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lbsh/ExternalNameSpace;->externalMap:Ljava/util/Map;

    return-object v0
.end method

.method public getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Lbsh/BshMethod;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Lbsh/BshMethod;

    move-result-object v0

    return-object v0
.end method

.method protected getVariableImpl(Ljava/lang/String;Z)Lbsh/Variable;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lbsh/ExternalNameSpace;->externalMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_11

    invoke-super {p0, p1}, Lbsh/NameSpace;->unsetVariable(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lbsh/NameSpace;->getVariableImpl(Ljava/lang/String;Z)Lbsh/Variable;

    move-result-object v0

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lbsh/NameSpace;->getVariableImpl(Ljava/lang/String;Z)Lbsh/Variable;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v2, Lbsh/Variable;

    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    check-cast v1, Lbsh/Modifiers;

    invoke-direct {v2, p1, v0, v3, v1}, Lbsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V

    move-object v0, v2

    goto :goto_10
.end method

.method public getVariableNames()[Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-super {p0}, Lbsh/NameSpace;->getVariableNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lbsh/ExternalNameSpace;->externalMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected putExternalMap(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    instance-of v0, p2, Lbsh/Variable;

    if-eqz v0, :cond_23

    :try_start_4
    check-cast p2, Lbsh/Variable;

    invoke-virtual {p0, p2}, Lbsh/ExternalNameSpace;->unwrapVariable(Lbsh/Variable;)Ljava/lang/Object;
    :try_end_9
    .catch Lbsh/UtilEvalError; {:try_start_4 .. :try_end_9} :catch_1a

    move-result-object v0

    :goto_a
    instance-of v1, v0, Lbsh/Primitive;

    if-eqz v1, :cond_14

    check-cast v0, Lbsh/Primitive;

    invoke-static {v0}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_14
    iget-object v1, p0, Lbsh/ExternalNameSpace;->externalMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_1a
    move-exception v0

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "unexpected UtilEvalError"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    move-object v0, p2

    goto :goto_a
.end method

.method public setMap(Ljava/util/Map;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/ExternalNameSpace;->externalMap:Ljava/util/Map;

    invoke-virtual {p0}, Lbsh/ExternalNameSpace;->clear()V

    iput-object p1, p0, Lbsh/ExternalNameSpace;->externalMap:Ljava/util/Map;

    return-void
.end method

.method public setMethod(Ljava/lang/String;Lbsh/BshMethod;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lbsh/NameSpace;->setMethod(Ljava/lang/String;Lbsh/BshMethod;)V

    return-void
.end method

.method public setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lbsh/NameSpace;->setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V

    invoke-virtual {p0, p1, p3}, Lbsh/ExternalNameSpace;->putExternalMap(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lbsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    invoke-virtual {p0, p1, p2}, Lbsh/ExternalNameSpace;->putExternalMap(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public unsetVariable(Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1}, Lbsh/NameSpace;->unsetVariable(Ljava/lang/String;)V

    iget-object v0, p0, Lbsh/ExternalNameSpace;->externalMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
