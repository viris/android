.class Lbsh/JJTParserState;
.super Ljava/lang/Object;


# instance fields
.field private marks:Ljava/util/Stack;

.field private mk:I

.field private node_created:Z

.field private nodes:Ljava/util/Stack;

.field private sp:I


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lbsh/JJTParserState;->nodes:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lbsh/JJTParserState;->marks:Ljava/util/Stack;

    iput v1, p0, Lbsh/JJTParserState;->sp:I

    iput v1, p0, Lbsh/JJTParserState;->mk:I

    return-void
.end method


# virtual methods
.method clearNodeScope(Lbsh/Node;)V
    .registers 4

    :goto_0
    iget v0, p0, Lbsh/JJTParserState;->sp:I

    iget v1, p0, Lbsh/JJTParserState;->mk:I

    if-gt v0, v1, :cond_15

    iget-object v0, p0, Lbsh/JJTParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lbsh/JJTParserState;->mk:I

    return-void

    :cond_15
    invoke-virtual {p0}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    goto :goto_0
.end method

.method closeNodeScope(Lbsh/Node;I)V
    .registers 5

    iget-object v0, p0, Lbsh/JJTParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lbsh/JJTParserState;->mk:I

    :goto_e
    add-int/lit8 v0, p2, -0x1

    if-gtz p2, :cond_1c

    invoke-interface {p1}, Lbsh/Node;->jjtClose()V

    invoke-virtual {p0, p1}, Lbsh/JJTParserState;->pushNode(Lbsh/Node;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsh/JJTParserState;->node_created:Z

    return-void

    :cond_1c
    invoke-virtual {p0}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    move-result-object v1

    invoke-interface {v1, p1}, Lbsh/Node;->jjtSetParent(Lbsh/Node;)V

    invoke-interface {p1, v1, v0}, Lbsh/Node;->jjtAddChild(Lbsh/Node;I)V

    move p2, v0

    goto :goto_e
.end method

.method closeNodeScope(Lbsh/Node;Z)V
    .registers 5

    if-eqz p2, :cond_2f

    invoke-virtual {p0}, Lbsh/JJTParserState;->nodeArity()I

    move-result v1

    iget-object v0, p0, Lbsh/JJTParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lbsh/JJTParserState;->mk:I

    move v0, v1

    :goto_15
    add-int/lit8 v1, v0, -0x1

    if-gtz v0, :cond_23

    invoke-interface {p1}, Lbsh/Node;->jjtClose()V

    invoke-virtual {p0, p1}, Lbsh/JJTParserState;->pushNode(Lbsh/Node;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsh/JJTParserState;->node_created:Z

    :goto_22
    return-void

    :cond_23
    invoke-virtual {p0}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    move-result-object v0

    invoke-interface {v0, p1}, Lbsh/Node;->jjtSetParent(Lbsh/Node;)V

    invoke-interface {p1, v0, v1}, Lbsh/Node;->jjtAddChild(Lbsh/Node;I)V

    move v0, v1

    goto :goto_15

    :cond_2f
    iget-object v0, p0, Lbsh/JJTParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lbsh/JJTParserState;->mk:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsh/JJTParserState;->node_created:Z

    goto :goto_22
.end method

.method nodeArity()I
    .registers 3

    iget v0, p0, Lbsh/JJTParserState;->sp:I

    iget v1, p0, Lbsh/JJTParserState;->mk:I

    sub-int/2addr v0, v1

    return v0
.end method

.method nodeCreated()Z
    .registers 2

    iget-boolean v0, p0, Lbsh/JJTParserState;->node_created:Z

    return v0
.end method

.method openNodeScope(Lbsh/Node;)V
    .registers 5

    iget-object v0, p0, Lbsh/JJTParserState;->marks:Ljava/util/Stack;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lbsh/JJTParserState;->mk:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lbsh/JJTParserState;->sp:I

    iput v0, p0, Lbsh/JJTParserState;->mk:I

    invoke-interface {p1}, Lbsh/Node;->jjtOpen()V

    return-void
.end method

.method peekNode()Lbsh/Node;
    .registers 2

    iget-object v0, p0, Lbsh/JJTParserState;->nodes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/Node;

    return-object v0
.end method

.method popNode()Lbsh/Node;
    .registers 3

    iget v0, p0, Lbsh/JJTParserState;->sp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbsh/JJTParserState;->sp:I

    iget v1, p0, Lbsh/JJTParserState;->mk:I

    if-ge v0, v1, :cond_18

    iget-object v0, p0, Lbsh/JJTParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lbsh/JJTParserState;->mk:I

    :cond_18
    iget-object v0, p0, Lbsh/JJTParserState;->nodes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/Node;

    return-object v0
.end method

.method pushNode(Lbsh/Node;)V
    .registers 3

    iget-object v0, p0, Lbsh/JJTParserState;->nodes:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lbsh/JJTParserState;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/JJTParserState;->sp:I

    return-void
.end method

.method reset()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lbsh/JJTParserState;->nodes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    iget-object v0, p0, Lbsh/JJTParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    iput v1, p0, Lbsh/JJTParserState;->sp:I

    iput v1, p0, Lbsh/JJTParserState;->mk:I

    return-void
.end method

.method rootNode()Lbsh/Node;
    .registers 3

    iget-object v0, p0, Lbsh/JJTParserState;->nodes:Ljava/util/Stack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/Node;

    return-object v0
.end method
