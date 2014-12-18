.class Lbsh/util/JConsole$1;
.super Ljavax/swing/JTextPane;


# instance fields
.field private final this$0:Lbsh/util/JConsole;


# direct methods
.method constructor <init>(Lbsh/util/JConsole;Ljavax/swing/text/StyledDocument;)V
    .registers 3

    invoke-direct {p0, p2}, Ljavax/swing/JTextPane;-><init>(Ljavax/swing/text/StyledDocument;)V

    iput-object p1, p0, Lbsh/util/JConsole$1;->this$0:Lbsh/util/JConsole;

    return-void
.end method


# virtual methods
.method public cut()V
    .registers 3

    iget-object v0, p0, Lbsh/util/JConsole$1;->this$0:Lbsh/util/JConsole;

    invoke-static {v0}, Lbsh/util/JConsole;->access$000(Lbsh/util/JConsole;)Ljavax/swing/JTextPane;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->getCaretPosition()I

    move-result v0

    iget-object v1, p0, Lbsh/util/JConsole$1;->this$0:Lbsh/util/JConsole;

    invoke-static {v1}, Lbsh/util/JConsole;->access$100(Lbsh/util/JConsole;)I

    move-result v1

    if-ge v0, v1, :cond_16

    invoke-super {p0}, Ljavax/swing/JTextPane;->copy()V

    :goto_15
    return-void

    :cond_16
    invoke-super {p0}, Ljavax/swing/JTextPane;->cut()V

    goto :goto_15
.end method

.method public paste()V
    .registers 2

    iget-object v0, p0, Lbsh/util/JConsole$1;->this$0:Lbsh/util/JConsole;

    invoke-static {v0}, Lbsh/util/JConsole;->access$200(Lbsh/util/JConsole;)V

    invoke-super {p0}, Ljavax/swing/JTextPane;->paste()V

    return-void
.end method
