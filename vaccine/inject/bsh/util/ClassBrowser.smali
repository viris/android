.class public Lbsh/util/ClassBrowser;
.super Ljavax/swing/JSplitPane;

# interfaces
.implements Lbsh/classpath/ClassPathListener;
.implements Ljavax/swing/event/ListSelectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/util/ClassBrowser$PackageTree;
    }
.end annotation


# static fields
.field private static final LIGHT_BLUE:Ljava/awt/Color;


# instance fields
.field classManager:Lbsh/BshClassManager;

.field classPath:Lbsh/classpath/BshClassPath;

.field classesList:[Ljava/lang/String;

.field classlist:Ljavax/swing/JList;

.field consList:[Ljava/lang/reflect/Constructor;

.field conslist:Ljavax/swing/JList;

.field fieldList:[Ljava/lang/reflect/Field;

.field fieldlist:Ljavax/swing/JList;

.field frame:Ljavax/swing/JFrame;

.field iframe:Ljavax/swing/JInternalFrame;

.field methodLine:Ljavax/swing/JTextArea;

.field methodList:[Ljava/lang/reflect/Method;

.field mlist:Ljavax/swing/JList;

.field packagesList:[Ljava/lang/String;

.field ptree:Lbsh/util/ClassBrowser$PackageTree;

.field selectedClass:Ljava/lang/Class;

.field selectedPackage:Ljava/lang/String;

.field tree:Ljavax/swing/JTree;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v2, 0xf5

    new-instance v0, Ljava/awt/Color;

    const/16 v1, 0xff

    invoke-direct {v0, v2, v2, v1}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Lbsh/util/ClassBrowser;->LIGHT_BLUE:Ljava/awt/Color;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0}, Lbsh/BshClassManager;->createClassManager(Lbsh/Interpreter;)Lbsh/BshClassManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lbsh/util/ClassBrowser;-><init>(Lbsh/BshClassManager;)V

    return-void
.end method

.method public constructor <init>(Lbsh/BshClassManager;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljavax/swing/JSplitPane;-><init>(IZ)V

    iput-object p1, p0, Lbsh/util/ClassBrowser;->classManager:Lbsh/BshClassManager;

    invoke-virtual {p0, v2}, Lbsh/util/ClassBrowser;->setBorder(Ljavax/swing/border/Border;)V

    invoke-virtual {p0}, Lbsh/util/ClassBrowser;->getUI()Ljavax/swing/plaf/SplitPaneUI;

    move-result-object v0

    instance-of v1, v0, Ljavax/swing/plaf/basic/BasicSplitPaneUI;

    if-eqz v1, :cond_1c

    check-cast v0, Ljavax/swing/plaf/basic/BasicSplitPaneUI;

    invoke-virtual {v0}, Ljavax/swing/plaf/basic/BasicSplitPaneUI;->getDivider()Ljavax/swing/plaf/basic/BasicSplitPaneDivider;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljavax/swing/plaf/basic/BasicSplitPaneDivider;->setBorder(Ljavax/swing/border/Border;)V

    :cond_1c
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lbsh/util/ClassBrowser;

    invoke-direct {v0}, Lbsh/util/ClassBrowser;-><init>()V

    invoke-virtual {v0}, Lbsh/util/ClassBrowser;->init()V

    new-instance v1, Ljavax/swing/JFrame;

    const-string v2, "BeanShell Class Browser v1.0"

    invoke-direct {v1, v2}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljavax/swing/JFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v2

    const-string v3, "Center"

    invoke-virtual {v2, v3, v0}, Ljava/awt/Container;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    invoke-virtual {v0, v1}, Lbsh/util/ClassBrowser;->setFrame(Ljavax/swing/JFrame;)V

    invoke-virtual {v1}, Ljavax/swing/JFrame;->pack()V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljavax/swing/JFrame;->setVisible(Z)V

    return-void
.end method

.method private splitPane(IZLjavax/swing/JComponent;Ljavax/swing/JComponent;)Ljavax/swing/JSplitPane;
    .registers 9

    const/4 v3, 0x0

    new-instance v1, Ljavax/swing/JSplitPane;

    invoke-direct {v1, p1, p2, p3, p4}, Ljavax/swing/JSplitPane;-><init>(IZLjava/awt/Component;Ljava/awt/Component;)V

    invoke-virtual {v1, v3}, Ljavax/swing/JSplitPane;->setBorder(Ljavax/swing/border/Border;)V

    invoke-virtual {v1}, Ljavax/swing/JSplitPane;->getUI()Ljavax/swing/plaf/SplitPaneUI;

    move-result-object v0

    instance-of v2, v0, Ljavax/swing/plaf/basic/BasicSplitPaneUI;

    if-eqz v2, :cond_1a

    check-cast v0, Ljavax/swing/plaf/basic/BasicSplitPaneUI;

    invoke-virtual {v0}, Ljavax/swing/plaf/basic/BasicSplitPaneUI;->getDivider()Ljavax/swing/plaf/basic/BasicSplitPaneDivider;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljavax/swing/plaf/basic/BasicSplitPaneDivider;->setBorder(Ljavax/swing/border/Border;)V

    :cond_1a
    return-object v1
.end method


# virtual methods
.method public classPathChanged()V
    .registers 3

    iget-object v0, p0, Lbsh/util/ClassBrowser;->classPath:Lbsh/classpath/BshClassPath;

    invoke-virtual {v0}, Lbsh/classpath/BshClassPath;->getPackagesSet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lbsh/util/ClassBrowser;->ptree:Lbsh/util/ClassBrowser$PackageTree;

    invoke-virtual {v1, v0}, Lbsh/util/ClassBrowser$PackageTree;->setPackages(Ljava/util/Collection;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser;->setClist(Ljava/lang/String;)V

    return-void
.end method

.method public driveToClass(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    invoke-static {p1}, Lbsh/classpath/BshClassPath;->splitClassname(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v0

    const/4 v3, 0x1

    aget-object v1, v1, v3

    iget-object v3, p0, Lbsh/util/ClassBrowser;->classPath:Lbsh/classpath/BshClassPath;

    invoke-virtual {v3, v2}, Lbsh/classpath/BshClassPath;->getClassesForPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_17

    :cond_16
    :goto_16
    return-void

    :cond_17
    iget-object v3, p0, Lbsh/util/ClassBrowser;->ptree:Lbsh/util/ClassBrowser$PackageTree;

    invoke-virtual {v3, v2}, Lbsh/util/ClassBrowser$PackageTree;->setSelectedPackage(Ljava/lang/String;)V

    :goto_1c
    iget-object v2, p0, Lbsh/util/ClassBrowser;->classesList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_16

    iget-object v2, p0, Lbsh/util/ClassBrowser;->classesList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v1, p0, Lbsh/util/ClassBrowser;->classlist:Ljavax/swing/JList;

    invoke-virtual {v1, v0}, Ljavax/swing/JList;->setSelectedIndex(I)V

    iget-object v1, p0, Lbsh/util/ClassBrowser;->classlist:Ljavax/swing/JList;

    invoke-virtual {v1, v0}, Ljavax/swing/JList;->ensureIndexIsVisible(I)V

    goto :goto_16

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c
.end method

.method getPublicConstructors([Ljava/lang/reflect/Constructor;)[Ljava/lang/reflect/Constructor;
    .registers 5

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    :goto_6
    array-length v2, p1

    if-lt v0, v2, :cond_13

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Constructor;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0

    :cond_13
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_24

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method getPublicFields([Ljava/lang/reflect/Field;)[Ljava/lang/reflect/Field;
    .registers 5

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    :goto_6
    array-length v2, p1

    if-lt v0, v2, :cond_13

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0

    :cond_13
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_24

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method getPublicMethods([Ljava/lang/reflect/Method;)[Ljava/lang/reflect/Method;
    .registers 5

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    :goto_6
    array-length v2, p1

    if-lt v0, v2, :cond_13

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0

    :cond_13
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_24

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public init()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ClassPathException;
        }
    .end annotation

    const/16 v9, 0x96

    const/4 v8, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lbsh/util/ClassBrowser;->classManager:Lbsh/BshClassManager;

    check-cast v0, Lbsh/classpath/ClassManagerImpl;

    invoke-virtual {v0}, Lbsh/classpath/ClassManagerImpl;->getClassPath()Lbsh/classpath/BshClassPath;

    move-result-object v0

    iput-object v0, p0, Lbsh/util/ClassBrowser;->classPath:Lbsh/classpath/BshClassPath;

    iget-object v0, p0, Lbsh/util/ClassBrowser;->classPath:Lbsh/classpath/BshClassPath;

    invoke-virtual {v0, p0}, Lbsh/classpath/BshClassPath;->addListener(Lbsh/classpath/ClassPathListener;)V

    iget-object v0, p0, Lbsh/util/ClassBrowser;->classPath:Lbsh/classpath/BshClassPath;

    invoke-virtual {v0}, Lbsh/classpath/BshClassPath;->getPackagesSet()Ljava/util/Set;

    move-result-object v0

    new-instance v3, Lbsh/util/ClassBrowser$PackageTree;

    invoke-direct {v3, p0, v0}, Lbsh/util/ClassBrowser$PackageTree;-><init>(Lbsh/util/ClassBrowser;Ljava/util/Collection;)V

    iput-object v3, p0, Lbsh/util/ClassBrowser;->ptree:Lbsh/util/ClassBrowser$PackageTree;

    iget-object v0, p0, Lbsh/util/ClassBrowser;->ptree:Lbsh/util/ClassBrowser$PackageTree;

    new-instance v3, Lbsh/util/ClassBrowser$1;

    invoke-direct {v3, p0}, Lbsh/util/ClassBrowser$1;-><init>(Lbsh/util/ClassBrowser;)V

    invoke-virtual {v0, v3}, Lbsh/util/ClassBrowser$PackageTree;->addTreeSelectionListener(Ljavax/swing/event/TreeSelectionListener;)V

    new-instance v0, Ljavax/swing/JList;

    invoke-direct {v0}, Ljavax/swing/JList;-><init>()V

    iput-object v0, p0, Lbsh/util/ClassBrowser;->classlist:Ljavax/swing/JList;

    iget-object v0, p0, Lbsh/util/ClassBrowser;->classlist:Ljavax/swing/JList;

    sget-object v3, Lbsh/util/ClassBrowser;->LIGHT_BLUE:Ljava/awt/Color;

    invoke-virtual {v0, v3}, Ljavax/swing/JList;->setBackground(Ljava/awt/Color;)V

    iget-object v0, p0, Lbsh/util/ClassBrowser;->classlist:Ljavax/swing/JList;

    invoke-virtual {v0, p0}, Ljavax/swing/JList;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    new-instance v0, Ljavax/swing/JList;

    invoke-direct {v0}, Ljavax/swing/JList;-><init>()V

    iput-object v0, p0, Lbsh/util/ClassBrowser;->conslist:Ljavax/swing/JList;

    iget-object v0, p0, Lbsh/util/ClassBrowser;->conslist:Ljavax/swing/JList;

    invoke-virtual {v0, p0}, Ljavax/swing/JList;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    new-instance v0, Ljavax/swing/JList;

    invoke-direct {v0}, Ljavax/swing/JList;-><init>()V

    iput-object v0, p0, Lbsh/util/ClassBrowser;->mlist:Ljavax/swing/JList;

    iget-object v0, p0, Lbsh/util/ClassBrowser;->mlist:Ljavax/swing/JList;

    sget-object v3, Lbsh/util/ClassBrowser;->LIGHT_BLUE:Ljava/awt/Color;

    invoke-virtual {v0, v3}, Ljavax/swing/JList;->setBackground(Ljava/awt/Color;)V

    iget-object v0, p0, Lbsh/util/ClassBrowser;->mlist:Ljavax/swing/JList;

    invoke-virtual {v0, p0}, Ljavax/swing/JList;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    new-instance v0, Ljavax/swing/JList;

    invoke-direct {v0}, Ljavax/swing/JList;-><init>()V

    iput-object v0, p0, Lbsh/util/ClassBrowser;->fieldlist:Ljavax/swing/JList;

    iget-object v0, p0, Lbsh/util/ClassBrowser;->fieldlist:Ljavax/swing/JList;

    invoke-virtual {v0, p0}, Ljavax/swing/JList;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    new-instance v0, Ljavax/swing/JScrollPane;

    iget-object v3, p0, Lbsh/util/ClassBrowser;->conslist:Ljavax/swing/JList;

    invoke-direct {v0, v3}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    const-string v3, "Constructors"

    invoke-virtual {p0, v0, v3}, Lbsh/util/ClassBrowser;->labeledPane(Ljavax/swing/JComponent;Ljava/lang/String;)Ljavax/swing/JPanel;

    move-result-object v0

    new-instance v3, Ljavax/swing/JScrollPane;

    iget-object v4, p0, Lbsh/util/ClassBrowser;->mlist:Ljavax/swing/JList;

    invoke-direct {v3, v4}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    const-string v4, "Methods"

    invoke-virtual {p0, v3, v4}, Lbsh/util/ClassBrowser;->labeledPane(Ljavax/swing/JComponent;Ljava/lang/String;)Ljavax/swing/JPanel;

    move-result-object v3

    invoke-direct {p0, v2, v1, v0, v3}, Lbsh/util/ClassBrowser;->splitPane(IZLjavax/swing/JComponent;Ljavax/swing/JComponent;)Ljavax/swing/JSplitPane;

    move-result-object v0

    new-instance v3, Ljavax/swing/JScrollPane;

    iget-object v4, p0, Lbsh/util/ClassBrowser;->fieldlist:Ljavax/swing/JList;

    invoke-direct {v3, v4}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    const-string v4, "Fields"

    invoke-virtual {p0, v3, v4}, Lbsh/util/ClassBrowser;->labeledPane(Ljavax/swing/JComponent;Ljava/lang/String;)Ljavax/swing/JPanel;

    move-result-object v3

    invoke-direct {p0, v2, v1, v0, v3}, Lbsh/util/ClassBrowser;->splitPane(IZLjavax/swing/JComponent;Ljavax/swing/JComponent;)Ljavax/swing/JSplitPane;

    move-result-object v0

    new-instance v3, Ljavax/swing/JScrollPane;

    iget-object v4, p0, Lbsh/util/ClassBrowser;->classlist:Ljavax/swing/JList;

    invoke-direct {v3, v4}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    const-string v4, "Classes"

    invoke-virtual {p0, v3, v4}, Lbsh/util/ClassBrowser;->labeledPane(Ljavax/swing/JComponent;Ljava/lang/String;)Ljavax/swing/JPanel;

    move-result-object v3

    invoke-direct {p0, v1, v1, v3, v0}, Lbsh/util/ClassBrowser;->splitPane(IZLjavax/swing/JComponent;Ljavax/swing/JComponent;)Ljavax/swing/JSplitPane;

    move-result-object v0

    new-instance v3, Ljavax/swing/JScrollPane;

    iget-object v4, p0, Lbsh/util/ClassBrowser;->ptree:Lbsh/util/ClassBrowser$PackageTree;

    invoke-direct {v3, v4}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    const-string v4, "Packages"

    invoke-virtual {p0, v3, v4}, Lbsh/util/ClassBrowser;->labeledPane(Ljavax/swing/JComponent;Ljava/lang/String;)Ljavax/swing/JPanel;

    move-result-object v3

    invoke-direct {p0, v1, v1, v3, v0}, Lbsh/util/ClassBrowser;->splitPane(IZLjavax/swing/JComponent;Ljavax/swing/JComponent;)Ljavax/swing/JSplitPane;

    move-result-object v6

    new-instance v7, Ljavax/swing/JPanel;

    new-instance v0, Ljava/awt/BorderLayout;

    invoke-direct {v0}, Ljava/awt/BorderLayout;-><init>()V

    invoke-direct {v7, v0}, Ljavax/swing/JPanel;-><init>(Ljava/awt/LayoutManager;)V

    new-instance v0, Ljavax/swing/JTextArea;

    const/16 v3, 0x3c

    invoke-direct {v0, v1, v3}, Ljavax/swing/JTextArea;-><init>(II)V

    iput-object v0, p0, Lbsh/util/ClassBrowser;->methodLine:Ljavax/swing/JTextArea;

    iget-object v0, p0, Lbsh/util/ClassBrowser;->methodLine:Ljavax/swing/JTextArea;

    sget-object v3, Lbsh/util/ClassBrowser;->LIGHT_BLUE:Ljava/awt/Color;

    invoke-virtual {v0, v3}, Ljavax/swing/JTextArea;->setBackground(Ljava/awt/Color;)V

    iget-object v0, p0, Lbsh/util/ClassBrowser;->methodLine:Ljavax/swing/JTextArea;

    invoke-virtual {v0, v2}, Ljavax/swing/JTextArea;->setEditable(Z)V

    iget-object v0, p0, Lbsh/util/ClassBrowser;->methodLine:Ljavax/swing/JTextArea;

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setLineWrap(Z)V

    iget-object v0, p0, Lbsh/util/ClassBrowser;->methodLine:Ljavax/swing/JTextArea;

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setWrapStyleWord(Z)V

    iget-object v0, p0, Lbsh/util/ClassBrowser;->methodLine:Ljavax/swing/JTextArea;

    new-instance v3, Ljava/awt/Font;

    const-string v4, "Monospaced"

    const/16 v5, 0xe

    invoke-direct {v3, v4, v1, v5}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v3}, Ljavax/swing/JTextArea;->setFont(Ljava/awt/Font;)V

    iget-object v0, p0, Lbsh/util/ClassBrowser;->methodLine:Ljavax/swing/JTextArea;

    new-instance v3, Ljava/awt/Insets;

    invoke-direct {v3, v8, v8, v8, v8}, Ljava/awt/Insets;-><init>(IIII)V

    invoke-virtual {v0, v3}, Ljavax/swing/JTextArea;->setMargin(Ljava/awt/Insets;)V

    iget-object v8, p0, Lbsh/util/ClassBrowser;->methodLine:Ljavax/swing/JTextArea;

    new-instance v0, Ljavax/swing/border/MatteBorder;

    sget-object v3, Lbsh/util/ClassBrowser;->LIGHT_BLUE:Ljava/awt/Color;

    invoke-virtual {v3}, Ljava/awt/Color;->darker()Ljava/awt/Color;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/Color;->darker()Ljava/awt/Color;

    move-result-object v5

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v5}, Ljavax/swing/border/MatteBorder;-><init>(IIIILjava/awt/Color;)V

    invoke-virtual {v8, v0}, Ljavax/swing/JTextArea;->setBorder(Ljavax/swing/border/Border;)V

    const-string v0, "North"

    iget-object v1, p0, Lbsh/util/ClassBrowser;->methodLine:Ljavax/swing/JTextArea;

    invoke-virtual {v7, v0, v1}, Ljavax/swing/JPanel;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v0, Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-direct {v0, v1}, Ljavax/swing/JPanel;-><init>(Ljava/awt/LayoutManager;)V

    new-instance v1, Ljavax/swing/JTree;

    invoke-direct {v1}, Ljavax/swing/JTree;-><init>()V

    iput-object v1, p0, Lbsh/util/ClassBrowser;->tree:Ljavax/swing/JTree;

    iget-object v1, p0, Lbsh/util/ClassBrowser;->tree:Ljavax/swing/JTree;

    new-instance v2, Lbsh/util/ClassBrowser$2;

    invoke-direct {v2, p0}, Lbsh/util/ClassBrowser$2;-><init>(Lbsh/util/ClassBrowser;)V

    invoke-virtual {v1, v2}, Ljavax/swing/JTree;->addTreeSelectionListener(Ljavax/swing/event/TreeSelectionListener;)V

    iget-object v1, p0, Lbsh/util/ClassBrowser;->tree:Ljavax/swing/JTree;

    invoke-static {}, Ljavax/swing/BorderFactory;->createRaisedBevelBorder()Ljavax/swing/border/Border;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JTree;->setBorder(Ljavax/swing/border/Border;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lbsh/util/ClassBrowser;->setClassTree(Ljava/lang/Class;)V

    const-string v1, "Center"

    iget-object v2, p0, Lbsh/util/ClassBrowser;->tree:Ljavax/swing/JTree;

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    const-string v1, "Center"

    invoke-virtual {v7, v1, v0}, Ljavax/swing/JPanel;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0, v9, v9}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v7, v0}, Ljavax/swing/JPanel;->setPreferredSize(Ljava/awt/Dimension;)V

    invoke-virtual {p0, v6}, Lbsh/util/ClassBrowser;->setTopComponent(Ljava/awt/Component;)V

    invoke-virtual {p0, v7}, Lbsh/util/ClassBrowser;->setBottomComponent(Ljava/awt/Component;)V

    return-void
.end method

.method labeledPane(Ljavax/swing/JComponent;Ljava/lang/String;)Ljavax/swing/JPanel;
    .registers 7

    new-instance v0, Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-direct {v0, v1}, Ljavax/swing/JPanel;-><init>(Ljava/awt/LayoutManager;)V

    const-string v1, "Center"

    invoke-virtual {v0, v1, p1}, Ljavax/swing/JPanel;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    const-string v1, "North"

    new-instance v2, Ljavax/swing/JLabel;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    return-object v0
.end method

.method parseConstructors([Ljava/lang/reflect/Constructor;)[Ljava/lang/String;
    .registers 6

    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_4
    array-length v2, v1

    if-lt v0, v2, :cond_8

    return-object v1

    :cond_8
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v3, v2}, Lbsh/StringUtil;->methodString(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method parseFields([Ljava/lang/reflect/Field;)[Ljava/lang/String;
    .registers 5

    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_4
    array-length v2, v1

    if-lt v0, v2, :cond_8

    return-object v1

    :cond_8
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method parseMethods([Ljava/lang/reflect/Method;)[Ljava/lang/String;
    .registers 6

    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_4
    array-length v2, v1

    if-lt v0, v2, :cond_8

    return-object v1

    :cond_8
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lbsh/StringUtil;->methodString(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method setClassTree(Ljava/lang/Class;)V
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_9

    iget-object v1, p0, Lbsh/util/ClassBrowser;->tree:Ljavax/swing/JTree;

    invoke-virtual {v1, v0}, Ljavax/swing/JTree;->setModel(Ljavax/swing/tree/TreeModel;)V

    :cond_8
    :goto_8
    return-void

    :cond_9
    move-object v2, v0

    :goto_a
    new-instance v1, Ljavax/swing/tree/DefaultMutableTreeNode;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljavax/swing/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    if-eqz v0, :cond_46

    invoke-virtual {v1, v0}, Ljavax/swing/tree/DefaultMutableTreeNode;->add(Ljavax/swing/tree/MutableTreeNode;)V

    move-object v0, v2

    :goto_19
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_48

    iget-object v2, p0, Lbsh/util/ClassBrowser;->tree:Ljavax/swing/JTree;

    new-instance v3, Ljavax/swing/tree/DefaultTreeModel;

    invoke-direct {v3, v1}, Ljavax/swing/tree/DefaultTreeModel;-><init>(Ljavax/swing/tree/TreeNode;)V

    invoke-virtual {v2, v3}, Ljavax/swing/JTree;->setModel(Ljavax/swing/tree/TreeModel;)V

    invoke-interface {v0}, Ljavax/swing/tree/MutableTreeNode;->getParent()Ljavax/swing/tree/TreeNode;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v2, Ljavax/swing/tree/TreePath;

    iget-object v0, p0, Lbsh/util/ClassBrowser;->tree:Ljavax/swing/JTree;

    invoke-virtual {v0}, Ljavax/swing/JTree;->getModel()Ljavax/swing/tree/TreeModel;

    move-result-object v0

    check-cast v0, Ljavax/swing/tree/DefaultTreeModel;

    invoke-virtual {v0, v1}, Ljavax/swing/tree/DefaultTreeModel;->getPathToRoot(Ljavax/swing/tree/TreeNode;)[Ljavax/swing/tree/TreeNode;

    move-result-object v0

    invoke-direct {v2, v0}, Ljavax/swing/tree/TreePath;-><init>([Ljava/lang/Object;)V

    iget-object v0, p0, Lbsh/util/ClassBrowser;->tree:Ljavax/swing/JTree;

    invoke-virtual {v0, v2}, Ljavax/swing/JTree;->expandPath(Ljavax/swing/tree/TreePath;)V

    goto :goto_8

    :cond_46
    move-object v0, v1

    goto :goto_19

    :cond_48
    move-object v2, v0

    move-object v0, v1

    goto :goto_a
.end method

.method setClist(Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lbsh/util/ClassBrowser;->selectedPackage:Ljava/lang/String;

    iget-object v0, p0, Lbsh/util/ClassBrowser;->classPath:Lbsh/classpath/BshClassPath;

    invoke-virtual {v0, p1}, Lbsh/classpath/BshClassPath;->getClassesForPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p0, v1}, Lbsh/util/ClassBrowser;->toSortedStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbsh/util/ClassBrowser;->classesList:[Ljava/lang/String;

    iget-object v0, p0, Lbsh/util/ClassBrowser;->classlist:Ljavax/swing/JList;

    iget-object v1, p0, Lbsh/util/ClassBrowser;->classesList:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/swing/JList;->setListData([Ljava/lang/Object;)V

    return-void

    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_18

    invoke-static {v0}, Lbsh/classpath/BshClassPath;->splitClassname(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18
.end method

.method setConslist(Ljava/lang/Class;)V
    .registers 4

    if-nez p1, :cond_b

    iget-object v0, p0, Lbsh/util/ClassBrowser;->conslist:Ljavax/swing/JList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljavax/swing/JList;->setListData([Ljava/lang/Object;)V

    :goto_a
    return-void

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser;->getPublicConstructors([Ljava/lang/reflect/Constructor;)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lbsh/util/ClassBrowser;->consList:[Ljava/lang/reflect/Constructor;

    iget-object v0, p0, Lbsh/util/ClassBrowser;->conslist:Ljavax/swing/JList;

    iget-object v1, p0, Lbsh/util/ClassBrowser;->consList:[Ljava/lang/reflect/Constructor;

    invoke-virtual {p0, v1}, Lbsh/util/ClassBrowser;->parseConstructors([Ljava/lang/reflect/Constructor;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JList;->setListData([Ljava/lang/Object;)V

    goto :goto_a
.end method

.method setFieldList(Ljava/lang/Class;)V
    .registers 4

    if-nez p1, :cond_b

    iget-object v0, p0, Lbsh/util/ClassBrowser;->fieldlist:Ljavax/swing/JList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljavax/swing/JList;->setListData([Ljava/lang/Object;)V

    :goto_a
    return-void

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser;->getPublicFields([Ljava/lang/reflect/Field;)[Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lbsh/util/ClassBrowser;->fieldList:[Ljava/lang/reflect/Field;

    iget-object v0, p0, Lbsh/util/ClassBrowser;->fieldlist:Ljavax/swing/JList;

    iget-object v1, p0, Lbsh/util/ClassBrowser;->fieldList:[Ljava/lang/reflect/Field;

    invoke-virtual {p0, v1}, Lbsh/util/ClassBrowser;->parseFields([Ljava/lang/reflect/Field;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JList;->setListData([Ljava/lang/Object;)V

    goto :goto_a
.end method

.method public setFrame(Ljavax/swing/JFrame;)V
    .registers 2

    iput-object p1, p0, Lbsh/util/ClassBrowser;->frame:Ljavax/swing/JFrame;

    return-void
.end method

.method public setFrame(Ljavax/swing/JInternalFrame;)V
    .registers 2

    iput-object p1, p0, Lbsh/util/ClassBrowser;->iframe:Ljavax/swing/JInternalFrame;

    return-void
.end method

.method setMethodLine(Ljava/lang/Object;)V
    .registers 4

    iget-object v1, p0, Lbsh/util/ClassBrowser;->methodLine:Ljavax/swing/JTextArea;

    if-nez p1, :cond_a

    const-string v0, ""

    :goto_6
    invoke-virtual {v1, v0}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method setMlist(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    if-nez p1, :cond_12

    iget-object v0, p0, Lbsh/util/ClassBrowser;->mlist:Ljavax/swing/JList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljavax/swing/JList;->setListData([Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lbsh/util/ClassBrowser;->setConslist(Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lbsh/util/ClassBrowser;->setClassTree(Ljava/lang/Class;)V

    :goto_11
    return-void

    :cond_12
    :try_start_12
    iget-object v0, p0, Lbsh/util/ClassBrowser;->selectedPackage:Ljava/lang/String;

    const-string v1, "<unpackaged>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lbsh/util/ClassBrowser;->classManager:Lbsh/BshClassManager;

    invoke-virtual {v0, p1}, Lbsh/BshClassManager;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lbsh/util/ClassBrowser;->selectedClass:Ljava/lang/Class;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_24} :catch_63

    :goto_24
    iget-object v0, p0, Lbsh/util/ClassBrowser;->selectedClass:Ljava/lang/Class;

    if-nez v0, :cond_6a

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "class not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_11

    :cond_41
    :try_start_41
    iget-object v0, p0, Lbsh/util/ClassBrowser;->classManager:Lbsh/BshClassManager;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lbsh/util/ClassBrowser;->selectedPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsh/BshClassManager;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lbsh/util/ClassBrowser;->selectedClass:Ljava/lang/Class;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_62} :catch_63

    goto :goto_24

    :catch_63
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_11

    :cond_6a
    iget-object v0, p0, Lbsh/util/ClassBrowser;->selectedClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser;->getPublicMethods([Ljava/lang/reflect/Method;)[Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lbsh/util/ClassBrowser;->methodList:[Ljava/lang/reflect/Method;

    iget-object v0, p0, Lbsh/util/ClassBrowser;->mlist:Ljavax/swing/JList;

    iget-object v1, p0, Lbsh/util/ClassBrowser;->methodList:[Ljava/lang/reflect/Method;

    invoke-virtual {p0, v1}, Lbsh/util/ClassBrowser;->parseMethods([Ljava/lang/reflect/Method;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JList;->setListData([Ljava/lang/Object;)V

    iget-object v0, p0, Lbsh/util/ClassBrowser;->selectedClass:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser;->setClassTree(Ljava/lang/Class;)V

    iget-object v0, p0, Lbsh/util/ClassBrowser;->selectedClass:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser;->setConslist(Ljava/lang/Class;)V

    iget-object v0, p0, Lbsh/util/ClassBrowser;->selectedClass:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser;->setFieldList(Ljava/lang/Class;)V

    goto :goto_11
.end method

.method public toFront()V
    .registers 2

    iget-object v0, p0, Lbsh/util/ClassBrowser;->frame:Ljavax/swing/JFrame;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lbsh/util/ClassBrowser;->frame:Ljavax/swing/JFrame;

    invoke-virtual {v0}, Ljavax/swing/JFrame;->toFront()V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lbsh/util/ClassBrowser;->iframe:Ljavax/swing/JInternalFrame;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lbsh/util/ClassBrowser;->iframe:Ljavax/swing/JInternalFrame;

    invoke-virtual {v0}, Ljavax/swing/JInternalFrame;->toFront()V

    goto :goto_9
.end method

.method toSortedStrings(Ljava/util/Collection;)[Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lbsh/StringUtil;->bubbleSort([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueChanged(Ljavax/swing/event/ListSelectionEvent;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lbsh/util/ClassBrowser;->classlist:Ljavax/swing/JList;

    if-ne v0, v1, :cond_78

    iget-object v0, p0, Lbsh/util/ClassBrowser;->classlist:Ljavax/swing/JList;

    invoke-virtual {v0}, Ljavax/swing/JList;->getSelectedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser;->setMlist(Ljava/lang/String;)V

    if-nez v0, :cond_30

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lbsh/util/ClassBrowser;->selectedPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2c
    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser;->setMethodLine(Ljava/lang/Object;)V

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    iget-object v1, p0, Lbsh/util/ClassBrowser;->selectedPackage:Ljava/lang/String;

    const-string v2, "<unpackaged>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    :goto_3a
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " (from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lbsh/util/ClassBrowser;->classPath:Lbsh/classpath/BshClassPath;

    invoke-virtual {v2, v0}, Lbsh/classpath/BshClassPath;->getClassSource(Ljava/lang/String;)Lbsh/classpath/BshClassPath$ClassSource;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_5e
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lbsh/util/ClassBrowser;->selectedPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    :cond_78
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lbsh/util/ClassBrowser;->mlist:Ljavax/swing/JList;

    if-ne v0, v1, :cond_94

    iget-object v0, p0, Lbsh/util/ClassBrowser;->mlist:Ljavax/swing/JList;

    invoke-virtual {v0}, Ljavax/swing/JList;->getSelectedIndex()I

    move-result v0

    if-ne v0, v2, :cond_8c

    invoke-virtual {p0, v3}, Lbsh/util/ClassBrowser;->setMethodLine(Ljava/lang/Object;)V

    goto :goto_2f

    :cond_8c
    iget-object v1, p0, Lbsh/util/ClassBrowser;->methodList:[Ljava/lang/reflect/Method;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser;->setMethodLine(Ljava/lang/Object;)V

    goto :goto_2f

    :cond_94
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lbsh/util/ClassBrowser;->conslist:Ljavax/swing/JList;

    if-ne v0, v1, :cond_b0

    iget-object v0, p0, Lbsh/util/ClassBrowser;->conslist:Ljavax/swing/JList;

    invoke-virtual {v0}, Ljavax/swing/JList;->getSelectedIndex()I

    move-result v0

    if-ne v0, v2, :cond_a8

    invoke-virtual {p0, v3}, Lbsh/util/ClassBrowser;->setMethodLine(Ljava/lang/Object;)V

    goto :goto_2f

    :cond_a8
    iget-object v1, p0, Lbsh/util/ClassBrowser;->consList:[Ljava/lang/reflect/Constructor;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser;->setMethodLine(Ljava/lang/Object;)V

    goto :goto_2f

    :cond_b0
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lbsh/util/ClassBrowser;->fieldlist:Ljavax/swing/JList;

    if-ne v0, v1, :cond_2f

    iget-object v0, p0, Lbsh/util/ClassBrowser;->fieldlist:Ljavax/swing/JList;

    invoke-virtual {v0}, Ljavax/swing/JList;->getSelectedIndex()I

    move-result v0

    if-ne v0, v2, :cond_c5

    invoke-virtual {p0, v3}, Lbsh/util/ClassBrowser;->setMethodLine(Ljava/lang/Object;)V

    goto/16 :goto_2f

    :cond_c5
    iget-object v1, p0, Lbsh/util/ClassBrowser;->fieldList:[Ljava/lang/reflect/Field;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Lbsh/util/ClassBrowser;->setMethodLine(Ljava/lang/Object;)V

    goto/16 :goto_2f
.end method
