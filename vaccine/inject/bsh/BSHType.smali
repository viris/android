.class Lbsh/BSHType;
.super Lbsh/SimpleNode;

# interfaces
.implements Lbsh/BshClassManager$Listener;


# instance fields
.field private arrayDims:I

.field private baseType:Ljava/lang/Class;

.field descriptor:Ljava/lang/String;

.field private type:Ljava/lang/Class;


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method public static getTypeDescriptor(Ljava/lang/Class;)Ljava/lang/String;
    .registers 6

    const/16 v4, 0x2f

    const/16 v3, 0x2e

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_b

    const-string v0, "Z"

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_12

    const-string v0, "C"

    goto :goto_a

    :cond_12
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_19

    const-string v0, "B"

    goto :goto_a

    :cond_19
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_20

    const-string v0, "S"

    goto :goto_a

    :cond_20
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_27

    const-string v0, "I"

    goto :goto_a

    :cond_27
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2e

    const-string v0, "J"

    goto :goto_a

    :cond_2e
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_35

    const-string v0, "F"

    goto :goto_a

    :cond_35
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3c

    const-string v0, "D"

    goto :goto_a

    :cond_3c
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_43

    const-string v0, "V"

    goto :goto_a

    :cond_43
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method


# virtual methods
.method public addArrayDimension()V
    .registers 2

    iget v0, p0, Lbsh/BSHType;->arrayDims:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/BSHType;->arrayDims:I

    return-void
.end method

.method public classLoaderChanged()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/BSHType;->type:Ljava/lang/Class;

    iput-object v0, p0, Lbsh/BSHType;->baseType:Ljava/lang/Class;

    return-void
.end method

.method public getArrayDims()I
    .registers 2

    iget v0, p0, Lbsh/BSHType;->arrayDims:I

    return v0
.end method

.method public getBaseType()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lbsh/BSHType;->baseType:Ljava/lang/Class;

    return-object v0
.end method

.method public getType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    iget-object v0, p0, Lbsh/BSHType;->type:Ljava/lang/Class;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lbsh/BSHType;->type:Ljava/lang/Class;

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Lbsh/BSHType;->getTypeNode()Lbsh/SimpleNode;

    move-result-object v0

    instance-of v1, v0, Lbsh/BSHPrimitiveType;

    if-eqz v1, :cond_35

    check-cast v0, Lbsh/BSHPrimitiveType;

    invoke-virtual {v0}, Lbsh/BSHPrimitiveType;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lbsh/BSHType;->baseType:Ljava/lang/Class;

    :goto_17
    iget v0, p0, Lbsh/BSHType;->arrayDims:I

    if-lez v0, :cond_47

    :try_start_1b
    iget v0, p0, Lbsh/BSHType;->arrayDims:I

    new-array v0, v0, [I

    iget-object v1, p0, Lbsh/BSHType;->baseType:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lbsh/BSHType;->type:Ljava/lang/Class;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2b} :catch_3e

    :goto_2b
    invoke-virtual {p2}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbsh/BshClassManager;->addListener(Lbsh/BshClassManager$Listener;)V

    iget-object v0, p0, Lbsh/BSHType;->type:Ljava/lang/Class;

    goto :goto_6

    :cond_35
    check-cast v0, Lbsh/BSHAmbiguousName;

    invoke-virtual {v0, p1, p2}, Lbsh/BSHAmbiguousName;->toClass(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lbsh/BSHType;->baseType:Ljava/lang/Class;

    goto :goto_17

    :catch_3e
    move-exception v0

    new-instance v0, Lbsh/EvalError;

    const-string v1, "Couldn\'t construct array type"

    invoke-direct {v0, v1, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0

    :cond_47
    iget-object v0, p0, Lbsh/BSHType;->baseType:Ljava/lang/Class;

    iput-object v0, p0, Lbsh/BSHType;->type:Ljava/lang/Class;

    goto :goto_2b
.end method

.method public getTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/16 v5, 0x2f

    const/16 v4, 0x2e

    iget-object v0, p0, Lbsh/BSHType;->descriptor:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lbsh/BSHType;->descriptor:Ljava/lang/String;

    :goto_a
    return-object v1

    :cond_b
    invoke-virtual {p0}, Lbsh/BSHType;->getTypeNode()Lbsh/SimpleNode;

    move-result-object v0

    instance-of v1, v0, Lbsh/BSHPrimitiveType;

    if-eqz v1, :cond_26

    check-cast v0, Lbsh/BSHPrimitiveType;

    iget-object v0, v0, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;

    invoke-static {v0}, Lbsh/BSHType;->getTypeDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    :goto_1b
    const/4 v1, 0x0

    move v6, v1

    move-object v1, v0

    move v0, v6

    :goto_1f
    iget v2, p0, Lbsh/BSHType;->arrayDims:I

    if-lt v0, v2, :cond_99

    iput-object v1, p0, Lbsh/BSHType;->descriptor:Ljava/lang/String;

    goto :goto_a

    :cond_26
    move-object v1, v0

    check-cast v1, Lbsh/BSHAmbiguousName;

    iget-object v2, v1, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;

    invoke-virtual {p2}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lbsh/BshClassManager;->getClassBeingDefined(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    if-nez v3, :cond_48

    :try_start_36
    check-cast v0, Lbsh/BSHAmbiguousName;

    invoke-virtual {v0, p1, p2}, Lbsh/BSHAmbiguousName;->toClass(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;
    :try_end_3b
    .catch Lbsh/EvalError; {:try_start_36 .. :try_end_3b} :catch_44

    move-result-object v0

    move-object v1, v2

    :goto_3d
    if-eqz v0, :cond_4b

    invoke-static {v0}, Lbsh/BSHType;->getTypeDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :catch_44
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_3d

    :cond_48
    move-object v0, v1

    move-object v1, v3

    goto :goto_3d

    :cond_4b
    if-eqz p3, :cond_53

    invoke-static {v1}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    :cond_53
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "L"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_71
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "L"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_99
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1f
.end method

.method getTypeNode()Lbsh/SimpleNode;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHType;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    return-object v0
.end method
