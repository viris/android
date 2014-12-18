.class public Lbsh/classpath/DiscreteFilesClassLoader$ClassSourceMap;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/classpath/DiscreteFilesClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassSourceMap"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lbsh/classpath/BshClassPath$ClassSource;
    .registers 3

    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/classpath/BshClassPath$ClassSource;

    return-object v0
.end method

.method public put(Ljava/lang/String;Lbsh/classpath/BshClassPath$ClassSource;)V
    .registers 3

    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
