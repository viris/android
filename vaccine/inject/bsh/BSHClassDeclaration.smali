.class Lbsh/BSHClassDeclaration;
.super Lbsh/SimpleNode;


# static fields
.field static final CLASSINITNAME:Ljava/lang/String; = "_bshClassInit"


# instance fields
.field extend:Z

.field isInterface:Z

.field modifiers:Lbsh/Modifiers;

.field name:Ljava/lang/String;

.field numInterfaces:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lbsh/BSHClassDeclaration;->extend:Z

    if-eqz v0, :cond_81

    const/4 v1, 0x1

    invoke-virtual {p0, v2}, Lbsh/BSHClassDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHAmbiguousName;

    invoke-virtual {v0, p1, p2}, Lbsh/BSHAmbiguousName;->toClass(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v4

    move v0, v1

    :goto_12
    iget v1, p0, Lbsh/BSHClassDeclaration;->numInterfaces:I

    new-array v3, v1, [Ljava/lang/Class;

    :goto_16
    iget v1, p0, Lbsh/BSHClassDeclaration;->numInterfaces:I

    if-lt v2, v1, :cond_38

    invoke-virtual {p0}, Lbsh/BSHClassDeclaration;->jjtGetNumChildren()I

    move-result v1

    if-ge v0, v1, :cond_73

    invoke-virtual {p0, v0}, Lbsh/BSHClassDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHBlock;

    move-object v5, v0

    :goto_27
    :try_start_27
    invoke-static {}, Lbsh/ClassGenerator;->getClassGenerator()Lbsh/ClassGenerator;

    move-result-object v0

    iget-object v1, p0, Lbsh/BSHClassDeclaration;->name:Ljava/lang/String;

    iget-object v2, p0, Lbsh/BSHClassDeclaration;->modifiers:Lbsh/Modifiers;

    iget-boolean v6, p0, Lbsh/BSHClassDeclaration;->isInterface:Z

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Lbsh/ClassGenerator;->generateClass(Ljava/lang/String;Lbsh/Modifiers;[Ljava/lang/Class;Ljava/lang/Class;Lbsh/BSHBlock;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;
    :try_end_36
    .catch Lbsh/UtilEvalError; {:try_start_27 .. :try_end_36} :catch_7b

    move-result-object v0

    return-object v0

    :cond_38
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Lbsh/BSHClassDeclaration;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHAmbiguousName;

    invoke-virtual {v0, p1, p2}, Lbsh/BSHAmbiguousName;->toClass(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v2

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-nez v5, :cond_6f

    new-instance v1, Lbsh/EvalError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, v0, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " is not an interface!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1

    :cond_6f
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_16

    :cond_73
    new-instance v5, Lbsh/BSHBlock;

    const/16 v0, 0x19

    invoke-direct {v5, v0}, Lbsh/BSHBlock;-><init>(I)V

    goto :goto_27

    :catch_7b
    move-exception v0

    invoke-virtual {v0, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0

    :cond_81
    move v0, v2

    goto :goto_12
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ClassDeclaration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lbsh/BSHClassDeclaration;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
