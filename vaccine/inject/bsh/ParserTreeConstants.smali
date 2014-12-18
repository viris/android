.class public interface abstract Lbsh/ParserTreeConstants;
.super Ljava/lang/Object;


# static fields
.field public static final JJTALLOCATIONEXPRESSION:I = 0x17

.field public static final JJTAMBIGUOUSNAME:I = 0xc

.field public static final JJTARGUMENTS:I = 0x16

.field public static final JJTARRAYDIMENSIONS:I = 0x18

.field public static final JJTARRAYINITIALIZER:I = 0x6

.field public static final JJTASSIGNMENT:I = 0xd

.field public static final JJTBINARYEXPRESSION:I = 0xf

.field public static final JJTBLOCK:I = 0x19

.field public static final JJTCASTEXPRESSION:I = 0x11

.field public static final JJTCLASSDECLARATION:I = 0x1

.field public static final JJTENHANCEDFORSTATEMENT:I = 0x20

.field public static final JJTFORMALCOMMENT:I = 0x1a

.field public static final JJTFORMALPARAMETER:I = 0x8

.field public static final JJTFORMALPARAMETERS:I = 0x7

.field public static final JJTFORSTATEMENT:I = 0x1f

.field public static final JJTIFSTATEMENT:I = 0x1d

.field public static final JJTIMPORTDECLARATION:I = 0x4

.field public static final JJTLITERAL:I = 0x15

.field public static final JJTMETHODDECLARATION:I = 0x2

.field public static final JJTMETHODINVOCATION:I = 0x13

.field public static final JJTPACKAGEDECLARATION:I = 0x3

.field public static final JJTPRIMARYEXPRESSION:I = 0x12

.field public static final JJTPRIMARYSUFFIX:I = 0x14

.field public static final JJTPRIMITIVETYPE:I = 0xb

.field public static final JJTRETURNSTATEMENT:I = 0x23

.field public static final JJTRETURNTYPE:I = 0xa

.field public static final JJTSTATEMENTEXPRESSIONLIST:I = 0x22

.field public static final JJTSWITCHLABEL:I = 0x1c

.field public static final JJTSWITCHSTATEMENT:I = 0x1b

.field public static final JJTTERNARYEXPRESSION:I = 0xe

.field public static final JJTTHROWSTATEMENT:I = 0x24

.field public static final JJTTRYSTATEMENT:I = 0x25

.field public static final JJTTYPE:I = 0x9

.field public static final JJTTYPEDVARIABLEDECLARATION:I = 0x21

.field public static final JJTUNARYEXPRESSION:I = 0x10

.field public static final JJTVARIABLEDECLARATOR:I = 0x5

.field public static final JJTVOID:I = 0x0

.field public static final JJTWHILESTATEMENT:I = 0x1e

.field public static final jjtNodeName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x26

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "void"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ClassDeclaration"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MethodDeclaration"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "PackageDeclaration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ImportDeclaration"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "VariableDeclarator"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ArrayInitializer"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "FormalParameters"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "FormalParameter"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ReturnType"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "PrimitiveType"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "AmbiguousName"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Assignment"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "TernaryExpression"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "BinaryExpression"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "UnaryExpression"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "CastExpression"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "PrimaryExpression"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "MethodInvocation"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "PrimarySuffix"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Literal"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Arguments"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "AllocationExpression"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "ArrayDimensions"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Block"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "FormalComment"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "SwitchStatement"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "SwitchLabel"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "IfStatement"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "WhileStatement"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "ForStatement"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "EnhancedForStatement"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "TypedVariableDeclaration"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "StatementExpressionList"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "ReturnStatement"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "ThrowStatement"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "TryStatement"

    aput-object v2, v0, v1

    sput-object v0, Lbsh/ParserTreeConstants;->jjtNodeName:[Ljava/lang/String;

    return-void
.end method
