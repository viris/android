.class public Lbsh/util/NameCompletionTable;
.super Ljava/util/ArrayList;

# interfaces
.implements Lbsh/util/NameCompletion;


# instance fields
.field sources:Ljava/util/List;

.field table:Lbsh/util/NameCompletionTable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lbsh/NameSource;)V
    .registers 3

    iget-object v0, p0, Lbsh/util/NameCompletionTable;->sources:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbsh/util/NameCompletionTable;->sources:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lbsh/util/NameCompletionTable;->sources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Lbsh/util/NameCompletionTable;)V
    .registers 4

    iget-object v0, p0, Lbsh/util/NameCompletionTable;->table:Lbsh/util/NameCompletionTable;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unimplemented usage error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iput-object p1, p0, Lbsh/util/NameCompletionTable;->table:Lbsh/util/NameCompletionTable;

    return-void
.end method

.method public completeName(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    const/4 v2, 0x1

    const/4 v5, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v4}, Lbsh/util/NameCompletionTable;->getMatchingNames(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_13

    new-array v0, v5, [Ljava/lang/String;

    :goto_12
    return-object v0

    :cond_13
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move v1, v2

    move-object v3, v0

    :goto_1b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_36

    :cond_27
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_4a

    new-array v0, v2, [Ljava/lang/String;

    aput-object v3, v0, v5

    goto :goto_12

    :cond_36
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lbsh/StringUtil;->maxCommonPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1b

    :cond_4a
    new-array v0, v5, [Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_12
.end method

.method protected getMatchingNames(Ljava/lang/String;Ljava/util/List;)V
    .registers 8

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    invoke-virtual {p0}, Lbsh/util/NameCompletionTable;->size()I

    move-result v0

    if-lt v1, v0, :cond_1f

    iget-object v0, p0, Lbsh/util/NameCompletionTable;->table:Lbsh/util/NameCompletionTable;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lbsh/util/NameCompletionTable;->table:Lbsh/util/NameCompletionTable;

    invoke-virtual {v0, p1, p2}, Lbsh/util/NameCompletionTable;->getMatchingNames(Ljava/lang/String;Ljava/util/List;)V

    :cond_11
    iget-object v0, p0, Lbsh/util/NameCompletionTable;->sources:Ljava/util/List;

    if-eqz v0, :cond_1e

    move v1, v2

    :goto_16
    iget-object v0, p0, Lbsh/util/NameCompletionTable;->sources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_32

    :cond_1e
    return-void

    :cond_1f
    invoke-virtual {p0, v1}, Lbsh/util/NameCompletionTable;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_32
    iget-object v0, p0, Lbsh/util/NameCompletionTable;->sources:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/NameSource;

    invoke-interface {v0}, Lbsh/NameSource;->getAllNames()[Ljava/lang/String;

    move-result-object v3

    move v0, v2

    :goto_3f
    array-length v4, v3

    if-lt v0, v4, :cond_46

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    :cond_46
    aget-object v4, v3, v0

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_53

    aget-object v4, v3, v0

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f
.end method
