.class Lbsh/util/AWTConsole$1;
.super Ljava/awt/event/WindowAdapter;


# instance fields
.field private final val$f:Ljava/awt/Frame;


# direct methods
.method constructor <init>(Ljava/awt/Frame;)V
    .registers 2

    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    iput-object p1, p0, Lbsh/util/AWTConsole$1;->val$f:Ljava/awt/Frame;

    return-void
.end method


# virtual methods
.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .registers 3

    iget-object v0, p0, Lbsh/util/AWTConsole$1;->val$f:Ljava/awt/Frame;

    invoke-virtual {v0}, Ljava/awt/Frame;->dispose()V

    return-void
.end method
