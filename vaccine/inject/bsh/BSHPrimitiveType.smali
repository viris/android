.class Lbsh/BSHPrimitiveType;
.super Lbsh/SimpleNode;


# instance fields
.field public type:Ljava/lang/Class;


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;

    return-object v0
.end method
