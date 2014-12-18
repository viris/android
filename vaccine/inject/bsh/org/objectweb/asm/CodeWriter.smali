.class public Lbsh/org/objectweb/asm/CodeWriter;
.super Ljava/lang/Object;

# interfaces
.implements Lbsh/org/objectweb/asm/CodeVisitor;


# static fields
.field static final CHECK:Z

.field private static final SIZE:[I

.field private static pool:Lbsh/org/objectweb/asm/Edge;


# instance fields
.field private access:I

.field private blockStack:Lbsh/org/objectweb/asm/Label;

.field private catchCount:I

.field private catchTable:Lbsh/org/objectweb/asm/ByteVector;

.field private code:Lbsh/org/objectweb/asm/ByteVector;

.field private final computeMaxs:Z

.field private currentBlock:Lbsh/org/objectweb/asm/Label;

.field private cw:Lbsh/org/objectweb/asm/ClassWriter;

.field private desc:Lbsh/org/objectweb/asm/Item;

.field private exceptionCount:I

.field private exceptions:[I

.field private head:Lbsh/org/objectweb/asm/Edge;

.field private lineNumber:Lbsh/org/objectweb/asm/ByteVector;

.field private lineNumberCount:I

.field private localVar:Lbsh/org/objectweb/asm/ByteVector;

.field private localVarCount:I

.field private maxLocals:I

.field private maxStack:I

.field private maxStackSize:I

.field private name:Lbsh/org/objectweb/asm/Item;

.field next:Lbsh/org/objectweb/asm/CodeWriter;

.field private resize:Z

.field private stackSize:I

.field private tail:Lbsh/org/objectweb/asm/Edge;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0xca

    new-array v1, v0, [I

    const-string v2, "EFFFFFFFFGGFFFGGFFFEEFGFGFEEEEEEEEEEEEEEEEEEEEDEDEDDDDDCDCDEEEEEEEEEEEEEEEEEEEEBABABBBBDCFFFGGGEDCDCDCDCDCDCDCDCDCDCEEEEDDDDDDDCDCDCEFEFDDEEFFDEDEEEBDDBBDDDDDDCCCCCCCCEFEDDDCDCDEEEEEEEEEEFEEEEEEDDEEDDEE"

    const/4 v0, 0x0

    :goto_7
    array-length v3, v1

    if-lt v0, v3, :cond_d

    sput-object v1, Lbsh/org/objectweb/asm/CodeWriter;->SIZE:[I

    return-void

    :cond_d
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x45

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method protected constructor <init>(Lbsh/org/objectweb/asm/ClassWriter;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbsh/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p1, Lbsh/org/objectweb/asm/ClassWriter;->firstMethod:Lbsh/org/objectweb/asm/CodeWriter;

    if-nez v0, :cond_29

    iput-object p0, p1, Lbsh/org/objectweb/asm/ClassWriter;->firstMethod:Lbsh/org/objectweb/asm/CodeWriter;

    iput-object p0, p1, Lbsh/org/objectweb/asm/ClassWriter;->lastMethod:Lbsh/org/objectweb/asm/CodeWriter;

    :goto_12
    iput-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    iput-boolean p2, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    if-eqz p2, :cond_28

    new-instance v0, Lbsh/org/objectweb/asm/Label;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/Label;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbsh/org/objectweb/asm/Label;->pushed:Z

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->blockStack:Lbsh/org/objectweb/asm/Label;

    :cond_28
    return-void

    :cond_29
    iget-object v0, p1, Lbsh/org/objectweb/asm/ClassWriter;->lastMethod:Lbsh/org/objectweb/asm/CodeWriter;

    iput-object p0, v0, Lbsh/org/objectweb/asm/CodeWriter;->next:Lbsh/org/objectweb/asm/CodeWriter;

    iput-object p0, p1, Lbsh/org/objectweb/asm/ClassWriter;->lastMethod:Lbsh/org/objectweb/asm/CodeWriter;

    goto :goto_12
.end method

.method private addSuccessor(ILbsh/org/objectweb/asm/Label;)V
    .registers 6

    sget-object v1, Lbsh/org/objectweb/asm/CodeWriter;->SIZE:[I

    monitor-enter v1

    :try_start_3
    sget-object v0, Lbsh/org/objectweb/asm/CodeWriter;->pool:Lbsh/org/objectweb/asm/Edge;

    if-nez v0, :cond_28

    new-instance v0, Lbsh/org/objectweb/asm/Edge;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/Edge;-><init>()V

    :goto_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_31

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->tail:Lbsh/org/objectweb/asm/Edge;

    if-nez v1, :cond_13

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->tail:Lbsh/org/objectweb/asm/Edge;

    :cond_13
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->head:Lbsh/org/objectweb/asm/Edge;

    iput-object v1, v0, Lbsh/org/objectweb/asm/Edge;->poolNext:Lbsh/org/objectweb/asm/Edge;

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->head:Lbsh/org/objectweb/asm/Edge;

    iput p1, v0, Lbsh/org/objectweb/asm/Edge;->stackSize:I

    iput-object p2, v0, Lbsh/org/objectweb/asm/Edge;->successor:Lbsh/org/objectweb/asm/Label;

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    iget-object v1, v1, Lbsh/org/objectweb/asm/Label;->successors:Lbsh/org/objectweb/asm/Edge;

    iput-object v1, v0, Lbsh/org/objectweb/asm/Edge;->next:Lbsh/org/objectweb/asm/Edge;

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    iput-object v0, v1, Lbsh/org/objectweb/asm/Label;->successors:Lbsh/org/objectweb/asm/Edge;

    return-void

    :cond_28
    :try_start_28
    sget-object v0, Lbsh/org/objectweb/asm/CodeWriter;->pool:Lbsh/org/objectweb/asm/Edge;

    sget-object v2, Lbsh/org/objectweb/asm/CodeWriter;->pool:Lbsh/org/objectweb/asm/Edge;

    iget-object v2, v2, Lbsh/org/objectweb/asm/Edge;->poolNext:Lbsh/org/objectweb/asm/Edge;

    sput-object v2, Lbsh/org/objectweb/asm/CodeWriter;->pool:Lbsh/org/objectweb/asm/Edge;

    goto :goto_c

    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_31

    throw v0
.end method

.method private static getArgumentsAndReturnSizes(Ljava/lang/String;)I
    .registers 9

    const/16 v7, 0x5b

    const/16 v6, 0x4a

    const/16 v5, 0x44

    const/4 v1, 0x1

    move v0, v1

    move v3, v1

    :cond_9
    :goto_9
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x29

    if-ne v0, v4, :cond_27

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    shl-int/lit8 v2, v3, 0x2

    const/16 v3, 0x56

    if-ne v0, v3, :cond_21

    const/4 v1, 0x0

    :cond_1e
    :goto_1e
    or-int v0, v2, v1

    return v0

    :cond_21
    if-eq v0, v5, :cond_25

    if-ne v0, v6, :cond_1e

    :cond_25
    const/4 v1, 0x2

    goto :goto_1e

    :cond_27
    const/16 v4, 0x4c

    if-ne v0, v4, :cond_39

    :goto_2b
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x3b

    if-ne v2, v4, :cond_5b

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_9

    :cond_39
    if-ne v0, v7, :cond_4d

    move v0, v2

    :goto_3c
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v7, :cond_4a

    if-eq v2, v5, :cond_46

    if-ne v2, v6, :cond_9

    :cond_46
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_9

    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_4d
    if-eq v0, v5, :cond_51

    if-ne v0, v6, :cond_56

    :cond_51
    add-int/lit8 v0, v3, 0x2

    move v3, v0

    move v0, v2

    goto :goto_9

    :cond_56
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_9

    :cond_5b
    move v2, v0

    goto :goto_2b
.end method

.method static getNewOffset([I[III)I
    .registers 7

    sub-int v1, p3, p2

    const/4 v0, 0x0

    :goto_3
    array-length v2, p0

    if-lt v0, v2, :cond_7

    return v1

    :cond_7
    aget v2, p0, v0

    if-ge p2, v2, :cond_15

    aget v2, p0, v0

    if-gt v2, p3, :cond_15

    aget v2, p1, v0

    add-int/2addr v1, v2

    :cond_12
    :goto_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_15
    aget v2, p0, v0

    if-ge p3, v2, :cond_12

    aget v2, p0, v0

    if-gt v2, p2, :cond_12

    aget v2, p1, v0

    sub-int/2addr v1, v2

    goto :goto_12
.end method

.method static readInt([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static readShort([BI)S
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method static readUnsignedShort([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static writeShort([BII)V
    .registers 5

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    return-void
.end method


# virtual methods
.method protected getCode()[B
    .registers 2

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, v0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    return-object v0
.end method

.method protected getCodeSize()I
    .registers 2

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    return v0
.end method

.method final getSize()I
    .registers 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->resize:Z

    if-eqz v0, :cond_c

    new-array v0, v2, [I

    new-array v1, v2, [I

    invoke-virtual {p0, v0, v1, v2}, Lbsh/org/objectweb/asm/CodeWriter;->resizeInstructions([I[II)[I

    :cond_c
    const/16 v0, 0x8

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, v1, Lbsh/org/objectweb/asm/ByteVector;->length:I

    if-lez v1, :cond_3d

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v2, "Code"

    invoke-virtual {v1, v2}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, v1, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x12

    iget v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchCount:I

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, v1, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_32
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumber:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumber:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, v1, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_3d
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->exceptionCount:I

    if-lez v1, :cond_4f

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v2, "Exceptions"

    invoke-virtual {v1, v2}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->exceptionCount:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :cond_4f
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->access:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_5f

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v2, "Synthetic"

    invoke-virtual {v1, v2}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    add-int/lit8 v0, v0, 0x6

    :cond_5f
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->access:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v2, "Deprecated"

    invoke-virtual {v1, v2}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    add-int/lit8 v0, v0, 0x6

    :cond_6f
    return v0
.end method

.method protected init(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9

    iput p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->access:I

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p2}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->name:Lbsh/org/objectweb/asm/Item;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p3}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->desc:Lbsh/org/objectweb/asm/Item;

    if-eqz p4, :cond_25

    array-length v0, p4

    if-lez v0, :cond_25

    array-length v0, p4

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->exceptionCount:I

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->exceptionCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->exceptions:[I

    const/4 v0, 0x0

    :goto_21
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->exceptionCount:I

    if-lt v0, v1, :cond_3c

    :cond_25
    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    if-eqz v0, :cond_3b

    invoke-static {p3}, Lbsh/org/objectweb/asm/CodeWriter;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_35

    add-int/lit8 v0, v0, -0x1

    :cond_35
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxLocals:I

    if-le v0, v1, :cond_3b

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxLocals:I

    :cond_3b
    return-void

    :cond_3c
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->exceptions:[I

    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    aget-object v3, p4, v0

    invoke-virtual {v2, v3}, Lbsh/org/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v2

    iget-short v2, v2, Lbsh/org/objectweb/asm/Item;->index:S

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method final put(Lbsh/org/objectweb/asm/ByteVector;)V
    .registers 9

    const/high16 v6, 0x20000

    const/high16 v5, 0x10000

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->access:I

    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->name:Lbsh/org/objectweb/asm/Item;

    iget-short v3, v3, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v0, v3}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->desc:Lbsh/org/objectweb/asm/Item;

    iget-short v3, v3, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v0, v3}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    if-lez v0, :cond_165

    move v0, v1

    :goto_22
    iget v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->exceptionCount:I

    if-lez v3, :cond_28

    add-int/lit8 v0, v0, 0x1

    :cond_28
    iget v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->access:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_2f

    add-int/lit8 v0, v0, 0x1

    :cond_2f
    iget v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->access:I

    and-int/2addr v3, v6

    if-eqz v3, :cond_36

    add-int/lit8 v0, v0, 0x1

    :cond_36
    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    if-lez v0, :cond_106

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0xc

    iget v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchCount:I

    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v3, :cond_55

    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    iget v3, v3, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    :cond_55
    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumber:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v3, :cond_60

    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumber:Lbsh/org/objectweb/asm/ByteVector;

    iget v3, v3, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    :cond_60
    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v4, "Code"

    invoke-virtual {v3, v4}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v3

    iget-short v3, v3, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {p1, v3}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v3

    invoke-virtual {v3, v0}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStack:I

    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxLocals:I

    invoke-virtual {v0, v3}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v3, v3, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    iget-object v4, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v4, v4, Lbsh/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v3, v2, v4}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchCount:I

    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchCount:I

    if-lez v0, :cond_a3

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchTable:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, v0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchTable:Lbsh/org/objectweb/asm/ByteVector;

    iget v3, v3, Lbsh/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {p1, v0, v2, v3}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    :cond_a3
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_162

    :goto_a7
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumber:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_ad

    add-int/lit8 v1, v1, 0x1

    :cond_ad
    invoke-virtual {p1, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_db

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v1, "LocalVariableTable"

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVarCount:I

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, v0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, v1, Lbsh/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {p1, v0, v2, v1}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    :cond_db
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumber:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_106

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v1, "LineNumberTable"

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumber:Lbsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumberCount:I

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumber:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, v0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumber:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, v1, Lbsh/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {p1, v0, v2, v1}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    :cond_106
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->exceptionCount:I

    if-lez v0, :cond_12b

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v1, "Exceptions"

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->exceptionCount:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->exceptionCount:I

    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move v0, v2

    :goto_127
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->exceptionCount:I

    if-lt v0, v1, :cond_158

    :cond_12b
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->access:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_141

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v1, "Synthetic"

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    :cond_141
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->access:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_157

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v1, "Deprecated"

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    :cond_157
    return-void

    :cond_158
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->exceptions:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_127

    :cond_162
    move v1, v2

    goto/16 :goto_a7

    :cond_165
    move v0, v2

    goto/16 :goto_22
.end method

.method protected resizeInstructions([I[II)[I
    .registers 19

    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v9, v2, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    move/from16 v0, p3

    new-array v4, v0, [I

    move/from16 v0, p3

    new-array v3, v0, [I

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v2, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v2, v2, Lbsh/org/objectweb/asm/ByteVector;->length:I

    new-array v10, v2, [Z

    const/4 v2, 0x3

    :goto_25
    const/4 v5, 0x3

    if-ne v2, v5, :cond_29

    const/4 v2, 0x2

    :cond_29
    const/4 v5, 0x0

    move-object v14, v4

    move v4, v5

    move-object v5, v14

    :goto_2d
    array-length v6, v9

    if-lt v4, v6, :cond_77

    const/4 v4, 0x3

    if-ge v2, v4, :cond_35

    add-int/lit8 v2, v2, -0x1

    :cond_35
    if-nez v2, :cond_366

    new-instance v8, Lbsh/org/objectweb/asm/ByteVector;

    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v2, v2, Lbsh/org/objectweb/asm/ByteVector;->length:I

    invoke-direct {v8, v2}, Lbsh/org/objectweb/asm/ByteVector;-><init>(I)V

    const/4 v2, 0x0

    :goto_41
    iget-object v4, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v4, v4, Lbsh/org/objectweb/asm/ByteVector;->length:I

    if-lt v2, v4, :cond_167

    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchTable:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_56

    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchTable:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v4, v2, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    const/4 v2, 0x0

    :goto_50
    iget-object v6, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchTable:Lbsh/org/objectweb/asm/ByteVector;

    iget v6, v6, Lbsh/org/objectweb/asm/ByteVector;->length:I

    if-lt v2, v6, :cond_306

    :cond_56
    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_65

    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v4, v2, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    const/4 v2, 0x0

    :goto_5f
    iget-object v6, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    iget v6, v6, Lbsh/org/objectweb/asm/ByteVector;->length:I

    if-lt v2, v6, :cond_336

    :cond_65
    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumber:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_74

    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumber:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v4, v2, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    const/4 v2, 0x0

    :goto_6e
    iget-object v6, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumber:Lbsh/org/objectweb/asm/ByteVector;

    iget v6, v6, Lbsh/org/objectweb/asm/ByteVector;->length:I

    if-lt v2, v6, :cond_356

    :cond_74
    iput-object v8, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    return-object p1

    :cond_77
    aget-byte v6, v9, v4

    and-int/lit16 v6, v6, 0xff

    const/4 v8, 0x0

    sget-object v7, Lbsh/org/objectweb/asm/ClassWriter;->TYPE:[B

    aget-byte v7, v7, v6

    packed-switch v7, :pswitch_data_374

    :pswitch_83
    add-int/lit8 v7, v4, 0x4

    :goto_85
    if-eqz v8, :cond_36e

    array-length v4, v5

    add-int/lit8 v4, v4, 0x1

    new-array v6, v4, [I

    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    array-length v13, v5

    invoke-static {v5, v11, v6, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    array-length v13, v3

    invoke-static {v3, v11, v4, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    aput v7, v6, v5

    array-length v3, v3

    aput v8, v4, v3

    if-lez v8, :cond_369

    const/4 v2, 0x3

    move-object v3, v4

    move-object v5, v6

    move v4, v7

    goto :goto_2d

    :pswitch_aa
    add-int/lit8 v7, v4, 0x1

    goto :goto_85

    :pswitch_ad
    const/16 v7, 0xc9

    if-le v6, v7, :cond_e1

    const/16 v7, 0xda

    if-ge v6, v7, :cond_de

    add-int/lit8 v6, v6, -0x31

    :goto_b7
    add-int/lit8 v7, v4, 0x1

    invoke-static {v9, v7}, Lbsh/org/objectweb/asm/CodeWriter;->readUnsignedShort([BI)I

    move-result v7

    add-int/2addr v7, v4

    :goto_be
    invoke-static {v5, v3, v4, v7}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v7

    const/16 v11, -0x8000

    if-lt v7, v11, :cond_ca

    const/16 v11, 0x7fff

    if-le v7, v11, :cond_371

    :cond_ca
    aget-boolean v7, v10, v4

    if-nez v7, :cond_371

    const/16 v7, 0xa7

    if-eq v6, v7, :cond_d6

    const/16 v7, 0xa8

    if-ne v6, v7, :cond_e9

    :cond_d6
    const/4 v6, 0x2

    :goto_d7
    const/4 v7, 0x1

    aput-boolean v7, v10, v4

    :goto_da
    add-int/lit8 v7, v4, 0x3

    move v8, v6

    goto :goto_85

    :cond_de
    add-int/lit8 v6, v6, -0x14

    goto :goto_b7

    :cond_e1
    add-int/lit8 v7, v4, 0x1

    invoke-static {v9, v7}, Lbsh/org/objectweb/asm/CodeWriter;->readShort([BI)S

    move-result v7

    add-int/2addr v7, v4

    goto :goto_be

    :cond_e9
    const/4 v6, 0x5

    goto :goto_d7

    :pswitch_eb
    add-int/lit8 v7, v4, 0x5

    goto :goto_85

    :pswitch_ee
    const/4 v6, 0x1

    if-ne v2, v6, :cond_116

    const/4 v6, 0x0

    invoke-static {v5, v3, v6, v4}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v6

    and-int/lit8 v6, v6, 0x3

    neg-int v8, v6

    :cond_f9
    :goto_f9
    add-int/lit8 v6, v4, 0x4

    and-int/lit8 v4, v4, 0x3

    sub-int v4, v6, v4

    add-int/lit8 v6, v4, 0x8

    invoke-static {v9, v6}, Lbsh/org/objectweb/asm/CodeWriter;->readInt([BI)I

    move-result v6

    add-int/lit8 v7, v4, 0x4

    invoke-static {v9, v7}, Lbsh/org/objectweb/asm/CodeWriter;->readInt([BI)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0xc

    add-int v7, v4, v6

    goto/16 :goto_85

    :cond_116
    aget-boolean v6, v10, v4

    if-nez v6, :cond_f9

    and-int/lit8 v8, v4, 0x3

    const/4 v6, 0x1

    aput-boolean v6, v10, v4

    goto :goto_f9

    :pswitch_120
    const/4 v6, 0x1

    if-ne v2, v6, :cond_13f

    const/4 v6, 0x0

    invoke-static {v5, v3, v6, v4}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v6

    and-int/lit8 v6, v6, 0x3

    neg-int v8, v6

    :cond_12b
    :goto_12b
    add-int/lit8 v6, v4, 0x4

    and-int/lit8 v4, v4, 0x3

    sub-int v4, v6, v4

    add-int/lit8 v6, v4, 0x4

    invoke-static {v9, v6}, Lbsh/org/objectweb/asm/CodeWriter;->readInt([BI)I

    move-result v6

    mul-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, 0x8

    add-int v7, v4, v6

    goto/16 :goto_85

    :cond_13f
    aget-boolean v6, v10, v4

    if-nez v6, :cond_12b

    and-int/lit8 v8, v4, 0x3

    const/4 v6, 0x1

    aput-boolean v6, v10, v4

    goto :goto_12b

    :pswitch_149
    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v9, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x84

    if-ne v6, v7, :cond_157

    add-int/lit8 v7, v4, 0x6

    goto/16 :goto_85

    :cond_157
    add-int/lit8 v7, v4, 0x4

    goto/16 :goto_85

    :pswitch_15b
    add-int/lit8 v7, v4, 0x2

    goto/16 :goto_85

    :pswitch_15f
    add-int/lit8 v7, v4, 0x3

    goto/16 :goto_85

    :pswitch_163
    add-int/lit8 v7, v4, 0x5

    goto/16 :goto_85

    :cond_167
    array-length v4, v5

    add-int/lit8 v4, v4, -0x1

    :goto_16a
    if-gez v4, :cond_17f

    aget-byte v4, v9, v2

    and-int/lit16 v4, v4, 0xff

    sget-object v6, Lbsh/org/objectweb/asm/ClassWriter;->TYPE:[B

    aget-byte v6, v6, v4

    packed-switch v6, :pswitch_data_39a

    :pswitch_177
    const/4 v4, 0x4

    invoke-virtual {v8, v9, v2, v4}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_41

    :cond_17f
    aget v6, v5, v4

    if-ne v6, v2, :cond_196

    move/from16 v0, p3

    if-ge v4, v0, :cond_196

    aget v6, p2, v4

    if-lez v6, :cond_199

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v10, p2, v4

    invoke-virtual {v8, v6, v7, v10}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    :goto_192
    iget v6, v8, Lbsh/org/objectweb/asm/ByteVector;->length:I

    aput v6, p1, v4

    :cond_196
    add-int/lit8 v4, v4, -0x1

    goto :goto_16a

    :cond_199
    iget v6, v8, Lbsh/org/objectweb/asm/ByteVector;->length:I

    aget v7, p2, v4

    add-int/2addr v6, v7

    iput v6, v8, Lbsh/org/objectweb/asm/ByteVector;->length:I

    goto :goto_192

    :pswitch_1a1
    invoke-virtual {v8, v4}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_41

    :pswitch_1a8
    const/16 v6, 0xc9

    if-le v4, v6, :cond_1d9

    const/16 v6, 0xda

    if-ge v4, v6, :cond_1d6

    add-int/lit8 v4, v4, -0x31

    :goto_1b2
    add-int/lit8 v6, v2, 0x1

    invoke-static {v9, v6}, Lbsh/org/objectweb/asm/CodeWriter;->readUnsignedShort([BI)I

    move-result v6

    add-int/2addr v6, v2

    :goto_1b9
    invoke-static {v5, v3, v2, v6}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v6

    const/16 v7, -0x8000

    if-lt v6, v7, :cond_1c5

    const/16 v7, 0x7fff

    if-le v6, v7, :cond_209

    :cond_1c5
    const/16 v7, 0xa7

    if-ne v4, v7, :cond_1e1

    const/16 v4, 0xc8

    invoke-virtual {v8, v4}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    move v4, v6

    :goto_1cf
    invoke-virtual {v8, v4}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    :goto_1d2
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_41

    :cond_1d6
    add-int/lit8 v4, v4, -0x14

    goto :goto_1b2

    :cond_1d9
    add-int/lit8 v6, v2, 0x1

    invoke-static {v9, v6}, Lbsh/org/objectweb/asm/CodeWriter;->readShort([BI)S

    move-result v6

    add-int/2addr v6, v2

    goto :goto_1b9

    :cond_1e1
    const/16 v7, 0xa8

    if-ne v4, v7, :cond_1ec

    const/16 v4, 0xc9

    invoke-virtual {v8, v4}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    move v4, v6

    goto :goto_1cf

    :cond_1ec
    const/16 v7, 0xa6

    if-gt v4, v7, :cond_206

    add-int/lit8 v4, v4, 0x1

    xor-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, -0x1

    :goto_1f6
    invoke-virtual {v8, v4}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    const/16 v4, 0x8

    invoke-virtual {v8, v4}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    const/16 v4, 0xc8

    invoke-virtual {v8, v4}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v4, v6, -0x3

    goto :goto_1cf

    :cond_206
    xor-int/lit8 v4, v4, 0x1

    goto :goto_1f6

    :cond_209
    invoke-virtual {v8, v4}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v8, v6}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_1d2

    :pswitch_210
    add-int/lit8 v6, v2, 0x1

    invoke-static {v9, v6}, Lbsh/org/objectweb/asm/CodeWriter;->readInt([BI)I

    move-result v6

    add-int/2addr v6, v2

    invoke-static {v5, v3, v2, v6}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v6

    invoke-virtual {v8, v4}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v8, v6}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v2, v2, 0x5

    goto/16 :goto_41

    :pswitch_225
    add-int/lit8 v4, v2, 0x4

    and-int/lit8 v6, v2, 0x3

    sub-int/2addr v4, v6

    iget v6, v8, Lbsh/org/objectweb/asm/ByteVector;->length:I

    const/16 v6, 0xaa

    invoke-virtual {v8, v6}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    :goto_231
    iget v6, v8, Lbsh/org/objectweb/asm/ByteVector;->length:I

    rem-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_268

    invoke-static {v9, v4}, Lbsh/org/objectweb/asm/CodeWriter;->readInt([BI)I

    move-result v6

    add-int/2addr v6, v2

    add-int/lit8 v4, v4, 0x4

    invoke-static {v5, v3, v2, v6}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v6

    invoke-virtual {v8, v6}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    invoke-static {v9, v4}, Lbsh/org/objectweb/asm/CodeWriter;->readInt([BI)I

    move-result v6

    add-int/lit8 v7, v4, 0x4

    invoke-virtual {v8, v6}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    invoke-static {v9, v7}, Lbsh/org/objectweb/asm/CodeWriter;->readInt([BI)I

    move-result v4

    sub-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v7, 0x4

    add-int/lit8 v7, v6, -0x4

    invoke-static {v9, v7}, Lbsh/org/objectweb/asm/CodeWriter;->readInt([BI)I

    move-result v7

    invoke-virtual {v8, v7}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    move v14, v4

    move v4, v6

    move v6, v14

    :goto_263
    if-gtz v6, :cond_26d

    move v2, v4

    goto/16 :goto_41

    :cond_268
    const/4 v6, 0x0

    invoke-virtual {v8, v6}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_231

    :cond_26d
    invoke-static {v9, v4}, Lbsh/org/objectweb/asm/CodeWriter;->readInt([BI)I

    move-result v7

    add-int v10, v2, v7

    add-int/lit8 v7, v4, 0x4

    invoke-static {v5, v3, v2, v10}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v4

    invoke-virtual {v8, v4}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v4, v6, -0x1

    move v6, v4

    move v4, v7

    goto :goto_263

    :pswitch_281
    add-int/lit8 v4, v2, 0x4

    and-int/lit8 v6, v2, 0x3

    sub-int/2addr v4, v6

    iget v6, v8, Lbsh/org/objectweb/asm/ByteVector;->length:I

    const/16 v6, 0xab

    invoke-virtual {v8, v6}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    :goto_28d
    iget v6, v8, Lbsh/org/objectweb/asm/ByteVector;->length:I

    rem-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_2b2

    invoke-static {v9, v4}, Lbsh/org/objectweb/asm/CodeWriter;->readInt([BI)I

    move-result v6

    add-int/2addr v6, v2

    add-int/lit8 v7, v4, 0x4

    invoke-static {v5, v3, v2, v6}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v4

    invoke-virtual {v8, v4}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    invoke-static {v9, v7}, Lbsh/org/objectweb/asm/CodeWriter;->readInt([BI)I

    move-result v4

    add-int/lit8 v6, v7, 0x4

    invoke-virtual {v8, v4}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    move v14, v4

    move v4, v6

    move v6, v14

    :goto_2ad
    if-gtz v6, :cond_2b7

    move v2, v4

    goto/16 :goto_41

    :cond_2b2
    const/4 v6, 0x0

    invoke-virtual {v8, v6}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_28d

    :cond_2b7
    invoke-static {v9, v4}, Lbsh/org/objectweb/asm/CodeWriter;->readInt([BI)I

    move-result v7

    invoke-virtual {v8, v7}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v4, v4, 0x4

    invoke-static {v9, v4}, Lbsh/org/objectweb/asm/CodeWriter;->readInt([BI)I

    move-result v7

    add-int v10, v2, v7

    add-int/lit8 v7, v4, 0x4

    invoke-static {v5, v3, v2, v10}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v4

    invoke-virtual {v8, v4}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v4, v6, -0x1

    move v6, v4

    move v4, v7

    goto :goto_2ad

    :pswitch_2d4
    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v9, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v6, 0x84

    if-ne v4, v6, :cond_2e6

    const/4 v4, 0x6

    invoke-virtual {v8, v9, v2, v4}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v2, v2, 0x6

    goto/16 :goto_41

    :cond_2e6
    const/4 v4, 0x4

    invoke-virtual {v8, v9, v2, v4}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_41

    :pswitch_2ee
    const/4 v4, 0x2

    invoke-virtual {v8, v9, v2, v4}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_41

    :pswitch_2f6
    const/4 v4, 0x3

    invoke-virtual {v8, v9, v2, v4}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_41

    :pswitch_2fe
    const/4 v4, 0x5

    invoke-virtual {v8, v9, v2, v4}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v2, v2, 0x5

    goto/16 :goto_41

    :cond_306
    const/4 v6, 0x0

    invoke-static {v4, v2}, Lbsh/org/objectweb/asm/CodeWriter;->readUnsignedShort([BI)I

    move-result v7

    invoke-static {v5, v3, v6, v7}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v6

    invoke-static {v4, v2, v6}, Lbsh/org/objectweb/asm/CodeWriter;->writeShort([BII)V

    add-int/lit8 v6, v2, 0x2

    const/4 v7, 0x0

    add-int/lit8 v9, v2, 0x2

    invoke-static {v4, v9}, Lbsh/org/objectweb/asm/CodeWriter;->readUnsignedShort([BI)I

    move-result v9

    invoke-static {v5, v3, v7, v9}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v7

    invoke-static {v4, v6, v7}, Lbsh/org/objectweb/asm/CodeWriter;->writeShort([BII)V

    add-int/lit8 v6, v2, 0x4

    const/4 v7, 0x0

    add-int/lit8 v9, v2, 0x4

    invoke-static {v4, v9}, Lbsh/org/objectweb/asm/CodeWriter;->readUnsignedShort([BI)I

    move-result v9

    invoke-static {v5, v3, v7, v9}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v7

    invoke-static {v4, v6, v7}, Lbsh/org/objectweb/asm/CodeWriter;->writeShort([BII)V

    add-int/lit8 v2, v2, 0x8

    goto/16 :goto_50

    :cond_336
    invoke-static {v4, v2}, Lbsh/org/objectweb/asm/CodeWriter;->readUnsignedShort([BI)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v5, v3, v7, v6}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v7

    invoke-static {v4, v2, v7}, Lbsh/org/objectweb/asm/CodeWriter;->writeShort([BII)V

    add-int/lit8 v9, v2, 0x2

    invoke-static {v4, v9}, Lbsh/org/objectweb/asm/CodeWriter;->readUnsignedShort([BI)I

    move-result v9

    add-int/2addr v6, v9

    const/4 v9, 0x0

    invoke-static {v5, v3, v9, v6}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v6

    sub-int/2addr v6, v7

    invoke-static {v4, v2, v6}, Lbsh/org/objectweb/asm/CodeWriter;->writeShort([BII)V

    add-int/lit8 v2, v2, 0xa

    goto/16 :goto_5f

    :cond_356
    const/4 v6, 0x0

    invoke-static {v4, v2}, Lbsh/org/objectweb/asm/CodeWriter;->readUnsignedShort([BI)I

    move-result v7

    invoke-static {v5, v3, v6, v7}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v6

    invoke-static {v4, v2, v6}, Lbsh/org/objectweb/asm/CodeWriter;->writeShort([BII)V

    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_6e

    :cond_366
    move-object v4, v5

    goto/16 :goto_25

    :cond_369
    move-object v3, v4

    move-object v5, v6

    move v4, v7

    goto/16 :goto_2d

    :cond_36e
    move v4, v7

    goto/16 :goto_2d

    :cond_371
    move v6, v8

    goto/16 :goto_da

    :pswitch_data_374
    .packed-switch 0x0
        :pswitch_aa
        :pswitch_15b
        :pswitch_15f
        :pswitch_15b
        :pswitch_aa
        :pswitch_15f
        :pswitch_15f
        :pswitch_163
        :pswitch_ad
        :pswitch_eb
        :pswitch_15b
        :pswitch_15f
        :pswitch_15f
        :pswitch_ee
        :pswitch_120
        :pswitch_83
        :pswitch_149
    .end packed-switch

    :pswitch_data_39a
    .packed-switch 0x0
        :pswitch_1a1
        :pswitch_2ee
        :pswitch_2f6
        :pswitch_2ee
        :pswitch_1a1
        :pswitch_2f6
        :pswitch_2f6
        :pswitch_2fe
        :pswitch_1a8
        :pswitch_210
        :pswitch_2ee
        :pswitch_2f6
        :pswitch_2f6
        :pswitch_225
        :pswitch_281
        :pswitch_177
        :pswitch_2d4
    .end packed-switch
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x2

    const/16 v5, 0x4a

    const/16 v4, 0x44

    iget-boolean v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    if-eqz v3, :cond_22

    invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch p1, :pswitch_data_4e

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    if-eq v3, v4, :cond_18

    if-ne v3, v5, :cond_19

    :cond_18
    const/4 v1, -0x3

    :cond_19
    add-int/2addr v0, v1

    :goto_1a
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    if-le v0, v1, :cond_20

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    :cond_20
    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    :cond_22
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v1, p2, p3, p4}, Lbsh/org/objectweb/asm/ClassWriter;->newField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v0, p1, v1}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    return-void

    :pswitch_30
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    if-eq v3, v4, :cond_36

    if-ne v3, v5, :cond_37

    :cond_36
    const/4 v0, 0x2

    :cond_37
    add-int/2addr v0, v1

    goto :goto_1a

    :pswitch_39
    iget v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    if-eq v3, v4, :cond_3f

    if-ne v3, v5, :cond_42

    :cond_3f
    move v0, v1

    :goto_40
    add-int/2addr v0, v2

    goto :goto_1a

    :cond_42
    const/4 v0, -0x1

    goto :goto_40

    :pswitch_44
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    if-eq v3, v4, :cond_4a

    if-ne v3, v5, :cond_4c

    :cond_4a
    :goto_4a
    add-int/2addr v0, v1

    goto :goto_1a

    :cond_4c
    move v0, v2

    goto :goto_4a

    :pswitch_data_4e
    .packed-switch 0xb2
        :pswitch_30
        :pswitch_39
        :pswitch_44
    .end packed-switch
.end method

.method public visitIincInsn(II)V
    .registers 6

    const/16 v2, 0x84

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    if-eqz v0, :cond_e

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxLocals:I

    if-le v0, v1, :cond_e

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxLocals:I

    :cond_e
    const/16 v0, 0xff

    if-gt p1, v0, :cond_1a

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_1a

    const/16 v0, -0x80

    if-ge p2, v0, :cond_2a

    :cond_1a
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    :goto_29
    return-void

    :cond_2a
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, v2}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put11(II)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_29
.end method

.method public visitInsn(I)V
    .registers 4

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    if-eqz v0, :cond_2c

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    sget-object v1, Lbsh/org/objectweb/asm/CodeWriter;->SIZE:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    if-le v0, v1, :cond_11

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    :cond_11
    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    const/16 v0, 0xac

    if-lt p1, v0, :cond_1b

    const/16 v0, 0xb1

    if-le p1, v0, :cond_1f

    :cond_1b
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_2c

    :cond_1f
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    iput v1, v0, Lbsh/org/objectweb/asm/Label;->maxStackSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    :cond_2c
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitIntInsn(II)V
    .registers 5

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    if-eqz v0, :cond_14

    const/16 v0, 0xbc

    if-eq p1, v0, :cond_14

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    if-le v0, v1, :cond_12

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    :cond_12
    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    :cond_14
    const/16 v0, 0x11

    if-ne p1, v0, :cond_1e

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put11(II)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_1d
.end method

.method public visitJumpInsn(ILbsh/org/objectweb/asm/Label;)V
    .registers 8

    const/16 v4, 0xc8

    const/16 v3, 0xa8

    const/16 v2, 0xa7

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    if-eqz v0, :cond_1e

    if-ne p1, v2, :cond_41

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    iput v1, v0, Lbsh/org/objectweb/asm/Label;->maxStackSize:I

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    invoke-direct {p0, v0, p2}, Lbsh/org/objectweb/asm/CodeWriter;->addSuccessor(ILbsh/org/objectweb/asm/Label;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    :cond_1e
    :goto_1e
    iget-boolean v0, p2, Lbsh/org/objectweb/asm/Label;->resolved:Z

    if-eqz v0, :cond_8b

    iget v0, p2, Lbsh/org/objectweb/asm/Label;->position:I

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, v1, Lbsh/org/objectweb/asm/ByteVector;->length:I

    sub-int/2addr v0, v1

    const/16 v1, -0x8000

    if-ge v0, v1, :cond_8b

    if-ne p1, v2, :cond_62

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, v4}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    :goto_34
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, v1, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {p2, p0, v0, v1, v2}, Lbsh/org/objectweb/asm/Label;->put(Lbsh/org/objectweb/asm/CodeWriter;Lbsh/org/objectweb/asm/ByteVector;IZ)V

    :goto_40
    return-void

    :cond_41
    if-ne p1, v3, :cond_4f

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_1e

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p2}, Lbsh/org/objectweb/asm/CodeWriter;->addSuccessor(ILbsh/org/objectweb/asm/Label;)V

    goto :goto_1e

    :cond_4f
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    sget-object v1, Lbsh/org/objectweb/asm/CodeWriter;->SIZE:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_1e

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    invoke-direct {p0, v0, p2}, Lbsh/org/objectweb/asm/CodeWriter;->addSuccessor(ILbsh/org/objectweb/asm/Label;)V

    goto :goto_1e

    :cond_62
    if-ne p1, v3, :cond_6c

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_34

    :cond_6c
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v0, 0xa6

    if-gt p1, v0, :cond_88

    add-int/lit8 v0, p1, 0x1

    xor-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_78
    invoke-virtual {v1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, v4}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_34

    :cond_88
    xor-int/lit8 v0, p1, 0x1

    goto :goto_78

    :cond_8b
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, v1, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p2, p0, v0, v1, v2}, Lbsh/org/objectweb/asm/Label;->put(Lbsh/org/objectweb/asm/CodeWriter;Lbsh/org/objectweb/asm/ByteVector;IZ)V

    goto :goto_40
.end method

.method public visitLabel(Lbsh/org/objectweb/asm/Label;)V
    .registers 5

    const/4 v2, 0x0

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    iput v1, v0, Lbsh/org/objectweb/asm/Label;->maxStackSize:I

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    invoke-direct {p0, v0, p1}, Lbsh/org/objectweb/asm/CodeWriter;->addSuccessor(ILbsh/org/objectweb/asm/Label;)V

    :cond_14
    iput-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    iput v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    iput v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    :cond_1a
    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->resize:Z

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, v1, Lbsh/org/objectweb/asm/ByteVector;->length:I

    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v2, v2, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    invoke-virtual {p1, p0, v1, v2}, Lbsh/org/objectweb/asm/Label;->resolve(Lbsh/org/objectweb/asm/CodeWriter;I[B)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->resize:Z

    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .registers 7

    const/4 v4, 0x6

    const/4 v3, 0x5

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->newCst(Ljava/lang/Object;)Lbsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    if-eqz v0, :cond_20

    iget v0, v1, Lbsh/org/objectweb/asm/Item;->type:I

    if-eq v0, v3, :cond_14

    iget v0, v1, Lbsh/org/objectweb/asm/Item;->type:I

    if-ne v0, v4, :cond_32

    :cond_14
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    add-int/lit8 v0, v0, 0x2

    :goto_18
    iget v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    if-le v0, v2, :cond_1e

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    :cond_1e
    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    :cond_20
    iget-short v0, v1, Lbsh/org/objectweb/asm/Item;->index:S

    iget v2, v1, Lbsh/org/objectweb/asm/Item;->type:I

    if-eq v2, v3, :cond_2a

    iget v1, v1, Lbsh/org/objectweb/asm/Item;->type:I

    if-ne v1, v4, :cond_37

    :cond_2a
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v0}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    :goto_31
    return-void

    :cond_32
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_37
    const/16 v1, 0x100

    if-lt v0, v1, :cond_43

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v2, 0x13

    invoke-virtual {v1, v2, v0}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_31

    :cond_43
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v0}, Lbsh/org/objectweb/asm/ByteVector;->put11(II)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_31
.end method

.method public visitLineNumber(ILbsh/org/objectweb/asm/Label;)V
    .registers 5

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumber:Lbsh/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_12

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v1, "LineNumberTable"

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    new-instance v0, Lbsh/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumber:Lbsh/org/objectweb/asm/ByteVector;

    :cond_12
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumberCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumberCount:I

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumber:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, p2, Lbsh/org/objectweb/asm/Label;->position:I

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumber:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Lbsh/org/objectweb/asm/Label;Lbsh/org/objectweb/asm/Label;I)V
    .registers 9

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_12

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v1, "LocalVariableTable"

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    new-instance v0, Lbsh/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    :cond_12
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVarCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVarCount:I

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, p3, Lbsh/org/objectweb/asm/Label;->position:I

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, p4, Lbsh/org/objectweb/asm/Label;->position:I

    iget v2, p3, Lbsh/org/objectweb/asm/Label;->position:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v1, p2}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p5}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitLookupSwitchInsn(Lbsh/org/objectweb/asm/Label;[I[Lbsh/org/objectweb/asm/Label;)V
    .registers 9

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    if-eqz v0, :cond_22

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    iget v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    iput v2, v0, Lbsh/org/objectweb/asm/Label;->maxStackSize:I

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    invoke-direct {p0, v0, p1}, Lbsh/org/objectweb/asm/CodeWriter;->addSuccessor(ILbsh/org/objectweb/asm/Label;)V

    move v0, v1

    :goto_1c
    array-length v2, p3

    if-lt v0, v2, :cond_44

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    :cond_22
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v3, 0xab

    invoke-virtual {v2, v3}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    :goto_2d
    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v2, v2, Lbsh/org/objectweb/asm/ByteVector;->length:I

    rem-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_4e

    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {p1, p0, v2, v0, v4}, Lbsh/org/objectweb/asm/Label;->put(Lbsh/org/objectweb/asm/CodeWriter;Lbsh/org/objectweb/asm/ByteVector;IZ)V

    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    array-length v3, p3

    invoke-virtual {v2, v3}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    :goto_40
    array-length v2, p3

    if-lt v1, v2, :cond_54

    return-void

    :cond_44
    iget v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    aget-object v3, p3, v0

    invoke-direct {p0, v2, v3}, Lbsh/org/objectweb/asm/CodeWriter;->addSuccessor(ILbsh/org/objectweb/asm/Label;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_4e
    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v2, v1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_2d

    :cond_54
    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    aget v3, p2, v1

    invoke-virtual {v2, v3}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    aget-object v2, p3, v1

    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v2, p0, v3, v0, v4}, Lbsh/org/objectweb/asm/Label;->put(Lbsh/org/objectweb/asm/CodeWriter;Lbsh/org/objectweb/asm/ByteVector;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_40
.end method

.method public visitMaxs(II)V
    .registers 9

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    if-eqz v0, :cond_48

    const/4 v1, 0x0

    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->blockStack:Lbsh/org/objectweb/asm/Label;

    move-object v3, v2

    :goto_8
    if-nez v3, :cond_1f

    iput v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStack:I

    sget-object v1, Lbsh/org/objectweb/asm/CodeWriter;->SIZE:[I

    monitor-enter v1

    :try_start_f
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->tail:Lbsh/org/objectweb/asm/Edge;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->tail:Lbsh/org/objectweb/asm/Edge;

    sget-object v2, Lbsh/org/objectweb/asm/CodeWriter;->pool:Lbsh/org/objectweb/asm/Edge;

    iput-object v2, v0, Lbsh/org/objectweb/asm/Edge;->poolNext:Lbsh/org/objectweb/asm/Edge;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->head:Lbsh/org/objectweb/asm/Edge;

    sput-object v0, Lbsh/org/objectweb/asm/CodeWriter;->pool:Lbsh/org/objectweb/asm/Edge;

    :cond_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_45

    :goto_1e
    return-void

    :cond_1f
    iget-object v2, v3, Lbsh/org/objectweb/asm/Label;->next:Lbsh/org/objectweb/asm/Label;

    iget v4, v3, Lbsh/org/objectweb/asm/Label;->beginStackSize:I

    iget v0, v3, Lbsh/org/objectweb/asm/Label;->maxStackSize:I

    add-int/2addr v0, v4

    if-le v0, v1, :cond_4f

    :goto_28
    iget-object v1, v3, Lbsh/org/objectweb/asm/Label;->successors:Lbsh/org/objectweb/asm/Edge;

    move-object v3, v1

    :goto_2b
    if-nez v3, :cond_30

    move-object v3, v2

    move v1, v0

    goto :goto_8

    :cond_30
    iget-object v1, v3, Lbsh/org/objectweb/asm/Edge;->successor:Lbsh/org/objectweb/asm/Label;

    iget-boolean v5, v1, Lbsh/org/objectweb/asm/Label;->pushed:Z

    if-nez v5, :cond_4d

    iget v5, v3, Lbsh/org/objectweb/asm/Edge;->stackSize:I

    add-int/2addr v5, v4

    iput v5, v1, Lbsh/org/objectweb/asm/Label;->beginStackSize:I

    const/4 v5, 0x1

    iput-boolean v5, v1, Lbsh/org/objectweb/asm/Label;->pushed:Z

    iput-object v2, v1, Lbsh/org/objectweb/asm/Label;->next:Lbsh/org/objectweb/asm/Label;

    :goto_40
    iget-object v2, v3, Lbsh/org/objectweb/asm/Edge;->next:Lbsh/org/objectweb/asm/Edge;

    move-object v3, v2

    move-object v2, v1

    goto :goto_2b

    :catchall_45
    move-exception v0

    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v0

    :cond_48
    iput p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStack:I

    iput p2, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxLocals:I

    goto :goto_1e

    :cond_4d
    move-object v1, v2

    goto :goto_40

    :cond_4f
    move v0, v1

    goto :goto_28
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/16 v4, 0xb9

    if-ne p1, v4, :cond_4c

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p2, p3, p4}, Lbsh/org/objectweb/asm/ClassWriter;->newItfMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    :goto_a
    iget v1, v0, Lbsh/org/objectweb/asm/Item;->intVal:I

    iget-boolean v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    if-eqz v2, :cond_2f

    if-nez v1, :cond_64

    invoke-static {p4}, Lbsh/org/objectweb/asm/CodeWriter;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lbsh/org/objectweb/asm/Item;->intVal:I

    :goto_18
    const/16 v1, 0xb8

    if-ne p1, v1, :cond_53

    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    shr-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    and-int/lit8 v3, v2, 0x3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    :goto_26
    iget v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    if-le v1, v3, :cond_2c

    iput v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    :cond_2c
    iput v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    move v1, v2

    :cond_2f
    if-ne p1, v4, :cond_5c

    iget-boolean v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    if-nez v2, :cond_3d

    if-nez v1, :cond_3d

    invoke-static {p4}, Lbsh/org/objectweb/asm/CodeWriter;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lbsh/org/objectweb/asm/Item;->intVal:I

    :cond_3d
    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v2, v4, v0}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    shr-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lbsh/org/objectweb/asm/ByteVector;->put11(II)Lbsh/org/objectweb/asm/ByteVector;

    :goto_4b
    return-void

    :cond_4c
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p2, p3, p4}, Lbsh/org/objectweb/asm/ClassWriter;->newMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    goto :goto_a

    :cond_53
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    shr-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    and-int/lit8 v3, v2, 0x3

    add-int/2addr v1, v3

    goto :goto_26

    :cond_5c
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v1, p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_4b

    :cond_64
    move v2, v1

    goto :goto_18
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .registers 6

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    rsub-int/lit8 v1, p2, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    :cond_b
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v2, 0xc5

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v1, v2, v0}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitTableSwitchInsn(IILbsh/org/objectweb/asm/Label;[Lbsh/org/objectweb/asm/Label;)V
    .registers 10

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    if-eqz v0, :cond_22

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    iget v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    iput v2, v0, Lbsh/org/objectweb/asm/Label;->maxStackSize:I

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    invoke-direct {p0, v0, p3}, Lbsh/org/objectweb/asm/CodeWriter;->addSuccessor(ILbsh/org/objectweb/asm/Label;)V

    move v0, v1

    :goto_1c
    array-length v2, p4

    if-lt v0, v2, :cond_47

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    :cond_22
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v3, 0xaa

    invoke-virtual {v2, v3}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    :goto_2d
    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v2, v2, Lbsh/org/objectweb/asm/ByteVector;->length:I

    rem-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_51

    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {p3, p0, v2, v0, v4}, Lbsh/org/objectweb/asm/Label;->put(Lbsh/org/objectweb/asm/CodeWriter;Lbsh/org/objectweb/asm/ByteVector;IZ)V

    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v2, p1}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, p2}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    :goto_43
    array-length v2, p4

    if-lt v1, v2, :cond_57

    return-void

    :cond_47
    iget v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    aget-object v3, p4, v0

    invoke-direct {p0, v2, v3}, Lbsh/org/objectweb/asm/CodeWriter;->addSuccessor(ILbsh/org/objectweb/asm/Label;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_51
    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v2, v1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_2d

    :cond_57
    aget-object v2, p4, v1

    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v2, p0, v3, v0, v4}, Lbsh/org/objectweb/asm/Label;->put(Lbsh/org/objectweb/asm/CodeWriter;Lbsh/org/objectweb/asm/ByteVector;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_43
.end method

.method public visitTryCatchBlock(Lbsh/org/objectweb/asm/Label;Lbsh/org/objectweb/asm/Label;Lbsh/org/objectweb/asm/Label;Ljava/lang/String;)V
    .registers 7

    const/4 v1, 0x1

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p3, Lbsh/org/objectweb/asm/Label;->pushed:Z

    if-nez v0, :cond_13

    iput v1, p3, Lbsh/org/objectweb/asm/Label;->beginStackSize:I

    iput-boolean v1, p3, Lbsh/org/objectweb/asm/Label;->pushed:Z

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->blockStack:Lbsh/org/objectweb/asm/Label;

    iput-object v0, p3, Lbsh/org/objectweb/asm/Label;->next:Lbsh/org/objectweb/asm/Label;

    iput-object p3, p0, Lbsh/org/objectweb/asm/CodeWriter;->blockStack:Lbsh/org/objectweb/asm/Label;

    :cond_13
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchCount:I

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchTable:Lbsh/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_24

    new-instance v0, Lbsh/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchTable:Lbsh/org/objectweb/asm/ByteVector;

    :cond_24
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchTable:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, p1, Lbsh/org/objectweb/asm/Label;->position:I

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchTable:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, p2, Lbsh/org/objectweb/asm/Label;->position:I

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchTable:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, p3, Lbsh/org/objectweb/asm/Label;->position:I

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchTable:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz p4, :cond_49

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p4}, Lbsh/org/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->index:S

    :goto_45
    invoke-virtual {v1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    return-void

    :cond_49
    const/4 v0, 0x0

    goto :goto_45
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .registers 5

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    if-eqz v0, :cond_14

    const/16 v0, 0xbb

    if-ne p1, v0, :cond_14

    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    if-le v0, v1, :cond_12

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    :cond_12
    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    :cond_14
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v1, p2}, Lbsh/org/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v0, p1, v1}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitVarInsn(II)V
    .registers 6

    const/16 v2, 0xa9

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    if-eqz v0, :cond_2d

    if-ne p1, v2, :cond_43

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    iput v1, v0, Lbsh/org/objectweb/asm/Label;->maxStackSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    :cond_15
    :goto_15
    const/16 v0, 0x16

    if-eq p1, v0, :cond_25

    const/16 v0, 0x18

    if-eq p1, v0, :cond_25

    const/16 v0, 0x37

    if-eq p1, v0, :cond_25

    const/16 v0, 0x39

    if-ne p1, v0, :cond_53

    :cond_25
    add-int/lit8 v0, p2, 0x2

    :goto_27
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxLocals:I

    if-le v0, v1, :cond_2d

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxLocals:I

    :cond_2d
    const/4 v0, 0x4

    if-ge p2, v0, :cond_5e

    if-eq p1, v2, :cond_5e

    const/16 v0, 0x36

    if-ge p1, v0, :cond_56

    add-int/lit8 v0, p1, -0x15

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1a

    add-int/2addr v0, p2

    :goto_3d
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    :goto_42
    return-void

    :cond_43
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    sget-object v1, Lbsh/org/objectweb/asm/CodeWriter;->SIZE:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    if-le v0, v1, :cond_50

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    :cond_50
    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    goto :goto_15

    :cond_53
    add-int/lit8 v0, p2, 0x1

    goto :goto_27

    :cond_56
    add-int/lit8 v0, p1, -0x36

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3b

    add-int/2addr v0, p2

    goto :goto_3d

    :cond_5e
    const/16 v0, 0x100

    if-lt p2, v0, :cond_6e

    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_42

    :cond_6e
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put11(II)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_42
.end method
