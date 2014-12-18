.class Lbsh/classpath/BshClassPath$UnqualifiedNameTable;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/classpath/BshClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnqualifiedNameTable"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method add(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lbsh/classpath/BshClassPath;->splitClassname(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-super {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    invoke-super {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_10
    return-void

    :cond_11
    instance-of v2, v0, Lbsh/classpath/BshClassPath$AmbiguousName;

    if-eqz v2, :cond_1b

    check-cast v0, Lbsh/classpath/BshClassPath$AmbiguousName;

    invoke-virtual {v0, p1}, Lbsh/classpath/BshClassPath$AmbiguousName;->add(Ljava/lang/String;)V

    goto :goto_10

    :cond_1b
    new-instance v2, Lbsh/classpath/BshClassPath$AmbiguousName;

    invoke-direct {v2}, Lbsh/classpath/BshClassPath$AmbiguousName;-><init>()V

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lbsh/classpath/BshClassPath$AmbiguousName;->add(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lbsh/classpath/BshClassPath$AmbiguousName;->add(Ljava/lang/String;)V

    invoke-super {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10
.end method
