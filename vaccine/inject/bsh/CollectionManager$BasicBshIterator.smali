.class public Lbsh/CollectionManager$BasicBshIterator;
.super Ljava/lang/Object;

# interfaces
.implements Lbsh/BshIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/CollectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BasicBshIterator"
.end annotation


# instance fields
.field enumeration:Ljava/util/Enumeration;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lbsh/CollectionManager$BasicBshIterator;->createEnumeration(Ljava/lang/Object;)Ljava/util/Enumeration;

    move-result-object v0

    iput-object v0, p0, Lbsh/CollectionManager$BasicBshIterator;->enumeration:Ljava/util/Enumeration;

    return-void
.end method


# virtual methods
.method protected createEnumeration(Ljava/lang/Object;)Ljava/util/Enumeration;
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Object arguments passed to the BasicBshIterator constructor cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    instance-of v0, p1, Ljava/util/Enumeration;

    if-eqz v0, :cond_11

    check-cast p1, Ljava/util/Enumeration;

    :goto_10
    return-object p1

    :cond_11
    instance-of v0, p1, Ljava/util/Vector;

    if-eqz v0, :cond_1c

    check-cast p1, Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    goto :goto_10

    :cond_1c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Lbsh/CollectionManager$1;

    invoke-direct {v0, p0, p1}, Lbsh/CollectionManager$1;-><init>(Lbsh/CollectionManager$BasicBshIterator;Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_10

    :cond_2d
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3c

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/CollectionManager$BasicBshIterator;->createEnumeration(Ljava/lang/Object;)Ljava/util/Enumeration;

    move-result-object p1

    goto :goto_10

    :cond_3c
    instance-of v0, p1, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_4d

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/CollectionManager$BasicBshIterator;->createEnumeration(Ljava/lang/Object;)Ljava/util/Enumeration;

    move-result-object p1

    goto :goto_10

    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Cannot enumerate object of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lbsh/CollectionManager$BasicBshIterator;->enumeration:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lbsh/CollectionManager$BasicBshIterator;->enumeration:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
