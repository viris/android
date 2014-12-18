.class public Lbsh/org/objectweb/asm/Type;
.super Ljava/lang/Object;


# static fields
.field public static final ARRAY:I = 0x9

.field public static final BOOLEAN:I = 0x1

.field public static final BOOLEAN_TYPE:Lbsh/org/objectweb/asm/Type;

.field public static final BYTE:I = 0x3

.field public static final BYTE_TYPE:Lbsh/org/objectweb/asm/Type;

.field public static final CHAR:I = 0x2

.field public static final CHAR_TYPE:Lbsh/org/objectweb/asm/Type;

.field public static final DOUBLE:I = 0x8

.field public static final DOUBLE_TYPE:Lbsh/org/objectweb/asm/Type;

.field public static final FLOAT:I = 0x6

.field public static final FLOAT_TYPE:Lbsh/org/objectweb/asm/Type;

.field public static final INT:I = 0x5

.field public static final INT_TYPE:Lbsh/org/objectweb/asm/Type;

.field public static final LONG:I = 0x7

.field public static final LONG_TYPE:Lbsh/org/objectweb/asm/Type;

.field public static final OBJECT:I = 0xa

.field public static final SHORT:I = 0x4

.field public static final SHORT_TYPE:Lbsh/org/objectweb/asm/Type;

.field public static final VOID:I

.field public static final VOID_TYPE:Lbsh/org/objectweb/asm/Type;


# instance fields
.field private buf:[C

.field private len:I

.field private off:I

.field private final sort:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lbsh/org/objectweb/asm/Type;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbsh/org/objectweb/asm/Type;-><init>(I)V

    sput-object v0, Lbsh/org/objectweb/asm/Type;->VOID_TYPE:Lbsh/org/objectweb/asm/Type;

    new-instance v0, Lbsh/org/objectweb/asm/Type;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbsh/org/objectweb/asm/Type;-><init>(I)V

    sput-object v0, Lbsh/org/objectweb/asm/Type;->BOOLEAN_TYPE:Lbsh/org/objectweb/asm/Type;

    new-instance v0, Lbsh/org/objectweb/asm/Type;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lbsh/org/objectweb/asm/Type;-><init>(I)V

    sput-object v0, Lbsh/org/objectweb/asm/Type;->CHAR_TYPE:Lbsh/org/objectweb/asm/Type;

    new-instance v0, Lbsh/org/objectweb/asm/Type;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lbsh/org/objectweb/asm/Type;-><init>(I)V

    sput-object v0, Lbsh/org/objectweb/asm/Type;->BYTE_TYPE:Lbsh/org/objectweb/asm/Type;

    new-instance v0, Lbsh/org/objectweb/asm/Type;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lbsh/org/objectweb/asm/Type;-><init>(I)V

    sput-object v0, Lbsh/org/objectweb/asm/Type;->SHORT_TYPE:Lbsh/org/objectweb/asm/Type;

    new-instance v0, Lbsh/org/objectweb/asm/Type;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lbsh/org/objectweb/asm/Type;-><init>(I)V

    sput-object v0, Lbsh/org/objectweb/asm/Type;->INT_TYPE:Lbsh/org/objectweb/asm/Type;

    new-instance v0, Lbsh/org/objectweb/asm/Type;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lbsh/org/objectweb/asm/Type;-><init>(I)V

    sput-object v0, Lbsh/org/objectweb/asm/Type;->FLOAT_TYPE:Lbsh/org/objectweb/asm/Type;

    new-instance v0, Lbsh/org/objectweb/asm/Type;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lbsh/org/objectweb/asm/Type;-><init>(I)V

    sput-object v0, Lbsh/org/objectweb/asm/Type;->LONG_TYPE:Lbsh/org/objectweb/asm/Type;

    new-instance v0, Lbsh/org/objectweb/asm/Type;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lbsh/org/objectweb/asm/Type;-><init>(I)V

    sput-object v0, Lbsh/org/objectweb/asm/Type;->DOUBLE_TYPE:Lbsh/org/objectweb/asm/Type;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbsh/org/objectweb/asm/Type;->sort:I

    const/4 v0, 0x1

    iput v0, p0, Lbsh/org/objectweb/asm/Type;->len:I

    return-void
.end method

.method private constructor <init>(I[CII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbsh/org/objectweb/asm/Type;->sort:I

    iput-object p2, p0, Lbsh/org/objectweb/asm/Type;->buf:[C

    iput p3, p0, Lbsh/org/objectweb/asm/Type;->off:I

    iput p4, p0, Lbsh/org/objectweb/asm/Type;->len:I

    return-void
.end method

.method public static getArgumentTypes(Ljava/lang/String;)[Lbsh/org/objectweb/asm/Type;
    .registers 9

    const/16 v7, 0x29

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    move v0, v1

    move v2, v3

    :goto_a
    add-int/lit8 v4, v2, 0x1

    aget-char v2, v5, v2

    if-ne v2, v7, :cond_17

    new-array v0, v0, [Lbsh/org/objectweb/asm/Type;

    :goto_12
    aget-char v2, v5, v3

    if-ne v2, v7, :cond_2e

    return-object v0

    :cond_17
    const/16 v6, 0x4c

    if-ne v2, v6, :cond_26

    :goto_1b
    add-int/lit8 v2, v4, 0x1

    aget-char v4, v5, v4

    const/16 v6, 0x3b

    if-ne v4, v6, :cond_3e

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_26
    const/16 v6, 0x5b

    if-eq v2, v6, :cond_3c

    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto :goto_a

    :cond_2e
    invoke-static {v5, v3}, Lbsh/org/objectweb/asm/Type;->getType([CI)Lbsh/org/objectweb/asm/Type;

    move-result-object v2

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    iget v2, v2, Lbsh/org/objectweb/asm/Type;->len:I

    add-int/2addr v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_3c
    move v2, v4

    goto :goto_a

    :cond_3e
    move v4, v2

    goto :goto_1b
.end method

.method public static getArgumentTypes(Ljava/lang/reflect/Method;)[Lbsh/org/objectweb/asm/Type;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v0, v1

    new-array v2, v0, [Lbsh/org/objectweb/asm/Type;

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-gez v0, :cond_d

    return-object v2

    :cond_d
    aget-object v3, v1, v0

    invoke-static {v3}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_a
.end method

.method public static getDescriptor(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v0, p0}, Lbsh/org/objectweb/asm/Type;->getDescriptor(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDescriptor(Ljava/lang/StringBuffer;)V
    .registers 5

    iget v0, p0, Lbsh/org/objectweb/asm/Type;->sort:I

    packed-switch v0, :pswitch_data_46

    iget-object v0, p0, Lbsh/org/objectweb/asm/Type;->buf:[C

    iget v1, p0, Lbsh/org/objectweb/asm/Type;->off:I

    iget v2, p0, Lbsh/org/objectweb/asm/Type;->len:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :goto_e
    return-void

    :pswitch_f
    const/16 v0, 0x56

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_e

    :pswitch_15
    const/16 v0, 0x5a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_e

    :pswitch_1b
    const/16 v0, 0x43

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_e

    :pswitch_21
    const/16 v0, 0x42

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_e

    :pswitch_27
    const/16 v0, 0x53

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_e

    :pswitch_2d
    const/16 v0, 0x49

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_e

    :pswitch_33
    const/16 v0, 0x46

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_e

    :pswitch_39
    const/16 v0, 0x4a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_e

    :pswitch_3f
    const/16 v0, 0x44

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_e

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_f
        :pswitch_15
        :pswitch_1b
        :pswitch_21
        :pswitch_27
        :pswitch_2d
        :pswitch_33
        :pswitch_39
        :pswitch_3f
    .end packed-switch
.end method

.method private static getDescriptor(Ljava/lang/StringBuffer;Ljava/lang/Class;)V
    .registers 7

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_44

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_10

    const/16 v0, 0x49

    :goto_c
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_f
    return-void

    :cond_10
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_17

    const/16 v0, 0x56

    goto :goto_c

    :cond_17
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1e

    const/16 v0, 0x5a

    goto :goto_c

    :cond_1e
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_25

    const/16 v0, 0x42

    goto :goto_c

    :cond_25
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2c

    const/16 v0, 0x43

    goto :goto_c

    :cond_2c
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_33

    const/16 v0, 0x53

    goto :goto_c

    :cond_33
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3a

    const/16 v0, 0x44

    goto :goto_c

    :cond_3a
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_41

    const/16 v0, 0x46

    goto :goto_c

    :cond_41
    const/16 v0, 0x4a

    goto :goto_c

    :cond_44
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_54

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_54
    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_63
    if-lt v1, v3, :cond_6b

    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_f

    :cond_6b
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2e

    if-ne v0, v4, :cond_75

    const/16 v0, 0x2f

    :cond_75
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_63
.end method

.method public static getInternalName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMethodDescriptor(Lbsh/org/objectweb/asm/Type;[Lbsh/org/objectweb/asm/Type;)Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_b
    array-length v2, p1

    if-lt v0, v2, :cond_1b

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-direct {p0, v1}, Lbsh/org/objectweb/asm/Type;->getDescriptor(Ljava/lang/StringBuffer;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1b
    aget-object v2, p1, v0

    invoke-direct {v2, v1}, Lbsh/org/objectweb/asm/Type;->getDescriptor(Ljava/lang/StringBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public static getMethodDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v0, 0x28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_f
    array-length v3, v1

    if-lt v0, v3, :cond_23

    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v2, v0}, Lbsh/org/objectweb/asm/Type;->getDescriptor(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_23
    aget-object v3, v1, v0

    invoke-static {v2, v3}, Lbsh/org/objectweb/asm/Type;->getDescriptor(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method public static getReturnType(Ljava/lang/String;)Lbsh/org/objectweb/asm/Type;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lbsh/org/objectweb/asm/Type;->getType([CI)Lbsh/org/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getReturnType(Ljava/lang/reflect/Method;)Lbsh/org/objectweb/asm/Type;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_41

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_d

    sget-object v0, Lbsh/org/objectweb/asm/Type;->INT_TYPE:Lbsh/org/objectweb/asm/Type;

    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_14

    sget-object v0, Lbsh/org/objectweb/asm/Type;->VOID_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_c

    :cond_14
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1b

    sget-object v0, Lbsh/org/objectweb/asm/Type;->BOOLEAN_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_c

    :cond_1b
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_22

    sget-object v0, Lbsh/org/objectweb/asm/Type;->BYTE_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_c

    :cond_22
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_29

    sget-object v0, Lbsh/org/objectweb/asm/Type;->CHAR_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_c

    :cond_29
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_30

    sget-object v0, Lbsh/org/objectweb/asm/Type;->SHORT_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_c

    :cond_30
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_37

    sget-object v0, Lbsh/org/objectweb/asm/Type;->DOUBLE_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_c

    :cond_37
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3e

    sget-object v0, Lbsh/org/objectweb/asm/Type;->FLOAT_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_c

    :cond_3e
    sget-object v0, Lbsh/org/objectweb/asm/Type;->LONG_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_c

    :cond_41
    invoke-static {p0}, Lbsh/org/objectweb/asm/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/String;)Lbsh/org/objectweb/asm/Type;

    move-result-object v0

    goto :goto_c
.end method

.method public static getType(Ljava/lang/String;)Lbsh/org/objectweb/asm/Type;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbsh/org/objectweb/asm/Type;->getType([CI)Lbsh/org/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method private static getType([CI)Lbsh/org/objectweb/asm/Type;
    .registers 6

    const/16 v3, 0x3b

    const/4 v0, 0x1

    aget-char v1, p0, p1

    sparse-switch v1, :sswitch_data_60

    :goto_8
    add-int v1, p1, v0

    aget-char v1, p0, v1

    if-ne v1, v3, :cond_5c

    new-instance v1, Lbsh/org/objectweb/asm/Type;

    const/16 v2, 0xa

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v2, p0, p1, v0}, Lbsh/org/objectweb/asm/Type;-><init>(I[CII)V

    move-object v0, v1

    :goto_18
    return-object v0

    :sswitch_19
    sget-object v0, Lbsh/org/objectweb/asm/Type;->VOID_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_18

    :sswitch_1c
    sget-object v0, Lbsh/org/objectweb/asm/Type;->BOOLEAN_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_18

    :sswitch_1f
    sget-object v0, Lbsh/org/objectweb/asm/Type;->CHAR_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_18

    :sswitch_22
    sget-object v0, Lbsh/org/objectweb/asm/Type;->BYTE_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_18

    :sswitch_25
    sget-object v0, Lbsh/org/objectweb/asm/Type;->SHORT_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_18

    :sswitch_28
    sget-object v0, Lbsh/org/objectweb/asm/Type;->INT_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_18

    :sswitch_2b
    sget-object v0, Lbsh/org/objectweb/asm/Type;->FLOAT_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_18

    :sswitch_2e
    sget-object v0, Lbsh/org/objectweb/asm/Type;->LONG_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_18

    :sswitch_31
    sget-object v0, Lbsh/org/objectweb/asm/Type;->DOUBLE_TYPE:Lbsh/org/objectweb/asm/Type;

    goto :goto_18

    :cond_34
    add-int/lit8 v0, v0, 0x1

    :sswitch_36
    add-int v1, p1, v0

    aget-char v1, p0, v1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_34

    add-int v1, p1, v0

    aget-char v1, p0, v1

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_4e

    add-int/lit8 v0, v0, 0x1

    :goto_48
    add-int v1, p1, v0

    aget-char v1, p0, v1

    if-ne v1, v3, :cond_59

    :cond_4e
    new-instance v1, Lbsh/org/objectweb/asm/Type;

    const/16 v2, 0x9

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v2, p0, p1, v0}, Lbsh/org/objectweb/asm/Type;-><init>(I[CII)V

    move-object v0, v1

    goto :goto_18

    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    nop

    :sswitch_data_60
    .sparse-switch
        0x42 -> :sswitch_22
        0x43 -> :sswitch_1f
        0x44 -> :sswitch_31
        0x46 -> :sswitch_2b
        0x49 -> :sswitch_28
        0x4a -> :sswitch_2e
        0x53 -> :sswitch_25
        0x56 -> :sswitch_19
        0x5a -> :sswitch_1c
        0x5b -> :sswitch_36
    .end sparse-switch
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lbsh/org/objectweb/asm/Type;->buf:[C

    iget v2, p0, Lbsh/org/objectweb/asm/Type;->off:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lbsh/org/objectweb/asm/Type;->len:I

    add-int/lit8 v3, v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v0}, Lbsh/org/objectweb/asm/Type;->getDescriptor(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDimensions()I
    .registers 4

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lbsh/org/objectweb/asm/Type;->buf:[C

    iget v2, p0, Lbsh/org/objectweb/asm/Type;->off:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_d

    return v0

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getElementType()Lbsh/org/objectweb/asm/Type;
    .registers 4

    iget-object v0, p0, Lbsh/org/objectweb/asm/Type;->buf:[C

    iget v1, p0, Lbsh/org/objectweb/asm/Type;->off:I

    invoke-virtual {p0}, Lbsh/org/objectweb/asm/Type;->getDimensions()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lbsh/org/objectweb/asm/Type;->getType([CI)Lbsh/org/objectweb/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public getInternalName()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lbsh/org/objectweb/asm/Type;->buf:[C

    iget v2, p0, Lbsh/org/objectweb/asm/Type;->off:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lbsh/org/objectweb/asm/Type;->len:I

    add-int/lit8 v3, v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public getOpcode(I)I
    .registers 3

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_8

    const/16 v0, 0x4f

    if-ne p1, v0, :cond_25

    :cond_8
    iget v0, p0, Lbsh/org/objectweb/asm/Type;->sort:I

    packed-switch v0, :pswitch_data_3a

    add-int/lit8 p1, p1, 0x4

    :goto_f
    :pswitch_f
    return p1

    :pswitch_10
    add-int/lit8 p1, p1, 0x5

    goto :goto_f

    :pswitch_13
    add-int/lit8 p1, p1, 0x6

    goto :goto_f

    :pswitch_16
    add-int/lit8 p1, p1, 0x7

    goto :goto_f

    :pswitch_19
    add-int/lit8 p1, p1, 0x8

    goto :goto_f

    :pswitch_1c
    add-int/lit8 p1, p1, 0x2

    goto :goto_f

    :pswitch_1f
    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :pswitch_22
    add-int/lit8 p1, p1, 0x3

    goto :goto_f

    :cond_25
    iget v0, p0, Lbsh/org/objectweb/asm/Type;->sort:I

    packed-switch v0, :pswitch_data_50

    add-int/lit8 p1, p1, 0x4

    goto :goto_f

    :pswitch_2d
    add-int/lit8 p1, p1, 0x5

    goto :goto_f

    :pswitch_30
    add-int/lit8 p1, p1, 0x2

    goto :goto_f

    :pswitch_33
    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :pswitch_36
    add-int/lit8 p1, p1, 0x3

    goto :goto_f

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_13
        :pswitch_19
        :pswitch_f
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
    .end packed-switch

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_30
        :pswitch_33
        :pswitch_36
    .end packed-switch
.end method

.method public getSize()I
    .registers 3

    iget v0, p0, Lbsh/org/objectweb/asm/Type;->sort:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_b

    iget v0, p0, Lbsh/org/objectweb/asm/Type;->sort:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    :cond_b
    const/4 v0, 0x2

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public getSort()I
    .registers 2

    iget v0, p0, Lbsh/org/objectweb/asm/Type;->sort:I

    return v0
.end method
