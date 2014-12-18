.class Lbsh/BSHBlock;
.super Lbsh/SimpleNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/BSHBlock$NodeFilter;
    }
.end annotation


# instance fields
.field public isSynchronized:Z


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsh/BSHBlock;->isSynchronized:Z

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

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lbsh/BSHBlock;->eval(Lbsh/CallStack;Lbsh/Interpreter;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public eval(Lbsh/CallStack;Lbsh/Interpreter;Z)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p0, Lbsh/BSHBlock;->isSynchronized:Z

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHBlock;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    :goto_10
    iget-boolean v2, p0, Lbsh/BSHBlock;->isSynchronized:Z

    if-eqz v2, :cond_20

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_16
    invoke-virtual {p0, p1, p2, p3, v1}, Lbsh/BSHBlock;->evalBlock(Lbsh/CallStack;Lbsh/Interpreter;ZLbsh/BSHBlock$NodeFilter;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    move-object v0, v1

    :goto_1c
    return-object v0

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_1d

    throw v1

    :cond_20
    invoke-virtual {p0, p1, p2, p3, v1}, Lbsh/BSHBlock;->evalBlock(Lbsh/CallStack;Lbsh/Interpreter;ZLbsh/BSHBlock$NodeFilter;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1c

    :cond_25
    move-object v0, v1

    goto :goto_10
.end method

.method evalBlock(Lbsh/CallStack;Lbsh/Interpreter;ZLbsh/BSHBlock$NodeFilter;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    sget-object v3, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    const/4 v0, 0x0

    if-nez p3, :cond_72

    invoke-virtual {p1}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v0

    new-instance v1, Lbsh/BlockNameSpace;

    invoke-direct {v1, v0}, Lbsh/BlockNameSpace;-><init>(Lbsh/NameSpace;)V

    invoke-virtual {p1, v1}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    move-object v1, v0

    :goto_12
    iget-boolean v0, p0, Lbsh/BSHBlock;->isSynchronized:Z

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    move v2, v0

    :goto_18
    invoke-virtual {p0}, Lbsh/BSHBlock;->jjtGetNumChildren()I

    move-result v5

    move v4, v2

    :goto_1d
    if-lt v4, v5, :cond_2e

    move v7, v2

    move-object v2, v3

    move v3, v7

    :goto_22
    if-lt v3, v5, :cond_4f

    move-object v0, v2

    :goto_25
    if-nez p3, :cond_2a

    invoke-virtual {p1, v1}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    :cond_2a
    return-object v0

    :cond_2b
    const/4 v0, 0x0

    move v2, v0

    goto :goto_18

    :cond_2e
    :try_start_2e
    invoke-virtual {p0, v4}, Lbsh/BSHBlock;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    if-eqz p4, :cond_40

    invoke-interface {p4, v0}, Lbsh/BSHBlock$NodeFilter;->isVisible(Lbsh/SimpleNode;)Z

    move-result v6

    if-nez v6, :cond_40

    :cond_3c
    :goto_3c
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1d

    :cond_40
    instance-of v6, v0, Lbsh/BSHClassDeclaration;

    if-eqz v6, :cond_3c

    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_2e .. :try_end_47} :catchall_48

    goto :goto_3c

    :catchall_48
    move-exception v0

    if-nez p3, :cond_4e

    invoke-virtual {p1, v1}, Lbsh/CallStack;->swap(Lbsh/NameSpace;)Lbsh/NameSpace;

    :cond_4e
    throw v0

    :cond_4f
    :try_start_4f
    invoke-virtual {p0, v3}, Lbsh/BSHBlock;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    instance-of v4, v0, Lbsh/BSHClassDeclaration;

    if-eqz v4, :cond_5f

    move-object v0, v2

    :cond_5a
    :goto_5a
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v0

    goto :goto_22

    :cond_5f
    if-eqz p4, :cond_69

    invoke-interface {p4, v0}, Lbsh/BSHBlock$NodeFilter;->isVisible(Lbsh/SimpleNode;)Z

    move-result v4

    if-nez v4, :cond_69

    move-object v0, v2

    goto :goto_5a

    :cond_69
    invoke-virtual {v0, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lbsh/ReturnControl;
    :try_end_6f
    .catchall {:try_start_4f .. :try_end_6f} :catchall_48

    if-eqz v2, :cond_5a

    goto :goto_25

    :cond_72
    move-object v1, v0

    goto :goto_12
.end method
