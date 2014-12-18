.class public Lbsh/Token;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public beginColumn:I

.field public beginLine:I

.field public endColumn:I

.field public endLine:I

.field public image:Ljava/lang/String;

.field public kind:I

.field public next:Lbsh/Token;

.field public specialToken:Lbsh/Token;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final newToken(I)Lbsh/Token;
    .registers 2

    new-instance v0, Lbsh/Token;

    invoke-direct {v0}, Lbsh/Token;-><init>()V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbsh/Token;->image:Ljava/lang/String;

    return-object v0
.end method
