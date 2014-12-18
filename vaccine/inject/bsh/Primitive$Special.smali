.class Lbsh/Primitive$Special;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/Primitive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Special"
.end annotation


# static fields
.field public static final NULL_VALUE:Lbsh/Primitive$Special;

.field public static final VOID_TYPE:Lbsh/Primitive$Special;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lbsh/Primitive$Special;

    invoke-direct {v0}, Lbsh/Primitive$Special;-><init>()V

    sput-object v0, Lbsh/Primitive$Special;->NULL_VALUE:Lbsh/Primitive$Special;

    new-instance v0, Lbsh/Primitive$Special;

    invoke-direct {v0}, Lbsh/Primitive$Special;-><init>()V

    sput-object v0, Lbsh/Primitive$Special;->VOID_TYPE:Lbsh/Primitive$Special;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
