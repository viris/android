.class public Lbsh/Capabilities$Unavailable;
.super Lbsh/UtilEvalError;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/Capabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unavailable"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    return-void
.end method
