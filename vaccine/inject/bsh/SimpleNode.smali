.class Lbsh/SimpleNode;
.super Ljava/lang/Object;

# interfaces
.implements Lbsh/Node;


# static fields
.field public static JAVACODE:Lbsh/SimpleNode;


# instance fields
.field protected children:[Lbsh/Node;

.field firstToken:Lbsh/Token;

.field protected id:I

.field lastToken:Lbsh/Token;

.field protected parent:Lbsh/Node;

.field sourceFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lbsh/SimpleNode$1;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lbsh/SimpleNode$1;-><init>(I)V

    sput-object v0, Lbsh/SimpleNode;->JAVACODE:Lbsh/SimpleNode;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbsh/SimpleNode;->id:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .registers 6

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Lbsh/SimpleNode;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lbsh/SimpleNode;->children:[Lbsh/Node;

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    move v1, v0

    :goto_f
    iget-object v0, p0, Lbsh/SimpleNode;->children:[Lbsh/Node;

    array-length v0, v0

    if-lt v1, v0, :cond_15

    :cond_14
    return-void

    :cond_15
    iget-object v0, p0, Lbsh/SimpleNode;->children:[Lbsh/Node;

    aget-object v0, v0, v1

    check-cast v0, Lbsh/SimpleNode;

    if-eqz v0, :cond_33

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbsh/SimpleNode;->dump(Ljava/lang/String;)V

    :cond_33
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f
.end method

.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unimplemented or inappropriate for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChild(I)Lbsh/SimpleNode;
    .registers 3

    invoke-virtual {p0, p1}, Lbsh/SimpleNode;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    return-object v0
.end method

.method public getLineNumber()I
    .registers 2

    iget-object v0, p0, Lbsh/SimpleNode;->firstToken:Lbsh/Token;

    iget v0, v0, Lbsh/Token;->beginLine:I

    return v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbsh/SimpleNode;->sourceFile:Ljava/lang/String;

    if-nez v0, :cond_14

    iget-object v0, p0, Lbsh/SimpleNode;->parent:Lbsh/Node;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lbsh/SimpleNode;->parent:Lbsh/Node;

    check-cast v0, Lbsh/SimpleNode;

    invoke-virtual {v0}, Lbsh/SimpleNode;->getSourceFile()Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const-string v0, "<unknown file>"

    goto :goto_10

    :cond_14
    iget-object v0, p0, Lbsh/SimpleNode;->sourceFile:Ljava/lang/String;

    goto :goto_10
.end method

.method public getText()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lbsh/SimpleNode;->firstToken:Lbsh/Token;

    :goto_7
    if-nez v0, :cond_e

    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    iget-object v2, v0, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v0, Lbsh/Token;->image:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_22
    iget-object v2, p0, Lbsh/SimpleNode;->lastToken:Lbsh/Token;

    if-eq v0, v2, :cond_9

    iget-object v2, v0, Lbsh/Token;->image:Ljava/lang/String;

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v0, Lbsh/Token;->image:Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v0, v0, Lbsh/Token;->next:Lbsh/Token;

    goto :goto_7
.end method

.method public jjtAddChild(Lbsh/Node;I)V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lbsh/SimpleNode;->children:[Lbsh/Node;

    if-nez v0, :cond_10

    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [Lbsh/Node;

    iput-object v0, p0, Lbsh/SimpleNode;->children:[Lbsh/Node;

    :cond_b
    :goto_b
    iget-object v0, p0, Lbsh/SimpleNode;->children:[Lbsh/Node;

    aput-object p1, v0, p2

    return-void

    :cond_10
    iget-object v0, p0, Lbsh/SimpleNode;->children:[Lbsh/Node;

    array-length v0, v0

    if-lt p2, v0, :cond_b

    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [Lbsh/Node;

    iget-object v1, p0, Lbsh/SimpleNode;->children:[Lbsh/Node;

    iget-object v2, p0, Lbsh/SimpleNode;->children:[Lbsh/Node;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lbsh/SimpleNode;->children:[Lbsh/Node;

    goto :goto_b
.end method

.method public jjtClose()V
    .registers 1

    return-void
.end method

.method public jjtGetChild(I)Lbsh/Node;
    .registers 3

    iget-object v0, p0, Lbsh/SimpleNode;->children:[Lbsh/Node;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public jjtGetNumChildren()I
    .registers 2

    iget-object v0, p0, Lbsh/SimpleNode;->children:[Lbsh/Node;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lbsh/SimpleNode;->children:[Lbsh/Node;

    array-length v0, v0

    goto :goto_5
.end method

.method public jjtGetParent()Lbsh/Node;
    .registers 2

    iget-object v0, p0, Lbsh/SimpleNode;->parent:Lbsh/Node;

    return-object v0
.end method

.method public jjtOpen()V
    .registers 1

    return-void
.end method

.method public jjtSetParent(Lbsh/Node;)V
    .registers 2

    iput-object p1, p0, Lbsh/SimpleNode;->parent:Lbsh/Node;

    return-void
.end method

.method public prune()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/SimpleNode;->jjtSetParent(Lbsh/Node;)V

    return-void
.end method

.method public setSourceFile(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lbsh/SimpleNode;->sourceFile:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    sget-object v0, Lbsh/ParserTreeConstants;->jjtNodeName:[Ljava/lang/String;

    iget v1, p0, Lbsh/SimpleNode;->id:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lbsh/SimpleNode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
