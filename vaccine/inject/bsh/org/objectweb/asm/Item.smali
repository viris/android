.class final Lbsh/org/objectweb/asm/Item;
.super Ljava/lang/Object;


# instance fields
.field doubleVal:D

.field floatVal:F

.field hashCode:I

.field index:S

.field intVal:I

.field longVal:J

.field next:Lbsh/org/objectweb/asm/Item;

.field strVal1:Ljava/lang/String;

.field strVal2:Ljava/lang/String;

.field strVal3:Ljava/lang/String;

.field type:I


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(SLbsh/org/objectweb/asm/Item;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lbsh/org/objectweb/asm/Item;->index:S

    iget v0, p2, Lbsh/org/objectweb/asm/Item;->type:I

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->type:I

    iget v0, p2, Lbsh/org/objectweb/asm/Item;->intVal:I

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->intVal:I

    iget-wide v0, p2, Lbsh/org/objectweb/asm/Item;->longVal:J

    iput-wide v0, p0, Lbsh/org/objectweb/asm/Item;->longVal:J

    iget v0, p2, Lbsh/org/objectweb/asm/Item;->floatVal:F

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->floatVal:F

    iget-wide v0, p2, Lbsh/org/objectweb/asm/Item;->doubleVal:D

    iput-wide v0, p0, Lbsh/org/objectweb/asm/Item;->doubleVal:D

    iget-object v0, p2, Lbsh/org/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    iput-object v0, p0, Lbsh/org/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v0, p2, Lbsh/org/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    iput-object v0, p0, Lbsh/org/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    iget-object v0, p2, Lbsh/org/objectweb/asm/Item;->strVal3:Ljava/lang/String;

    iput-object v0, p0, Lbsh/org/objectweb/asm/Item;->strVal3:Ljava/lang/String;

    iget v0, p2, Lbsh/org/objectweb/asm/Item;->hashCode:I

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->hashCode:I

    return-void
.end method


# virtual methods
.method isEqualTo(Lbsh/org/objectweb/asm/Item;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Lbsh/org/objectweb/asm/Item;->type:I

    iget v3, p0, Lbsh/org/objectweb/asm/Item;->type:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Lbsh/org/objectweb/asm/Item;->type:I

    packed-switch v2, :pswitch_data_76

    :pswitch_d
    iget-object v2, p1, Lbsh/org/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v3, p0, Lbsh/org/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    iget-object v2, p1, Lbsh/org/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    iget-object v3, p0, Lbsh/org/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    iget-object v2, p1, Lbsh/org/objectweb/asm/Item;->strVal3:Ljava/lang/String;

    iget-object v3, p0, Lbsh/org/objectweb/asm/Item;->strVal3:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    :cond_2b
    :goto_2b
    return v0

    :pswitch_2c
    iget v2, p1, Lbsh/org/objectweb/asm/Item;->intVal:I

    iget v3, p0, Lbsh/org/objectweb/asm/Item;->intVal:I

    if-eq v2, v3, :cond_2b

    move v0, v1

    goto :goto_2b

    :pswitch_34
    iget-wide v2, p1, Lbsh/org/objectweb/asm/Item;->longVal:J

    iget-wide v4, p0, Lbsh/org/objectweb/asm/Item;->longVal:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2b

    move v0, v1

    goto :goto_2b

    :pswitch_3e
    iget v2, p1, Lbsh/org/objectweb/asm/Item;->floatVal:F

    iget v3, p0, Lbsh/org/objectweb/asm/Item;->floatVal:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2b

    move v0, v1

    goto :goto_2b

    :pswitch_48
    iget-wide v2, p1, Lbsh/org/objectweb/asm/Item;->doubleVal:D

    iget-wide v4, p0, Lbsh/org/objectweb/asm/Item;->doubleVal:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2b

    move v0, v1

    goto :goto_2b

    :pswitch_52
    iget-object v0, p1, Lbsh/org/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v1, p0, Lbsh/org/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2b

    :pswitch_5b
    iget-object v2, p1, Lbsh/org/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v3, p0, Lbsh/org/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    iget-object v2, p1, Lbsh/org/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    iget-object v3, p0, Lbsh/org/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    :cond_6f
    move v0, v1

    goto :goto_2b

    :cond_71
    move v0, v1

    goto :goto_2b

    :cond_73
    move v0, v1

    goto :goto_2b

    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_52
        :pswitch_d
        :pswitch_2c
        :pswitch_3e
        :pswitch_34
        :pswitch_48
        :pswitch_52
        :pswitch_52
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_5b
    .end packed-switch
.end method

.method set(D)V
    .registers 5

    const/4 v0, 0x6

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->type:I

    iput-wide p1, p0, Lbsh/org/objectweb/asm/Item;->doubleVal:D

    iget v0, p0, Lbsh/org/objectweb/asm/Item;->type:I

    double-to-int v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->hashCode:I

    return-void
.end method

.method set(F)V
    .registers 4

    const/4 v0, 0x4

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->type:I

    iput p1, p0, Lbsh/org/objectweb/asm/Item;->floatVal:F

    iget v0, p0, Lbsh/org/objectweb/asm/Item;->type:I

    float-to-int v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->hashCode:I

    return-void
.end method

.method set(I)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->type:I

    iput p1, p0, Lbsh/org/objectweb/asm/Item;->intVal:I

    iget v0, p0, Lbsh/org/objectweb/asm/Item;->type:I

    add-int/2addr v0, p1

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->hashCode:I

    return-void
.end method

.method set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iput p1, p0, Lbsh/org/objectweb/asm/Item;->type:I

    iput-object p2, p0, Lbsh/org/objectweb/asm/Item;->strVal1:Ljava/lang/String;

    iput-object p3, p0, Lbsh/org/objectweb/asm/Item;->strVal2:Ljava/lang/String;

    iput-object p4, p0, Lbsh/org/objectweb/asm/Item;->strVal3:Ljava/lang/String;

    sparse-switch p1, :sswitch_data_32

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->hashCode:I

    :goto_1c
    return-void

    :sswitch_1d
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->hashCode:I

    goto :goto_1c

    :sswitch_25
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->hashCode:I

    goto :goto_1c

    :sswitch_data_32
    .sparse-switch
        0x1 -> :sswitch_1d
        0x7 -> :sswitch_1d
        0x8 -> :sswitch_1d
        0xc -> :sswitch_25
    .end sparse-switch
.end method

.method set(J)V
    .registers 5

    const/4 v0, 0x5

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->type:I

    iput-wide p1, p0, Lbsh/org/objectweb/asm/Item;->longVal:J

    iget v0, p0, Lbsh/org/objectweb/asm/Item;->type:I

    long-to-int v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/org/objectweb/asm/Item;->hashCode:I

    return-void
.end method
