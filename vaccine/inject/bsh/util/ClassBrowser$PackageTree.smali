.class Lbsh/util/ClassBrowser$PackageTree;
.super Ljavax/swing/JTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/util/ClassBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageTree"
.end annotation


# instance fields
.field nodeForPackage:Ljava/util/Map;

.field root:Ljavax/swing/tree/TreeNode;

.field private final this$0:Lbsh/util/ClassBrowser;

.field treeModel:Ljavax/swing/tree/DefaultTreeModel;


# direct methods
.method constructor <init>(Lbsh/util/ClassBrowser;Ljava/util/Collection;)V
    .registers 5

    const/4 v1, 0x1

    invoke-direct {p0}, Ljavax/swing/JTree;-><init>()V

    iput-object p1, p0, Lbsh/util/ClassBrowser$PackageTree;->this$0:Lbsh/util/ClassBrowser;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbsh/util/ClassBrowser$PackageTree;->nodeForPackage:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lbsh/util/ClassBrowser$PackageTree;->setPackages(Ljava/util/Collection;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser$PackageTree;->setRootVisible(Z)V

    invoke-virtual {p0, v1}, Lbsh/util/ClassBrowser$PackageTree;->setShowsRootHandles(Z)V

    invoke-virtual {p0, v1}, Lbsh/util/ClassBrowser$PackageTree;->setExpandsSelectedPaths(Z)V

    return-void
.end method


# virtual methods
.method addNodeMap(Ljavax/swing/tree/TreeNode;)V
    .registers 7

    const/4 v4, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    move-object v0, p1

    :goto_7
    iget-object v2, p0, Lbsh/util/ClassBrowser$PackageTree;->root:Ljavax/swing/tree/TreeNode;

    if-ne v0, v2, :cond_15

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbsh/util/ClassBrowser$PackageTree;->nodeForPackage:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_15
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Ljavax/swing/tree/TreeNode;->getParent()Ljavax/swing/tree/TreeNode;

    move-result-object v2

    iget-object v3, p0, Lbsh/util/ClassBrowser$PackageTree;->root:Ljavax/swing/tree/TreeNode;

    if-eq v2, v3, :cond_29

    const-string v2, "."

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_29
    invoke-interface {v0}, Ljavax/swing/tree/TreeNode;->getParent()Ljavax/swing/tree/TreeNode;

    move-result-object v0

    goto :goto_7
.end method

.method makeNode(Ljava/util/Map;Ljava/lang/String;)Ljavax/swing/tree/MutableTreeNode;
    .registers 8

    new-instance v2, Ljavax/swing/tree/DefaultMutableTreeNode;

    invoke-direct {v2, p2}, Ljavax/swing/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    return-object v2

    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_2f

    new-instance v1, Ljavax/swing/tree/DefaultMutableTreeNode;

    invoke-direct {v1, v0}, Ljavax/swing/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljavax/swing/tree/DefaultMutableTreeNode;->add(Ljavax/swing/tree/MutableTreeNode;)V

    goto :goto_d

    :cond_2f
    invoke-virtual {p0, v1, v0}, Lbsh/util/ClassBrowser$PackageTree;->makeNode(Ljava/util/Map;Ljava/lang/String;)Ljavax/swing/tree/MutableTreeNode;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavax/swing/tree/DefaultMutableTreeNode;->add(Ljavax/swing/tree/MutableTreeNode;)V

    goto :goto_d
.end method

.method makeTreeModel(Ljava/util/Collection;)Ljavax/swing/tree/DefaultTreeModel;
    .registers 9

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "root"

    invoke-virtual {p0, v3, v0}, Lbsh/util/ClassBrowser$PackageTree;->makeNode(Ljava/util/Map;Ljava/lang/String;)Ljavax/swing/tree/MutableTreeNode;

    move-result-object v0

    iput-object v0, p0, Lbsh/util/ClassBrowser$PackageTree;->root:Ljavax/swing/tree/TreeNode;

    iget-object v0, p0, Lbsh/util/ClassBrowser$PackageTree;->root:Ljavax/swing/tree/TreeNode;

    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser$PackageTree;->mapNodes(Ljavax/swing/tree/TreeNode;)V

    new-instance v0, Ljavax/swing/tree/DefaultTreeModel;

    iget-object v1, p0, Lbsh/util/ClassBrowser$PackageTree;->root:Ljavax/swing/tree/TreeNode;

    invoke-direct {v0, v1}, Ljavax/swing/tree/DefaultTreeModel;-><init>(Ljavax/swing/tree/TreeNode;)V

    return-object v0

    :cond_24
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "."

    invoke-static {v0, v1}, Lbsh/StringUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    move v1, v0

    move-object v2, v3

    :goto_33
    array-length v0, v5

    if-ge v1, v0, :cond_9

    aget-object v6, v5, v1

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_4d

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    :goto_49
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_33

    :cond_4d
    move-object v2, v0

    goto :goto_49
.end method

.method mapNodes(Ljavax/swing/tree/TreeNode;)V
    .registers 4

    invoke-virtual {p0, p1}, Lbsh/util/ClassBrowser$PackageTree;->addNodeMap(Ljavax/swing/tree/TreeNode;)V

    invoke-interface {p1}, Ljavax/swing/tree/TreeNode;->children()Ljava/util/Enumeration;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/tree/TreeNode;

    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser$PackageTree;->mapNodes(Ljavax/swing/tree/TreeNode;)V

    goto :goto_7
.end method

.method public setPackages(Ljava/util/Collection;)V
    .registers 3

    invoke-virtual {p0, p1}, Lbsh/util/ClassBrowser$PackageTree;->makeTreeModel(Ljava/util/Collection;)Ljavax/swing/tree/DefaultTreeModel;

    move-result-object v0

    iput-object v0, p0, Lbsh/util/ClassBrowser$PackageTree;->treeModel:Ljavax/swing/tree/DefaultTreeModel;

    iget-object v0, p0, Lbsh/util/ClassBrowser$PackageTree;->treeModel:Ljavax/swing/tree/DefaultTreeModel;

    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser$PackageTree;->setModel(Ljavax/swing/tree/TreeModel;)V

    return-void
.end method

.method setSelectedPackage(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lbsh/util/ClassBrowser$PackageTree;->nodeForPackage:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/tree/DefaultMutableTreeNode;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    new-instance v1, Ljavax/swing/tree/TreePath;

    iget-object v2, p0, Lbsh/util/ClassBrowser$PackageTree;->treeModel:Ljavax/swing/tree/DefaultTreeModel;

    invoke-virtual {v2, v0}, Ljavax/swing/tree/DefaultTreeModel;->getPathToRoot(Ljavax/swing/tree/TreeNode;)[Ljavax/swing/tree/TreeNode;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/swing/tree/TreePath;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lbsh/util/ClassBrowser$PackageTree;->setSelectionPath(Ljavax/swing/tree/TreePath;)V

    iget-object v0, p0, Lbsh/util/ClassBrowser$PackageTree;->this$0:Lbsh/util/ClassBrowser;

    invoke-virtual {v0, p1}, Lbsh/util/ClassBrowser;->setClist(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lbsh/util/ClassBrowser$PackageTree;->scrollPathToVisible(Ljavax/swing/tree/TreePath;)V

    goto :goto_a
.end method
