.class public Lbsh/org/objectweb/asm/ClassWriter;
.super Ljava/lang/Object;

# interfaces
.implements Lbsh/org/objectweb/asm/ClassVisitor;


# static fields
.field static final CLASS:I = 0x7

.field static final DOUBLE:I = 0x6

.field static final FIELD:I = 0x9

.field static final FIELDORMETH_INSN:I = 0x6

.field static final FLOAT:I = 0x4

.field static final IINC_INSN:I = 0xc

.field static final IMETH:I = 0xb

.field static final IMPLVAR_INSN:I = 0x4

.field static final INT:I = 0x3

.field static final ITFMETH_INSN:I = 0x7

.field static final LABELW_INSN:I = 0x9

.field static final LABEL_INSN:I = 0x8

.field static final LDCW_INSN:I = 0xb

.field static final LDC_INSN:I = 0xa

.field static final LONG:I = 0x5

.field static final LOOK_INSN:I = 0xe

.field static final MANA_INSN:I = 0xf

.field static final METH:I = 0xa

.field static final NAME_TYPE:I = 0xc

.field static final NOARG_INSN:I = 0x0

.field static final SBYTE_INSN:I = 0x1

.field static final SHORT_INSN:I = 0x2

.field static final STR:I = 0x8

.field static final TABL_INSN:I = 0xd

.field static TYPE:[B = null

.field static final TYPE_INSN:I = 0x5

.field static final UTF8:I = 0x1

.field static final VAR_INSN:I = 0x3

.field static final WIDE_INSN:I = 0x10


# instance fields
.field private access:I

.field private computeMaxs:Z

.field private fieldCount:I

.field private fields:Lbsh/org/objectweb/asm/ByteVector;

.field firstMethod:Lbsh/org/objectweb/asm/CodeWriter;

.field private index:S

.field private innerClasses:Lbsh/org/objectweb/asm/ByteVector;

.field private innerClassesCount:I

.field private interfaceCount:I

.field private interfaces:[I

.field key:Lbsh/org/objectweb/asm/Item;

.field key2:Lbsh/org/objectweb/asm/Item;

.field key3:Lbsh/org/objectweb/asm/Item;

.field lastMethod:Lbsh/org/objectweb/asm/CodeWriter;

.field private name:I

.field private pool:Lbsh/org/objectweb/asm/ByteVector;

.field private sourceFile:Lbsh/org/objectweb/asm/Item;

.field private superName:I

.field private table:[Lbsh/org/objectweb/asm/Item;

.field private threshold:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0xdc

    new-array v1, v0, [B

    const-string v2, "AAAAAAAAAAAAAAAABCKLLDDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAADDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAIIIIIIIIIIIIIIIIDNOAAAAAAGGGGGGGHAFBFAAFFAAQPIIJJIIIIIIIIIIIIIIIIII"

    const/4 v0, 0x0

    :goto_7
    array-length v3, v1

    if-lt v0, v3, :cond_d

    sput-object v1, Lbsh/org/objectweb/asm/ClassWriter;->TYPE:[B

    return-void

    :cond_d
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x41

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public constructor <init>(Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-short v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    new-instance v0, Lbsh/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->pool:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v0, 0x40

    new-array v0, v0, [Lbsh/org/objectweb/asm/Item;

    iput-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->table:[Lbsh/org/objectweb/asm/Item;

    const-wide/high16 v0, 0x3fe8000000000000L

    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->table:[Lbsh/org/objectweb/asm/Item;

    array-length v2, v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->threshold:I

    new-instance v0, Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/Item;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    new-instance v0, Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/Item;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key2:Lbsh/org/objectweb/asm/Item;

    new-instance v0, Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/Item;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key3:Lbsh/org/objectweb/asm/Item;

    iput-boolean p1, p0, Lbsh/org/objectweb/asm/ClassWriter;->computeMaxs:Z

    return-void
.end method

.method private get(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;
    .registers 6

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->table:[Lbsh/org/objectweb/asm/Item;

    iget v1, p1, Lbsh/org/objectweb/asm/Item;->hashCode:I

    const v2, 0x7fffffff

    and-int/2addr v2, v1

    array-length v3, v0

    rem-int/2addr v2, v3

    aget-object v0, v0, v2

    :goto_c
    if-nez v0, :cond_10

    const/4 v0, 0x0

    :cond_f
    return-object v0

    :cond_10
    iget v2, v0, Lbsh/org/objectweb/asm/Item;->hashCode:I

    if-ne v2, v1, :cond_1a

    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/Item;->isEqualTo(Lbsh/org/objectweb/asm/Item;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_1a
    iget-object v0, v0, Lbsh/org/objectweb/asm/Item;->next:Lbsh/org/objectweb/asm/Item;

    goto :goto_c
.end method

.method private newDouble(D)Lbsh/org/objectweb/asm/Item;
    .registers 6

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    invoke-virtual {v0, p1, p2}, Lbsh/org/objectweb/asm/Item;->set(D)V

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->get(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->pool:Lbsh/org/objectweb/asm/ByteVector;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbsh/org/objectweb/asm/ByteVector;->put8(J)Lbsh/org/objectweb/asm/ByteVector;

    new-instance v0, Lbsh/org/objectweb/asm/Item;

    iget-short v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->put(Lbsh/org/objectweb/asm/Item;)V

    iget-short v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    add-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    iput-short v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    :cond_2e
    return-object v0
.end method

.method private newFloat(F)Lbsh/org/objectweb/asm/Item;
    .registers 5

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/Item;->set(F)V

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->get(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->pool:Lbsh/org/objectweb/asm/ByteVector;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    new-instance v0, Lbsh/org/objectweb/asm/Item;

    iget-short v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->put(Lbsh/org/objectweb/asm/Item;)V

    :cond_2c
    return-object v0
.end method

.method private newInteger(I)Lbsh/org/objectweb/asm/Item;
    .registers 5

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/Item;->set(I)V

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->get(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->pool:Lbsh/org/objectweb/asm/ByteVector;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    new-instance v0, Lbsh/org/objectweb/asm/Item;

    iget-short v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->put(Lbsh/org/objectweb/asm/Item;)V

    :cond_28
    return-object v0
.end method

.method private newLong(J)Lbsh/org/objectweb/asm/Item;
    .registers 6

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    invoke-virtual {v0, p1, p2}, Lbsh/org/objectweb/asm/Item;->set(J)V

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->get(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->pool:Lbsh/org/objectweb/asm/ByteVector;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put8(J)Lbsh/org/objectweb/asm/ByteVector;

    new-instance v0, Lbsh/org/objectweb/asm/Item;

    iget-short v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->put(Lbsh/org/objectweb/asm/Item;)V

    iget-short v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    add-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    iput-short v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    :cond_2a
    return-object v0
.end method

.method private newNameType(Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;
    .registers 6

    const/16 v2, 0xc

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key2:Lbsh/org/objectweb/asm/Item;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, p2, v1}, Lbsh/org/objectweb/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key2:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->get(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_30

    invoke-virtual {p0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {p0, p2}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-direct {p0, v2, v0, v1}, Lbsh/org/objectweb/asm/ClassWriter;->put122(III)V

    new-instance v0, Lbsh/org/objectweb/asm/Item;

    iget-short v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->key2:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->put(Lbsh/org/objectweb/asm/Item;)V

    :cond_30
    return-object v0
.end method

.method private newString(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;
    .registers 5

    const/4 v1, 0x0

    const/16 v2, 0x8

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key2:Lbsh/org/objectweb/asm/Item;

    invoke-virtual {v0, v2, p1, v1, v1}, Lbsh/org/objectweb/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key2:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->get(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->pool:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {p0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v0, v2, v1}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    new-instance v0, Lbsh/org/objectweb/asm/Item;

    iget-short v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->key2:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->put(Lbsh/org/objectweb/asm/Item;)V

    :cond_2c
    return-object v0
.end method

.method private put(Lbsh/org/objectweb/asm/Item;)V
    .registers 11

    const v8, 0x7fffffff

    iget-short v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    iget v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->threshold:I

    if-le v0, v1, :cond_21

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->table:[Lbsh/org/objectweb/asm/Item;

    array-length v0, v0

    iget-object v3, p0, Lbsh/org/objectweb/asm/ClassWriter;->table:[Lbsh/org/objectweb/asm/Item;

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v4, v1, 0x1

    new-array v5, v4, [Lbsh/org/objectweb/asm/Item;

    int-to-double v1, v4

    const-wide/high16 v6, 0x3fe8000000000000L

    mul-double/2addr v1, v6

    double-to-int v1, v1

    iput v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->threshold:I

    iput-object v5, p0, Lbsh/org/objectweb/asm/ClassWriter;->table:[Lbsh/org/objectweb/asm/Item;

    :goto_1d
    add-int/lit8 v2, v0, -0x1

    if-gtz v0, :cond_33

    :cond_21
    iget v0, p1, Lbsh/org/objectweb/asm/Item;->hashCode:I

    and-int/2addr v0, v8

    iget-object v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->table:[Lbsh/org/objectweb/asm/Item;

    array-length v1, v1

    rem-int/2addr v0, v1

    iget-object v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->table:[Lbsh/org/objectweb/asm/Item;

    aget-object v1, v1, v0

    iput-object v1, p1, Lbsh/org/objectweb/asm/Item;->next:Lbsh/org/objectweb/asm/Item;

    iget-object v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->table:[Lbsh/org/objectweb/asm/Item;

    aput-object p1, v1, v0

    return-void

    :cond_33
    aget-object v0, v3, v2

    :goto_35
    if-nez v0, :cond_39

    move v0, v2

    goto :goto_1d

    :cond_39
    iget-object v1, v0, Lbsh/org/objectweb/asm/Item;->next:Lbsh/org/objectweb/asm/Item;

    iget v6, v0, Lbsh/org/objectweb/asm/Item;->hashCode:I

    and-int/2addr v6, v8

    rem-int/2addr v6, v4

    aget-object v7, v5, v6

    iput-object v7, v0, Lbsh/org/objectweb/asm/Item;->next:Lbsh/org/objectweb/asm/Item;

    aput-object v0, v5, v6

    move-object v0, v1

    goto :goto_35
.end method

.method private put122(III)V
    .registers 5

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->pool:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p3}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    return-void
.end method


# virtual methods
.method newClass(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;
    .registers 5

    const/4 v1, 0x0

    const/4 v2, 0x7

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key2:Lbsh/org/objectweb/asm/Item;

    invoke-virtual {v0, v2, p1, v1, v1}, Lbsh/org/objectweb/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key2:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->get(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->pool:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {p0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v0, v2, v1}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    new-instance v0, Lbsh/org/objectweb/asm/Item;

    iget-short v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->key2:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->put(Lbsh/org/objectweb/asm/Item;)V

    :cond_2b
    return-object v0
.end method

.method newCst(Ljava/lang/Object;)Lbsh/org/objectweb/asm/Item;
    .registers 5

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->newInteger(I)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1e

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->newFloat(F)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    goto :goto_e

    :cond_1e
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2d

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lbsh/org/objectweb/asm/ClassWriter;->newLong(J)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    goto :goto_e

    :cond_2d
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3c

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lbsh/org/objectweb/asm/ClassWriter;->newDouble(D)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    goto :goto_e

    :cond_3c
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_47

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->newString(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    goto :goto_e

    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method newField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;
    .registers 7

    const/16 v2, 0x9

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key3:Lbsh/org/objectweb/asm/Item;

    invoke-virtual {v0, v2, p1, p2, p3}, Lbsh/org/objectweb/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key3:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->get(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_2f

    invoke-virtual {p0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-direct {p0, p2, p3}, Lbsh/org/objectweb/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-direct {p0, v2, v0, v1}, Lbsh/org/objectweb/asm/ClassWriter;->put122(III)V

    new-instance v0, Lbsh/org/objectweb/asm/Item;

    iget-short v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->key3:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->put(Lbsh/org/objectweb/asm/Item;)V

    :cond_2f
    return-object v0
.end method

.method newItfMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;
    .registers 7

    const/16 v2, 0xb

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key3:Lbsh/org/objectweb/asm/Item;

    invoke-virtual {v0, v2, p1, p2, p3}, Lbsh/org/objectweb/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key3:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->get(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_2f

    invoke-virtual {p0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-direct {p0, p2, p3}, Lbsh/org/objectweb/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-direct {p0, v2, v0, v1}, Lbsh/org/objectweb/asm/ClassWriter;->put122(III)V

    new-instance v0, Lbsh/org/objectweb/asm/Item;

    iget-short v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->key3:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->put(Lbsh/org/objectweb/asm/Item;)V

    :cond_2f
    return-object v0
.end method

.method newMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;
    .registers 7

    const/16 v2, 0xa

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key3:Lbsh/org/objectweb/asm/Item;

    invoke-virtual {v0, v2, p1, p2, p3}, Lbsh/org/objectweb/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key3:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->get(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_2f

    invoke-virtual {p0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-direct {p0, p2, p3}, Lbsh/org/objectweb/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-direct {p0, v2, v0, v1}, Lbsh/org/objectweb/asm/ClassWriter;->put122(III)V

    new-instance v0, Lbsh/org/objectweb/asm/Item;

    iget-short v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->key3:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->put(Lbsh/org/objectweb/asm/Item;)V

    :cond_2f
    return-object v0
.end method

.method newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    invoke-virtual {v0, v1, p1, v2, v2}, Lbsh/org/objectweb/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->get(Lbsh/org/objectweb/asm/Item;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->pool:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/ByteVector;->putUTF(Ljava/lang/String;)Lbsh/org/objectweb/asm/ByteVector;

    new-instance v0, Lbsh/org/objectweb/asm/Item;

    iget-short v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->key:Lbsh/org/objectweb/asm/Item;

    invoke-direct {v0, v1, v2}, Lbsh/org/objectweb/asm/Item;-><init>(SLbsh/org/objectweb/asm/Item;)V

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->put(Lbsh/org/objectweb/asm/Item;)V

    :cond_29
    return-object v0
.end method

.method public toByteArray()[B
    .registers 9

    const/high16 v7, 0x20000

    const/4 v1, 0x0

    iget v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->interfaceCount:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x18

    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->fields:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->fields:Lbsh/org/objectweb/asm/ByteVector;

    iget v2, v2, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/2addr v0, v2

    :cond_12
    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->firstMethod:Lbsh/org/objectweb/asm/CodeWriter;

    move v3, v1

    move v4, v0

    move-object v0, v2

    :goto_17
    if-nez v0, :cond_f8

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->pool:Lbsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int v2, v4, v0

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->sourceFile:Lbsh/org/objectweb/asm/Item;

    if-eqz v0, :cond_116

    const/4 v0, 0x1

    add-int/lit8 v2, v2, 0x8

    :goto_26
    iget v4, p0, Lbsh/org/objectweb/asm/ClassWriter;->access:I

    and-int/2addr v4, v7

    if-eqz v4, :cond_2f

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x6

    :cond_2f
    iget-object v4, p0, Lbsh/org/objectweb/asm/ClassWriter;->innerClasses:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v4, :cond_3c

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lbsh/org/objectweb/asm/ClassWriter;->innerClasses:Lbsh/org/objectweb/asm/ByteVector;

    iget v4, v4, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v4, v4, 0x8

    add-int/2addr v2, v4

    :cond_3c
    new-instance v4, Lbsh/org/objectweb/asm/ByteVector;

    invoke-direct {v4, v2}, Lbsh/org/objectweb/asm/ByteVector;-><init>(I)V

    const v2, -0x35014542

    invoke-virtual {v4, v2}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v2

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v2

    const/16 v5, 0x2d

    invoke-virtual {v2, v5}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-short v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->index:S

    invoke-virtual {v4, v2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v2

    iget-object v5, p0, Lbsh/org/objectweb/asm/ClassWriter;->pool:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v5, v5, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    iget-object v6, p0, Lbsh/org/objectweb/asm/ClassWriter;->pool:Lbsh/org/objectweb/asm/ByteVector;

    iget v6, v6, Lbsh/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v2, v5, v1, v6}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    iget v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->access:I

    invoke-virtual {v4, v2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v2

    iget v5, p0, Lbsh/org/objectweb/asm/ClassWriter;->name:I

    invoke-virtual {v2, v5}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v2

    iget v5, p0, Lbsh/org/objectweb/asm/ClassWriter;->superName:I

    invoke-virtual {v2, v5}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->interfaceCount:I

    invoke-virtual {v4, v2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move v2, v1

    :goto_7a
    iget v5, p0, Lbsh/org/objectweb/asm/ClassWriter;->interfaceCount:I

    if-lt v2, v5, :cond_105

    iget v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->fieldCount:I

    invoke-virtual {v4, v2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->fields:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_92

    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->fields:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v2, v2, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    iget-object v5, p0, Lbsh/org/objectweb/asm/ClassWriter;->fields:Lbsh/org/objectweb/asm/ByteVector;

    iget v5, v5, Lbsh/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v4, v2, v1, v5}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    :cond_92
    invoke-virtual {v4, v3}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->firstMethod:Lbsh/org/objectweb/asm/CodeWriter;

    :goto_97
    if-nez v2, :cond_110

    invoke-virtual {v4, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->sourceFile:Lbsh/org/objectweb/asm/Item;

    if-eqz v0, :cond_b8

    const-string v0, "SourceFile"

    invoke-virtual {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v4, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->sourceFile:Lbsh/org/objectweb/asm/Item;

    iget-short v2, v2, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v0, v2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    :cond_b8
    iget v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->access:I

    and-int/2addr v0, v7

    if-eqz v0, :cond_cc

    const-string v0, "Deprecated"

    invoke-virtual {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v4, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    :cond_cc
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->innerClasses:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v0, :cond_f5

    const-string v0, "InnerClasses"

    invoke-virtual {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v4, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->innerClasses:Lbsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v4, v0}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->innerClassesCount:I

    invoke-virtual {v0, v2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->innerClasses:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, v0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->innerClasses:Lbsh/org/objectweb/asm/ByteVector;

    iget v2, v2, Lbsh/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v4, v0, v1, v2}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    :cond_f5
    iget-object v0, v4, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    return-object v0

    :cond_f8
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0}, Lbsh/org/objectweb/asm/CodeWriter;->getSize()I

    move-result v3

    add-int/2addr v3, v4

    iget-object v0, v0, Lbsh/org/objectweb/asm/CodeWriter;->next:Lbsh/org/objectweb/asm/CodeWriter;

    move v4, v3

    move v3, v2

    goto/16 :goto_17

    :cond_105
    iget-object v5, p0, Lbsh/org/objectweb/asm/ClassWriter;->interfaces:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7a

    :cond_110
    invoke-virtual {v2, v4}, Lbsh/org/objectweb/asm/CodeWriter;->put(Lbsh/org/objectweb/asm/ByteVector;)V

    iget-object v2, v2, Lbsh/org/objectweb/asm/CodeWriter;->next:Lbsh/org/objectweb/asm/CodeWriter;

    goto :goto_97

    :cond_116
    move v0, v1

    goto/16 :goto_26
.end method

.method public visit(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v1, 0x0

    iput p1, p0, Lbsh/org/objectweb/asm/ClassWriter;->access:I

    invoke-virtual {p0, p2}, Lbsh/org/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->index:S

    iput v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->name:I

    if-nez p3, :cond_3a

    move v0, v1

    :goto_e
    iput v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->superName:I

    if-eqz p4, :cond_22

    array-length v0, p4

    if-lez v0, :cond_22

    array-length v0, p4

    iput v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->interfaceCount:I

    iget v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->interfaceCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->interfaces:[I

    :goto_1e
    iget v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->interfaceCount:I

    if-lt v1, v0, :cond_41

    :cond_22
    if-eqz p5, :cond_2f

    const-string v0, "SourceFile"

    invoke-virtual {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    invoke-virtual {p0, p5}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iput-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->sourceFile:Lbsh/org/objectweb/asm/Item;

    :cond_2f
    const/high16 v0, 0x20000

    and-int/2addr v0, p1

    if-eqz v0, :cond_39

    const-string v0, "Deprecated"

    invoke-virtual {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    :cond_39
    return-void

    :cond_3a
    invoke-virtual {p0, p3}, Lbsh/org/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->index:S

    goto :goto_e

    :cond_41
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->interfaces:[I

    aget-object v2, p4, v1

    invoke-virtual {p0, v2}, Lbsh/org/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v2

    iget-short v2, v2, Lbsh/org/objectweb/asm/Item;->index:S

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e
.end method

.method public visitEnd()V
    .registers 1

    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10

    const/high16 v4, 0x20000

    const/high16 v3, 0x10000

    const/4 v1, 0x0

    iget v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->fieldCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->fieldCount:I

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->fields:Lbsh/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_16

    new-instance v0, Lbsh/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->fields:Lbsh/org/objectweb/asm/ByteVector;

    :cond_16
    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->fields:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {p0, p2}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v2

    iget-short v2, v2, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v0, v2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {p0, p3}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v2

    iget-short v2, v2, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v0, v2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    if-eqz p4, :cond_8d

    const/4 v0, 0x1

    :goto_32
    and-int v2, p1, v3

    if-eqz v2, :cond_38

    add-int/lit8 v0, v0, 0x1

    :cond_38
    and-int v2, p1, v4

    if-eqz v2, :cond_3e

    add-int/lit8 v0, v0, 0x1

    :cond_3e
    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->fields:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v2, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    if-eqz p4, :cond_62

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->fields:Lbsh/org/objectweb/asm/ByteVector;

    const-string v2, "ConstantValue"

    invoke-virtual {p0, v2}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v2

    iget-short v2, v2, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v0, v2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->fields:Lbsh/org/objectweb/asm/ByteVector;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {p0, p4}, Lbsh/org/objectweb/asm/ClassWriter;->newCst(Ljava/lang/Object;)Lbsh/org/objectweb/asm/Item;

    move-result-object v2

    iget-short v2, v2, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v0, v2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    :cond_62
    and-int v0, p1, v3

    if-eqz v0, :cond_77

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->fields:Lbsh/org/objectweb/asm/ByteVector;

    const-string v2, "Synthetic"

    invoke-virtual {p0, v2}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v2

    iget-short v2, v2, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v0, v2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    :cond_77
    and-int v0, p1, v4

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->fields:Lbsh/org/objectweb/asm/ByteVector;

    const-string v2, "Deprecated"

    invoke-virtual {p0, v2}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v2

    iget-short v2, v2, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v0, v2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    :cond_8c
    return-void

    :cond_8d
    move v0, v1

    goto :goto_32
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->innerClasses:Lbsh/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_11

    const-string v0, "InnerClasses"

    invoke-virtual {p0, v0}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    new-instance v0, Lbsh/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->innerClasses:Lbsh/org/objectweb/asm/ByteVector;

    :cond_11
    iget v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->innerClassesCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->innerClassesCount:I

    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->innerClasses:Lbsh/org/objectweb/asm/ByteVector;

    if-nez p1, :cond_34

    move v0, v1

    :goto_1c
    invoke-virtual {v2, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v2, p0, Lbsh/org/objectweb/asm/ClassWriter;->innerClasses:Lbsh/org/objectweb/asm/ByteVector;

    if-nez p2, :cond_3b

    move v0, v1

    :goto_24
    invoke-virtual {v2, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->innerClasses:Lbsh/org/objectweb/asm/ByteVector;

    if-nez p3, :cond_42

    :goto_2b
    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, p0, Lbsh/org/objectweb/asm/ClassWriter;->innerClasses:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p4}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    return-void

    :cond_34
    invoke-virtual {p0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->index:S

    goto :goto_1c

    :cond_3b
    invoke-virtual {p0, p2}, Lbsh/org/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iget-short v0, v0, Lbsh/org/objectweb/asm/Item;->index:S

    goto :goto_24

    :cond_42
    invoke-virtual {p0, p3}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lbsh/org/objectweb/asm/Item;->index:S

    goto :goto_2b
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbsh/org/objectweb/asm/CodeVisitor;
    .registers 7

    new-instance v0, Lbsh/org/objectweb/asm/CodeWriter;

    iget-boolean v1, p0, Lbsh/org/objectweb/asm/ClassWriter;->computeMaxs:Z

    invoke-direct {v0, p0, v1}, Lbsh/org/objectweb/asm/CodeWriter;-><init>(Lbsh/org/objectweb/asm/ClassWriter;Z)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lbsh/org/objectweb/asm/CodeWriter;->init(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method
