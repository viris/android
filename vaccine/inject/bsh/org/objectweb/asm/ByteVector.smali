.class final Lbsh/org/objectweb/asm/ByteVector;
.super Ljava/lang/Object;


# instance fields
.field data:[B

.field length:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    return-void
.end method

.method private enlarge(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    iget v2, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    return-void
.end method


# virtual methods
.method public put1(I)Lbsh/org/objectweb/asm/ByteVector;
    .registers 6

    iget v0, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_d

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lbsh/org/objectweb/asm/ByteVector;->enlarge(I)V

    :cond_d
    iget-object v1, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v0

    iput v2, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method public put11(II)Lbsh/org/objectweb/asm/ByteVector;
    .registers 7

    iget v0, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_d

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lbsh/org/objectweb/asm/ByteVector;->enlarge(I)V

    :cond_d
    iget-object v1, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, p2

    aput-byte v3, v1, v2

    iput v0, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method public put12(II)Lbsh/org/objectweb/asm/ByteVector;
    .registers 7

    iget v0, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_d

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lbsh/org/objectweb/asm/ByteVector;->enlarge(I)V

    :cond_d
    iget-object v1, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    ushr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p2

    aput-byte v3, v1, v0

    iput v2, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method public put2(I)Lbsh/org/objectweb/asm/ByteVector;
    .registers 6

    iget v0, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_d

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lbsh/org/objectweb/asm/ByteVector;->enlarge(I)V

    :cond_d
    iget-object v1, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    iput v0, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method public put4(I)Lbsh/org/objectweb/asm/ByteVector;
    .registers 6

    iget v0, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_d

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lbsh/org/objectweb/asm/ByteVector;->enlarge(I)V

    :cond_d
    iget-object v1, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    ushr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    iput v0, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method public put8(J)Lbsh/org/objectweb/asm/ByteVector;
    .registers 8

    iget v0, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v0, 0x8

    iget-object v2, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_e

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lbsh/org/objectweb/asm/ByteVector;->enlarge(I)V

    :cond_e
    iget-object v1, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 v0, v3, 0x1

    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 v0, v3, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    long-to-int v2, p1

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 v0, v3, 0x1

    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 v0, v3, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    iput v0, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;
    .registers 6

    iget v0, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    array-length v1, v1

    if-le v0, v1, :cond_b

    invoke-direct {p0, p3}, Lbsh/org/objectweb/asm/ByteVector;->enlarge(I)V

    :cond_b
    if-eqz p1, :cond_14

    iget-object v0, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    iget v1, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_14
    iget v0, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr v0, p3

    iput v0, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    return-object p0
.end method

.method public putUTF(Ljava/lang/String;)Lbsh/org/objectweb/asm/ByteVector;
    .registers 12

    const/16 v9, 0x7ff

    const/16 v8, 0x7f

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    move v2, v1

    move v3, v1

    :goto_c
    if-lt v2, v4, :cond_19

    const v0, 0xffff

    if-le v3, v0, :cond_2f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_19
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v7, :cond_27

    if-gt v0, v8, :cond_27

    add-int/lit8 v0, v3, 0x1

    :goto_23
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_c

    :cond_27
    if-le v0, v9, :cond_2c

    add-int/lit8 v0, v3, 0x3

    goto :goto_23

    :cond_2c
    add-int/lit8 v0, v3, 0x2

    goto :goto_23

    :cond_2f
    iget v0, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v3

    iget-object v5, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    array-length v5, v5

    if-le v2, v5, :cond_3e

    add-int/lit8 v2, v3, 0x2

    invoke-direct {p0, v2}, Lbsh/org/objectweb/asm/ByteVector;->enlarge(I)V

    :cond_3e
    iget-object v5, p0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    move v2, v0

    :goto_4d
    if-lt v1, v4, :cond_52

    iput v2, p0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    return-object p0

    :cond_52
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_63

    if-gt v3, v8, :cond_63

    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    :goto_5f
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_4d

    :cond_63
    if-le v3, v9, :cond_85

    add-int/lit8 v0, v2, 0x1

    shr-int/lit8 v6, v3, 0xc

    and-int/lit8 v6, v6, 0xf

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v6, v3, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    add-int/lit8 v0, v2, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    goto :goto_5f

    :cond_85
    add-int/lit8 v6, v2, 0x1

    shr-int/lit8 v0, v3, 0x6

    and-int/lit8 v0, v0, 0x1f

    or-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    aput-byte v0, v5, v2

    add-int/lit8 v0, v6, 0x1

    and-int/lit8 v2, v3, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v5, v6

    goto :goto_5f
.end method
