.class public Lbsh/Modifiers;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CLASS:I = 0x0

.field public static final FIELD:I = 0x2

.field public static final METHOD:I = 0x1


# instance fields
.field modifiers:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private insureNo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0, p1}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " cannot be declared \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    return-void
.end method

.method private validateForClass()V
    .registers 3

    invoke-direct {p0}, Lbsh/Modifiers;->validateForMethod()V

    const-string v0, "native"

    const-string v1, "Class"

    invoke-direct {p0, v0, v1}, Lbsh/Modifiers;->insureNo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "synchronized"

    const-string v1, "Class"

    invoke-direct {p0, v0, v1}, Lbsh/Modifiers;->insureNo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private validateForField()V
    .registers 3

    const-string v0, "synchronized"

    const-string v1, "Variable"

    invoke-direct {p0, v0, v1}, Lbsh/Modifiers;->insureNo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "native"

    const-string v1, "Variable"

    invoke-direct {p0, v0, v1}, Lbsh/Modifiers;->insureNo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "abstract"

    const-string v1, "Variable"

    invoke-direct {p0, v0, v1}, Lbsh/Modifiers;->insureNo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private validateForMethod()V
    .registers 3

    const-string v0, "volatile"

    const-string v1, "Method"

    invoke-direct {p0, v0, v1}, Lbsh/Modifiers;->insureNo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "transient"

    const-string v1, "Method"

    invoke-direct {p0, v0, v1}, Lbsh/Modifiers;->insureNo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addModifier(ILjava/lang/String;)V
    .registers 6

    const/4 v1, 0x1

    iget-object v0, p0, Lbsh/Modifiers;->modifiers:Ljava/util/Hashtable;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/Modifiers;->modifiers:Ljava/util/Hashtable;

    :cond_c
    iget-object v0, p0, Lbsh/Modifiers;->modifiers:Ljava/util/Hashtable;

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Duplicate modifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    const/4 v0, 0x0

    const-string v2, "private"

    invoke-virtual {p0, v2}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    move v0, v1

    :cond_39
    const-string v2, "protected"

    invoke-virtual {p0, v2}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    add-int/lit8 v0, v0, 0x1

    :cond_43
    const-string v2, "public"

    invoke-virtual {p0, v2}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    add-int/lit8 v0, v0, 0x1

    :cond_4d
    if-le v0, v1, :cond_57

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "public/private/protected cannot be used in combination."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_57
    packed-switch p1, :pswitch_data_68

    :goto_5a
    return-void

    :pswitch_5b
    invoke-direct {p0}, Lbsh/Modifiers;->validateForClass()V

    goto :goto_5a

    :pswitch_5f
    invoke-direct {p0}, Lbsh/Modifiers;->validateForMethod()V

    goto :goto_5a

    :pswitch_63
    invoke-direct {p0}, Lbsh/Modifiers;->validateForField()V

    goto :goto_5a

    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_5f
        :pswitch_63
    .end packed-switch
.end method

.method public hasModifier(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lbsh/Modifiers;->modifiers:Ljava/util/Hashtable;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/Modifiers;->modifiers:Ljava/util/Hashtable;

    :cond_b
    iget-object v0, p0, Lbsh/Modifiers;->modifiers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Modifiers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lbsh/Modifiers;->modifiers:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
