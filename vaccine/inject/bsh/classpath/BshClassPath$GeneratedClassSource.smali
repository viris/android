.class public Lbsh/classpath/BshClassPath$GeneratedClassSource;
.super Lbsh/classpath/BshClassPath$ClassSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/classpath/BshClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeneratedClassSource"
.end annotation


# direct methods
.method constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Lbsh/classpath/BshClassPath$ClassSource;-><init>()V

    iput-object p1, p0, Lbsh/classpath/BshClassPath$GeneratedClassSource;->source:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCode(Ljava/lang/String;)[B
    .registers 3

    iget-object v0, p0, Lbsh/classpath/BshClassPath$GeneratedClassSource;->source:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0
.end method
