.class Lbsh/util/JConsole$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lbsh/util/JConsole;

.field private final val$bold:Z

.field private final val$color:Ljava/awt/Color;

.field private final val$fontFamilyName:Ljava/lang/String;

.field private final val$italic:Z

.field private final val$o:Ljava/lang/Object;

.field private final val$size:I

.field private final val$underline:Z


# direct methods
.method constructor <init>(Lbsh/util/JConsole;Ljava/lang/String;ILjava/awt/Color;ZZZLjava/lang/Object;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsh/util/JConsole$5;->this$0:Lbsh/util/JConsole;

    iput-object p2, p0, Lbsh/util/JConsole$5;->val$fontFamilyName:Ljava/lang/String;

    iput p3, p0, Lbsh/util/JConsole$5;->val$size:I

    iput-object p4, p0, Lbsh/util/JConsole$5;->val$color:Ljava/awt/Color;

    iput-boolean p5, p0, Lbsh/util/JConsole$5;->val$bold:Z

    iput-boolean p6, p0, Lbsh/util/JConsole$5;->val$italic:Z

    iput-boolean p7, p0, Lbsh/util/JConsole$5;->val$underline:Z

    iput-object p8, p0, Lbsh/util/JConsole$5;->val$o:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v0, p0, Lbsh/util/JConsole$5;->this$0:Lbsh/util/JConsole;

    invoke-static {v0}, Lbsh/util/JConsole;->access$500(Lbsh/util/JConsole;)Ljavax/swing/text/AttributeSet;

    move-result-object v7

    iget-object v0, p0, Lbsh/util/JConsole$5;->this$0:Lbsh/util/JConsole;

    iget-object v1, p0, Lbsh/util/JConsole$5;->val$fontFamilyName:Ljava/lang/String;

    iget v2, p0, Lbsh/util/JConsole$5;->val$size:I

    iget-object v3, p0, Lbsh/util/JConsole$5;->val$color:Ljava/awt/Color;

    iget-boolean v4, p0, Lbsh/util/JConsole$5;->val$bold:Z

    iget-boolean v5, p0, Lbsh/util/JConsole$5;->val$italic:Z

    iget-boolean v6, p0, Lbsh/util/JConsole$5;->val$underline:Z

    invoke-static/range {v0 .. v6}, Lbsh/util/JConsole;->access$800(Lbsh/util/JConsole;Ljava/lang/String;ILjava/awt/Color;ZZZ)Ljavax/swing/text/AttributeSet;

    iget-object v0, p0, Lbsh/util/JConsole$5;->this$0:Lbsh/util/JConsole;

    iget-object v1, p0, Lbsh/util/JConsole$5;->val$o:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbsh/util/JConsole;->access$300(Lbsh/util/JConsole;Ljava/lang/String;)V

    iget-object v0, p0, Lbsh/util/JConsole$5;->this$0:Lbsh/util/JConsole;

    invoke-static {v0}, Lbsh/util/JConsole;->access$400(Lbsh/util/JConsole;)V

    iget-object v0, p0, Lbsh/util/JConsole$5;->this$0:Lbsh/util/JConsole;

    invoke-static {v0}, Lbsh/util/JConsole;->access$000(Lbsh/util/JConsole;)Ljavax/swing/JTextPane;

    move-result-object v0

    iget-object v1, p0, Lbsh/util/JConsole$5;->this$0:Lbsh/util/JConsole;

    invoke-static {v1}, Lbsh/util/JConsole;->access$100(Lbsh/util/JConsole;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextPane;->setCaretPosition(I)V

    iget-object v0, p0, Lbsh/util/JConsole$5;->this$0:Lbsh/util/JConsole;

    const/4 v1, 0x1

    invoke-static {v0, v7, v1}, Lbsh/util/JConsole;->access$700(Lbsh/util/JConsole;Ljavax/swing/text/AttributeSet;Z)V

    return-void
.end method
