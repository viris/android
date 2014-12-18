.class public Lbsh/org/objectweb/asm/Label;
.super Ljava/lang/Object;


# instance fields
.field beginStackSize:I

.field maxStackSize:I

.field next:Lbsh/org/objectweb/asm/Label;

.field owner:Lbsh/org/objectweb/asm/CodeWriter;

.field position:I

.field pushed:Z

.field private referenceCount:I

.field resolved:Z

.field private srcAndRefPositions:[I

.field successors:Lbsh/org/objectweb/asm/Edge;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addReference(II)V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lbsh/org/objectweb/asm/Label;->srcAndRefPositions:[I

    if-nez v0, :cond_a

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lbsh/org/objectweb/asm/Label;->srcAndRefPositions:[I

    :cond_a
    iget v0, p0, Lbsh/org/objectweb/asm/Label;->referenceCount:I

    iget-object v1, p0, Lbsh/org/objectweb/asm/Label;->srcAndRefPositions:[I

    array-length v1, v1

    if-lt v0, v1, :cond_22

    iget-object v0, p0, Lbsh/org/objectweb/asm/Label;->srcAndRefPositions:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x6

    new-array v0, v0, [I

    iget-object v1, p0, Lbsh/org/objectweb/asm/Label;->srcAndRefPositions:[I

    iget-object v2, p0, Lbsh/org/objectweb/asm/Label;->srcAndRefPositions:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lbsh/org/objectweb/asm/Label;->srcAndRefPositions:[I

    :cond_22
    iget-object v0, p0, Lbsh/org/objectweb/asm/Label;->srcAndRefPositions:[I

    iget v1, p0, Lbsh/org/objectweb/asm/Label;->referenceCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbsh/org/objectweb/asm/Label;->referenceCount:I

    aput p1, v0, v1

    iget-object v0, p0, Lbsh/org/objectweb/asm/Label;->srcAndRefPositions:[I

    iget v1, p0, Lbsh/org/objectweb/asm/Label;->referenceCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbsh/org/objectweb/asm/Label;->referenceCount:I

    aput p2, v0, v1

    return-void
.end method


# virtual methods
.method put(Lbsh/org/objectweb/asm/CodeWriter;Lbsh/org/objectweb/asm/ByteVector;IZ)V
    .registers 8

    const/4 v2, -0x1

    iget-boolean v0, p0, Lbsh/org/objectweb/asm/Label;->resolved:Z

    if-eqz v0, :cond_15

    if-eqz p4, :cond_e

    iget v0, p0, Lbsh/org/objectweb/asm/Label;->position:I

    sub-int/2addr v0, p3

    invoke-virtual {p2, v0}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    :goto_d
    return-void

    :cond_e
    iget v0, p0, Lbsh/org/objectweb/asm/Label;->position:I

    sub-int/2addr v0, p3

    invoke-virtual {p2, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_d

    :cond_15
    if-eqz p4, :cond_22

    rsub-int/lit8 v0, p3, -0x1

    iget v1, p2, Lbsh/org/objectweb/asm/ByteVector;->length:I

    invoke-direct {p0, v0, v1}, Lbsh/org/objectweb/asm/Label;->addReference(II)V

    invoke-virtual {p2, v2}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_d

    :cond_22
    iget v0, p2, Lbsh/org/objectweb/asm/ByteVector;->length:I

    invoke-direct {p0, p3, v0}, Lbsh/org/objectweb/asm/Label;->addReference(II)V

    invoke-virtual {p2, v2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_d
.end method

.method resolve(Lbsh/org/objectweb/asm/CodeWriter;I[B)Z
    .registers 11

    const/4 v2, 0x1

    const/4 v0, 0x0

    iput-boolean v2, p0, Lbsh/org/objectweb/asm/Label;->resolved:Z

    iput p2, p0, Lbsh/org/objectweb/asm/Label;->position:I

    move v1, v0

    :goto_7
    iget v3, p0, Lbsh/org/objectweb/asm/Label;->referenceCount:I

    if-lt v0, v3, :cond_c

    return v1

    :cond_c
    iget-object v3, p0, Lbsh/org/objectweb/asm/Label;->srcAndRefPositions:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v0

    iget-object v5, p0, Lbsh/org/objectweb/asm/Label;->srcAndRefPositions:[I

    add-int/lit8 v0, v4, 0x1

    aget v4, v5, v4

    if-ltz v3, :cond_49

    sub-int v3, p2, v3

    const/16 v5, -0x8000

    if-lt v3, v5, :cond_24

    const/16 v5, 0x7fff

    if-le v3, v5, :cond_36

    :cond_24
    add-int/lit8 v1, v4, -0x1

    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v5, 0xa8

    if-gt v1, v5, :cond_41

    add-int/lit8 v5, v4, -0x1

    add-int/lit8 v1, v1, 0x31

    int-to-byte v1, v1

    aput-byte v1, p3, v5

    :goto_35
    move v1, v2

    :cond_36
    add-int/lit8 v5, v4, 0x1

    ushr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v5

    goto :goto_7

    :cond_41
    add-int/lit8 v5, v4, -0x1

    add-int/lit8 v1, v1, 0x14

    int-to-byte v1, v1

    aput-byte v1, p3, v5

    goto :goto_35

    :cond_49
    add-int/2addr v3, p2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v4, 0x1

    ushr-int/lit8 v6, v3, 0x18

    int-to-byte v6, v6

    aput-byte v6, p3, v4

    add-int/lit8 v4, v5, 0x1

    ushr-int/lit8 v6, v3, 0x10

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    add-int/lit8 v5, v4, 0x1

    ushr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v5

    goto :goto_7
.end method
