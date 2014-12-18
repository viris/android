.class Lbsh/ReturnControl;
.super Ljava/lang/Object;

# interfaces
.implements Lbsh/ParserConstants;


# instance fields
.field public kind:I

.field public returnPoint:Lbsh/SimpleNode;

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Lbsh/SimpleNode;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbsh/ReturnControl;->kind:I

    iput-object p2, p0, Lbsh/ReturnControl;->value:Ljava/lang/Object;

    iput-object p3, p0, Lbsh/ReturnControl;->returnPoint:Lbsh/SimpleNode;

    return-void
.end method
