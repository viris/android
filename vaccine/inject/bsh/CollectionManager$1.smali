.class Lbsh/CollectionManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field index:I

.field length:I

.field private final this$0:Lbsh/CollectionManager$BasicBshIterator;

.field private final val$array:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lbsh/CollectionManager$BasicBshIterator;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsh/CollectionManager$1;->this$0:Lbsh/CollectionManager$BasicBshIterator;

    iput-object p2, p0, Lbsh/CollectionManager$1;->val$array:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lbsh/CollectionManager$1;->index:I

    iget-object v0, p0, Lbsh/CollectionManager$1;->val$array:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lbsh/CollectionManager$1;->length:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 3

    iget v0, p0, Lbsh/CollectionManager$1;->index:I

    iget v1, p0, Lbsh/CollectionManager$1;->length:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lbsh/CollectionManager$1;->val$array:Ljava/lang/Object;

    iget v1, p0, Lbsh/CollectionManager$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbsh/CollectionManager$1;->index:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
