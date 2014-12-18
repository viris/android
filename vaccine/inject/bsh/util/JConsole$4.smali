.class Lbsh/util/JConsole$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lbsh/util/JConsole;

.field private final val$color:Ljava/awt/Color;

.field private final val$font:Ljava/awt/Font;

.field private final val$o:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lbsh/util/JConsole;Ljava/awt/Font;Ljava/awt/Color;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsh/util/JConsole$4;->this$0:Lbsh/util/JConsole;

    iput-object p2, p0, Lbsh/util/JConsole$4;->val$font:Ljava/awt/Font;

    iput-object p3, p0, Lbsh/util/JConsole$4;->val$color:Ljava/awt/Color;

    iput-object p4, p0, Lbsh/util/JConsole$4;->val$o:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lbsh/util/JConsole$4;->this$0:Lbsh/util/JConsole;

    invoke-static {v0}, Lbsh/util/JConsole;->access$500(Lbsh/util/JConsole;)Ljavax/swing/text/AttributeSet;

    move-result-object v0

    iget-object v1, p0, Lbsh/util/JConsole$4;->this$0:Lbsh/util/JConsole;

    iget-object v2, p0, Lbsh/util/JConsole$4;->val$font:Ljava/awt/Font;

    iget-object v3, p0, Lbsh/util/JConsole$4;->val$color:Ljava/awt/Color;

    invoke-static {v1, v2, v3}, Lbsh/util/JConsole;->access$600(Lbsh/util/JConsole;Ljava/awt/Font;Ljava/awt/Color;)Ljavax/swing/text/AttributeSet;

    iget-object v1, p0, Lbsh/util/JConsole$4;->this$0:Lbsh/util/JConsole;

    iget-object v2, p0, Lbsh/util/JConsole$4;->val$o:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbsh/util/JConsole;->access$300(Lbsh/util/JConsole;Ljava/lang/String;)V

    iget-object v1, p0, Lbsh/util/JConsole$4;->this$0:Lbsh/util/JConsole;

    invoke-static {v1}, Lbsh/util/JConsole;->access$400(Lbsh/util/JConsole;)V

    iget-object v1, p0, Lbsh/util/JConsole$4;->this$0:Lbsh/util/JConsole;

    invoke-static {v1}, Lbsh/util/JConsole;->access$000(Lbsh/util/JConsole;)Ljavax/swing/JTextPane;

    move-result-object v1

    iget-object v2, p0, Lbsh/util/JConsole$4;->this$0:Lbsh/util/JConsole;

    invoke-static {v2}, Lbsh/util/JConsole;->access$100(Lbsh/util/JConsole;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljavax/swing/JTextPane;->setCaretPosition(I)V

    iget-object v1, p0, Lbsh/util/JConsole$4;->this$0:Lbsh/util/JConsole;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lbsh/util/JConsole;->access$700(Lbsh/util/JConsole;Ljavax/swing/text/AttributeSet;Z)V

    return-void
.end method
