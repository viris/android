.class Lbsh/util/JConsole$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lbsh/util/JConsole;

.field private final val$o:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lbsh/util/JConsole;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsh/util/JConsole$2;->this$0:Lbsh/util/JConsole;

    iput-object p2, p0, Lbsh/util/JConsole$2;->val$o:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lbsh/util/JConsole$2;->this$0:Lbsh/util/JConsole;

    iget-object v1, p0, Lbsh/util/JConsole$2;->val$o:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbsh/util/JConsole;->access$300(Lbsh/util/JConsole;Ljava/lang/String;)V

    iget-object v0, p0, Lbsh/util/JConsole$2;->this$0:Lbsh/util/JConsole;

    invoke-static {v0}, Lbsh/util/JConsole;->access$400(Lbsh/util/JConsole;)V

    iget-object v0, p0, Lbsh/util/JConsole$2;->this$0:Lbsh/util/JConsole;

    invoke-static {v0}, Lbsh/util/JConsole;->access$000(Lbsh/util/JConsole;)Ljavax/swing/JTextPane;

    move-result-object v0

    iget-object v1, p0, Lbsh/util/JConsole$2;->this$0:Lbsh/util/JConsole;

    invoke-static {v1}, Lbsh/util/JConsole;->access$100(Lbsh/util/JConsole;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextPane;->setCaretPosition(I)V

    return-void
.end method
