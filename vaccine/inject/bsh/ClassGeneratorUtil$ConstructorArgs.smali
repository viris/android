.class public Lbsh/ClassGeneratorUtil$ConstructorArgs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/ClassGeneratorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConstructorArgs"
.end annotation


# static fields
.field public static DEFAULT:Lbsh/ClassGeneratorUtil$ConstructorArgs;


# instance fields
.field arg:I

.field args:[Ljava/lang/Object;

.field public selector:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lbsh/ClassGeneratorUtil$ConstructorArgs;

    invoke-direct {v0}, Lbsh/ClassGeneratorUtil$ConstructorArgs;-><init>()V

    sput-object v0, Lbsh/ClassGeneratorUtil$ConstructorArgs;->DEFAULT:Lbsh/ClassGeneratorUtil$ConstructorArgs;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lbsh/ClassGeneratorUtil$ConstructorArgs;->selector:I

    const/4 v0, 0x0

    iput v0, p0, Lbsh/ClassGeneratorUtil$ConstructorArgs;->arg:I

    return-void
.end method

.method constructor <init>(I[Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lbsh/ClassGeneratorUtil$ConstructorArgs;->selector:I

    const/4 v0, 0x0

    iput v0, p0, Lbsh/ClassGeneratorUtil$ConstructorArgs;->arg:I

    iput p1, p0, Lbsh/ClassGeneratorUtil$ConstructorArgs;->selector:I

    iput-object p2, p0, Lbsh/ClassGeneratorUtil$ConstructorArgs;->args:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getBoolean()Z
    .registers 2

    invoke-virtual {p0}, Lbsh/ClassGeneratorUtil$ConstructorArgs;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getByte()B
    .registers 2

    invoke-virtual {p0}, Lbsh/ClassGeneratorUtil$ConstructorArgs;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getChar()C
    .registers 2

    invoke-virtual {p0}, Lbsh/ClassGeneratorUtil$ConstructorArgs;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method public getDouble()D
    .registers 3

    invoke-virtual {p0}, Lbsh/ClassGeneratorUtil$ConstructorArgs;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat()F
    .registers 2

    invoke-virtual {p0}, Lbsh/ClassGeneratorUtil$ConstructorArgs;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getInt()I
    .registers 2

    invoke-virtual {p0}, Lbsh/ClassGeneratorUtil$ConstructorArgs;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLong()J
    .registers 3

    invoke-virtual {p0}, Lbsh/ClassGeneratorUtil$ConstructorArgs;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getObject()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lbsh/ClassGeneratorUtil$ConstructorArgs;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getShort()S
    .registers 2

    invoke-virtual {p0}, Lbsh/ClassGeneratorUtil$ConstructorArgs;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method next()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lbsh/ClassGeneratorUtil$ConstructorArgs;->args:[Ljava/lang/Object;

    iget v1, p0, Lbsh/ClassGeneratorUtil$ConstructorArgs;->arg:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbsh/ClassGeneratorUtil$ConstructorArgs;->arg:I

    aget-object v0, v0, v1

    return-object v0
.end method
