.class Lbsh/ClassGeneratorImpl$ClassNodeFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lbsh/BSHBlock$NodeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/ClassGeneratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassNodeFilter"
.end annotation


# static fields
.field public static CLASSCLASSES:Lbsh/ClassGeneratorImpl$ClassNodeFilter; = null

.field public static final CLASSES:I = 0x2

.field public static CLASSINSTANCE:Lbsh/ClassGeneratorImpl$ClassNodeFilter; = null

.field public static CLASSSTATIC:Lbsh/ClassGeneratorImpl$ClassNodeFilter; = null

.field public static final INSTANCE:I = 0x1

.field public static final STATIC:I


# instance fields
.field context:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbsh/ClassGeneratorImpl$ClassNodeFilter;-><init>(I)V

    sput-object v0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->CLASSSTATIC:Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    new-instance v0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbsh/ClassGeneratorImpl$ClassNodeFilter;-><init>(I)V

    sput-object v0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->CLASSINSTANCE:Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    new-instance v0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lbsh/ClassGeneratorImpl$ClassNodeFilter;-><init>(I)V

    sput-object v0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->CLASSCLASSES:Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->context:I

    return-void
.end method


# virtual methods
.method isStatic(Lbsh/SimpleNode;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v0, p1, Lbsh/BSHTypedVariableDeclaration;

    if-eqz v0, :cond_1e

    move-object v0, p1

    check-cast v0, Lbsh/BSHTypedVariableDeclaration;

    iget-object v0, v0, Lbsh/BSHTypedVariableDeclaration;->modifiers:Lbsh/Modifiers;

    if-eqz v0, :cond_1c

    check-cast p1, Lbsh/BSHTypedVariableDeclaration;

    iget-object v0, p1, Lbsh/BSHTypedVariableDeclaration;->modifiers:Lbsh/Modifiers;

    const-string v3, "static"

    invoke-virtual {v0, v3}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v1

    :goto_1a
    move v2, v0

    :cond_1b
    :goto_1b
    return v2

    :cond_1c
    move v0, v2

    goto :goto_1a

    :cond_1e
    instance-of v0, p1, Lbsh/BSHMethodDeclaration;

    if-eqz v0, :cond_39

    move-object v0, p1

    check-cast v0, Lbsh/BSHMethodDeclaration;

    iget-object v0, v0, Lbsh/BSHMethodDeclaration;->modifiers:Lbsh/Modifiers;

    if-eqz v0, :cond_37

    check-cast p1, Lbsh/BSHMethodDeclaration;

    iget-object v0, p1, Lbsh/BSHMethodDeclaration;->modifiers:Lbsh/Modifiers;

    const-string v3, "static"

    invoke-virtual {v0, v3}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    :goto_35
    move v2, v1

    goto :goto_1b

    :cond_37
    move v1, v2

    goto :goto_35

    :cond_39
    instance-of v0, p1, Lbsh/BSHBlock;

    if-eqz v0, :cond_1b

    goto :goto_1b
.end method

.method public isVisible(Lbsh/SimpleNode;)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->context:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    instance-of v0, p1, Lbsh/BSHClassDeclaration;

    :cond_9
    :goto_9
    return v0

    :cond_a
    instance-of v2, p1, Lbsh/BSHClassDeclaration;

    if-eqz v2, :cond_10

    move v0, v1

    goto :goto_9

    :cond_10
    iget v2, p0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->context:I

    if-nez v2, :cond_19

    invoke-virtual {p0, p1}, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->isStatic(Lbsh/SimpleNode;)Z

    move-result v0

    goto :goto_9

    :cond_19
    iget v2, p0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->context:I

    if-ne v2, v0, :cond_9

    invoke-virtual {p0, p1}, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->isStatic(Lbsh/SimpleNode;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v0, v1

    goto :goto_9
.end method
