.class Lbsh/util/ClassBrowser$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/swing/event/TreeSelectionListener;


# instance fields
.field private final this$0:Lbsh/util/ClassBrowser;


# direct methods
.method constructor <init>(Lbsh/util/ClassBrowser;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsh/util/ClassBrowser$2;->this$0:Lbsh/util/ClassBrowser;

    return-void
.end method


# virtual methods
.method public valueChanged(Ljavax/swing/event/TreeSelectionEvent;)V
    .registers 4

    iget-object v0, p0, Lbsh/util/ClassBrowser$2;->this$0:Lbsh/util/ClassBrowser;

    invoke-virtual {p1}, Ljavax/swing/event/TreeSelectionEvent;->getPath()Ljavax/swing/tree/TreePath;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/swing/tree/TreePath;->getLastPathComponent()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsh/util/ClassBrowser;->driveToClass(Ljava/lang/String;)V

    return-void
.end method
