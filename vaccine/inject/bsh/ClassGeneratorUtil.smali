.class public Lbsh/ClassGeneratorUtil;
.super Ljava/lang/Object;

# interfaces
.implements Lbsh/org/objectweb/asm/Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/ClassGeneratorUtil$ConstructorArgs;
    }
.end annotation


# static fields
.field static final BSHCONSTRUCTORS:Ljava/lang/String; = "_bshConstructors"

.field static final BSHINIT:Ljava/lang/String; = "_bshInstanceInitializer"

.field static final BSHSTATIC:Ljava/lang/String; = "_bshStatic"

.field static final BSHSUPER:Ljava/lang/String; = "_bshSuper"

.field static final BSHTHIS:Ljava/lang/String; = "_bshThis"

.field static final DEFAULTCONSTRUCTOR:I = -0x1

.field static final OBJECT:Ljava/lang/String; = "Ljava/lang/Object;"

.field static array$Ljava$lang$Object:Ljava/lang/Class;

.field static class$bsh$CallStack:Ljava/lang/Class;

.field static class$bsh$Interpreter:Ljava/lang/Class;

.field static class$bsh$SimpleNode:Ljava/lang/Class;

.field static class$java$lang$Object:Ljava/lang/Class;

.field static class$java$lang$String:Ljava/lang/Class;


# instance fields
.field classModifiers:Lbsh/Modifiers;

.field className:Ljava/lang/String;

.field classStaticNameSpace:Lbsh/NameSpace;

.field constructors:[Lbsh/DelayedEvalBshMethod;

.field fqClassName:Ljava/lang/String;

.field interfaces:[Ljava/lang/Class;

.field isInterface:Z

.field methods:[Lbsh/DelayedEvalBshMethod;

.field superClass:Ljava/lang/Class;

.field superClassName:Ljava/lang/String;

.field superConstructors:[Ljava/lang/reflect/Constructor;

.field vars:[Lbsh/Variable;


# direct methods
.method public constructor <init>(Lbsh/Modifiers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Lbsh/Variable;[Lbsh/DelayedEvalBshMethod;Lbsh/NameSpace;Z)V
    .registers 16

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsh/ClassGeneratorUtil;->classModifiers:Lbsh/Modifiers;

    iput-object p2, p0, Lbsh/ClassGeneratorUtil;->className:Ljava/lang/String;

    if-eqz p3, :cond_82

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbsh/ClassGeneratorUtil;->fqClassName:Ljava/lang/String;

    :goto_2b
    if-nez p4, :cond_ab

    sget-object v0, Lbsh/ClassGeneratorUtil;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_85

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lbsh/ClassGeneratorUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/ClassGeneratorUtil;->class$java$lang$Object:Ljava/lang/Class;

    :goto_39
    iput-object v0, p0, Lbsh/ClassGeneratorUtil;->superClass:Ljava/lang/Class;

    invoke-static {v0}, Lbsh/org/objectweb/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lbsh/ClassGeneratorUtil;->superClassName:Ljava/lang/String;

    if-nez p5, :cond_45

    new-array p5, v1, [Ljava/lang/Class;

    :cond_45
    iput-object p5, p0, Lbsh/ClassGeneratorUtil;->interfaces:[Ljava/lang/Class;

    iput-object p6, p0, Lbsh/ClassGeneratorUtil;->vars:[Lbsh/Variable;

    iput-object p8, p0, Lbsh/ClassGeneratorUtil;->classStaticNameSpace:Lbsh/NameSpace;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lbsh/ClassGeneratorUtil;->superConstructors:[Ljava/lang/reflect/Constructor;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Lbsh/ClassGeneratorUtil;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v0, v1

    :goto_60
    array-length v5, p7

    if-lt v0, v5, :cond_88

    new-array v0, v1, [Lbsh/DelayedEvalBshMethod;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbsh/DelayedEvalBshMethod;

    iput-object v0, p0, Lbsh/ClassGeneratorUtil;->constructors:[Lbsh/DelayedEvalBshMethod;

    new-array v0, v1, [Lbsh/DelayedEvalBshMethod;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbsh/DelayedEvalBshMethod;

    iput-object v0, p0, Lbsh/ClassGeneratorUtil;->methods:[Lbsh/DelayedEvalBshMethod;

    :try_start_77
    const-string v0, "_bshConstructors"

    iget-object v1, p0, Lbsh/ClassGeneratorUtil;->constructors:[Lbsh/DelayedEvalBshMethod;

    const/4 v2, 0x0

    invoke-virtual {p8, v0, v1, v2}, Lbsh/NameSpace;->setLocalVariable(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_7f
    .catch Lbsh/UtilEvalError; {:try_start_77 .. :try_end_7f} :catch_a2

    iput-boolean p9, p0, Lbsh/ClassGeneratorUtil;->isInterface:Z

    return-void

    :cond_82
    iput-object p2, p0, Lbsh/ClassGeneratorUtil;->fqClassName:Ljava/lang/String;

    goto :goto_2b

    :cond_85
    sget-object v0, Lbsh/ClassGeneratorUtil;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_39

    :cond_88
    aget-object v5, p7, v0

    invoke-virtual {v5}, Lbsh/DelayedEvalBshMethod;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9c

    aget-object v5, p7, v0

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_99
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    :cond_9c
    aget-object v5, p7, v0

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_99

    :catch_a2
    move-exception v0

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "can\'t set cons var"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ab
    move-object v0, p4

    goto :goto_39
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static descriptorToClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "L"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    :goto_10
    return-object p0

    :cond_11
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_10
.end method

.method static doSwitchBranch(ILjava/lang/String;[Ljava/lang/String;Lbsh/org/objectweb/asm/Label;[Lbsh/org/objectweb/asm/Label;ILbsh/org/objectweb/asm/CodeVisitor;)V
    .registers 16

    const/16 v8, 0x19

    const/4 v0, 0x0

    aget-object v1, p4, p0

    invoke-interface {p6, v1}, Lbsh/org/objectweb/asm/CodeVisitor;->visitLabel(Lbsh/org/objectweb/asm/Label;)V

    invoke-interface {p6, v8, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    :goto_b
    array-length v1, p2

    if-lt v0, v1, :cond_21

    const-string v0, "V"

    invoke-static {v0, p2}, Lbsh/ClassGeneratorUtil;->getMethodDescriptor(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb7

    const-string v2, "<init>"

    invoke-interface {p6, v1, p1, v2, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa7

    invoke-interface {p6, v0, p3}, Lbsh/org/objectweb/asm/CodeVisitor;->visitJumpInsn(ILbsh/org/objectweb/asm/Label;)V

    return-void

    :cond_21
    aget-object v3, p2, v0

    const-string v1, "Z"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    const-string v1, "getBoolean"

    :goto_2d
    invoke-interface {p6, v8, p5}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    const-string v4, "bsh/ClassGeneratorUtil$ConstructorArgs"

    const-string v2, "getObject"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    const-string v2, "Ljava/lang/Object;"

    :goto_3c
    const/16 v5, 0xb6

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p6, v5, v4, v1, v2}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "getObject"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/16 v1, 0xc0

    invoke-static {v3}, Lbsh/ClassGeneratorUtil;->descriptorToClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p6, v1, v2}, Lbsh/org/objectweb/asm/CodeVisitor;->visitTypeInsn(ILjava/lang/String;)V

    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_68
    const-string v1, "B"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    const-string v1, "getByte"

    goto :goto_2d

    :cond_73
    const-string v1, "C"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    const-string v1, "getChar"

    goto :goto_2d

    :cond_7e
    const-string v1, "S"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    const-string v1, "getShort"

    goto :goto_2d

    :cond_89
    const-string v1, "I"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    const-string v1, "getInt"

    goto :goto_2d

    :cond_94
    const-string v1, "J"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    const-string v1, "getLong"

    goto :goto_2d

    :cond_9f
    const-string v1, "D"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa

    const-string v1, "getDouble"

    goto :goto_2d

    :cond_aa
    const-string v1, "F"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    const-string v1, "getFloat"

    goto/16 :goto_2d

    :cond_b6
    const-string v1, "getObject"

    goto/16 :goto_2d

    :cond_ba
    move-object v2, v3

    goto :goto_3c
.end method

.method static generateField(Ljava/lang/String;Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p3, p2, p0, p1, v0}, Lbsh/org/objectweb/asm/ClassWriter;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static generateMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V
    .registers 15

    const/4 v1, 0x0

    and-int/lit8 v0, p5, 0x8

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_6
    if-nez p3, :cond_a

    const-string p3, "Ljava/lang/Object;"

    :cond_a
    invoke-static {p3, p4}, Lbsh/ClassGeneratorUtil;->getMethodDescriptor(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p6, p5, p2, v2, v1}, Lbsh/org/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbsh/org/objectweb/asm/CodeVisitor;

    move-result-object v1

    and-int/lit16 v2, p5, 0x400

    if-eqz v2, :cond_19

    :goto_16
    return-void

    :cond_17
    const/4 v0, 0x0

    goto :goto_6

    :cond_19
    if-eqz v0, :cond_ea

    const/16 v2, 0xb2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "_bshStatic"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Lbsh/This;"

    invoke-interface {v1, v2, p1, v3, v4}, Lbsh/org/objectweb/asm/CodeVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_35
    invoke-interface {v1, p2}, Lbsh/org/objectweb/asm/CodeVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    invoke-static {p4, v0, v1}, Lbsh/ClassGeneratorUtil;->generateParameterReifierCode([Ljava/lang/String;ZLbsh/org/objectweb/asm/CodeVisitor;)V

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    const/4 v0, 0x4

    invoke-interface {v1, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    const/16 v2, 0xb6

    const-string v3, "bsh/This"

    const-string v4, "invokeMethod"

    sget-object v0, Lbsh/ClassGeneratorUtil;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_10c

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lbsh/ClassGeneratorUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/ClassGeneratorUtil;->class$java$lang$Object:Ljava/lang/Class;

    :goto_5d
    invoke-static {v0}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;

    move-result-object v5

    const/4 v0, 0x6

    new-array v6, v0, [Lbsh/org/objectweb/asm/Type;

    const/4 v7, 0x0

    sget-object v0, Lbsh/ClassGeneratorUtil;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_110

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lbsh/ClassGeneratorUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/ClassGeneratorUtil;->class$java$lang$String:Ljava/lang/Class;

    :goto_71
    invoke-static {v0}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    sget-object v0, Lbsh/ClassGeneratorUtil;->array$Ljava$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_114

    const-string v0, "[Ljava.lang.Object;"

    invoke-static {v0}, Lbsh/ClassGeneratorUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/ClassGeneratorUtil;->array$Ljava$lang$Object:Ljava/lang/Class;

    :goto_84
    invoke-static {v0}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v7, 0x2

    sget-object v0, Lbsh/ClassGeneratorUtil;->class$bsh$Interpreter:Ljava/lang/Class;

    if-nez v0, :cond_118

    const-string v0, "bsh.Interpreter"

    invoke-static {v0}, Lbsh/ClassGeneratorUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/ClassGeneratorUtil;->class$bsh$Interpreter:Ljava/lang/Class;

    :goto_97
    invoke-static {v0}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v7, 0x3

    sget-object v0, Lbsh/ClassGeneratorUtil;->class$bsh$CallStack:Ljava/lang/Class;

    if-nez v0, :cond_11c

    const-string v0, "bsh.CallStack"

    invoke-static {v0}, Lbsh/ClassGeneratorUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/ClassGeneratorUtil;->class$bsh$CallStack:Ljava/lang/Class;

    :goto_aa
    invoke-static {v0}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v7, 0x4

    sget-object v0, Lbsh/ClassGeneratorUtil;->class$bsh$SimpleNode:Ljava/lang/Class;

    if-nez v0, :cond_11f

    const-string v0, "bsh.SimpleNode"

    invoke-static {v0}, Lbsh/ClassGeneratorUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/ClassGeneratorUtil;->class$bsh$SimpleNode:Ljava/lang/Class;

    :goto_bd
    invoke-static {v0}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x5

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7}, Lbsh/org/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lbsh/org/objectweb/asm/Type;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v5, v6}, Lbsh/org/objectweb/asm/Type;->getMethodDescriptor(Lbsh/org/objectweb/asm/Type;[Lbsh/org/objectweb/asm/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v4, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb8

    const-string v2, "bsh/Primitive"

    const-string v3, "unwrap"

    const-string v4, "(Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-interface {v1, v0, v2, v3, v4}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3, v1}, Lbsh/ClassGeneratorUtil;->generateReturnCode(Ljava/lang/String;Lbsh/org/objectweb/asm/CodeVisitor;)V

    const/16 v0, 0x14

    const/16 v2, 0x14

    invoke-interface {v1, v0, v2}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMaxs(II)V

    goto/16 :goto_16

    :cond_ea
    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    const/16 v2, 0xb4

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "_bshThis"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Lbsh/This;"

    invoke-interface {v1, v2, p1, v3, v4}, Lbsh/org/objectweb/asm/CodeVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_35

    :cond_10c
    sget-object v0, Lbsh/ClassGeneratorUtil;->class$java$lang$Object:Ljava/lang/Class;

    goto/16 :goto_5d

    :cond_110
    sget-object v0, Lbsh/ClassGeneratorUtil;->class$java$lang$String:Ljava/lang/Class;

    goto/16 :goto_71

    :cond_114
    sget-object v0, Lbsh/ClassGeneratorUtil;->array$Ljava$lang$Object:Ljava/lang/Class;

    goto/16 :goto_84

    :cond_118
    sget-object v0, Lbsh/ClassGeneratorUtil;->class$bsh$Interpreter:Ljava/lang/Class;

    goto/16 :goto_97

    :cond_11c
    sget-object v0, Lbsh/ClassGeneratorUtil;->class$bsh$CallStack:Ljava/lang/Class;

    goto :goto_aa

    :cond_11f
    sget-object v0, Lbsh/ClassGeneratorUtil;->class$bsh$SimpleNode:Ljava/lang/Class;

    goto :goto_bd
.end method

.method public static generateParameterReifierCode([Ljava/lang/String;ZLbsh/org/objectweb/asm/CodeVisitor;)V
    .registers 14

    const/16 v10, 0x59

    const/16 v9, 0x11

    const/4 v2, 0x1

    const/4 v1, 0x0

    array-length v0, p0

    invoke-interface {p2, v9, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitIntInsn(II)V

    const/16 v0, 0xbd

    const-string v3, "java/lang/Object"

    invoke-interface {p2, v0, v3}, Lbsh/org/objectweb/asm/CodeVisitor;->visitTypeInsn(ILjava/lang/String;)V

    if-eqz p1, :cond_18

    move v0, v1

    :goto_14
    array-length v3, p0

    if-lt v1, v3, :cond_1a

    return-void

    :cond_18
    move v0, v2

    goto :goto_14

    :cond_1a
    aget-object v4, p0, v1

    invoke-interface {p2, v10}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    invoke-interface {p2, v9, v1}, Lbsh/org/objectweb/asm/CodeVisitor;->visitIntInsn(II)V

    invoke-static {v4}, Lbsh/ClassGeneratorUtil;->isPrimitive(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_92

    const-string v3, "F"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    const/16 v3, 0x17

    :goto_32
    const-string v5, "bsh/Primitive"

    const/16 v6, 0xbb

    invoke-interface {p2, v6, v5}, Lbsh/org/objectweb/asm/CodeVisitor;->visitTypeInsn(ILjava/lang/String;)V

    invoke-interface {p2, v10}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    invoke-interface {p2, v3, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    const/16 v3, 0xb7

    const-string v6, "<init>"

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ")V"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v3, v5, v6, v7}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5f
    const/16 v3, 0x53

    invoke-interface {p2, v3}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    const-string v3, "D"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_74

    const-string v3, "J"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    :cond_74
    const/4 v3, 0x2

    :goto_75
    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_79
    const-string v3, "D"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    const/16 v3, 0x18

    goto :goto_32

    :cond_84
    const-string v3, "J"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    const/16 v3, 0x16

    goto :goto_32

    :cond_8f
    const/16 v3, 0x15

    goto :goto_32

    :cond_92
    const/16 v3, 0x19

    invoke-interface {p2, v3, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    goto :goto_5f

    :cond_98
    move v3, v2

    goto :goto_75
.end method

.method static generatePlainReturnCode(Ljava/lang/String;Lbsh/org/objectweb/asm/CodeVisitor;)V
    .registers 4

    const-string v0, "V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0xb1

    invoke-interface {p1, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    :goto_d
    return-void

    :cond_e
    invoke-static {p0}, Lbsh/ClassGeneratorUtil;->isPrimitive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/16 v0, 0xac

    const-string v1, "D"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/16 v0, 0xaf

    :cond_20
    :goto_20
    invoke-interface {p1, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    goto :goto_d

    :cond_24
    const-string v1, "F"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/16 v0, 0xae

    goto :goto_20

    :cond_2f
    const-string v1, "J"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/16 v0, 0xad

    goto :goto_20

    :cond_3a
    const/16 v0, 0xc0

    invoke-static {p0}, Lbsh/ClassGeneratorUtil;->descriptorToClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lbsh/org/objectweb/asm/CodeVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v0, 0xb0

    invoke-interface {p1, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    goto :goto_d
.end method

.method public static generateReturnCode(Ljava/lang/String;Lbsh/org/objectweb/asm/CodeVisitor;)V
    .registers 8

    const/16 v3, 0xc0

    const-string v0, "V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x57

    invoke-interface {p1, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    const/16 v0, 0xb1

    invoke-interface {p1, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    :goto_14
    return-void

    :cond_15
    invoke-static {p0}, Lbsh/ClassGeneratorUtil;->isPrimitive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a1

    const/16 v2, 0xac

    const-string v0, "B"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v1, "java/lang/Byte"

    const-string v0, "byteValue"

    :goto_29
    invoke-interface {p1, v3, v1}, Lbsh/org/objectweb/asm/CodeVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v3, 0xb6

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v1, v0, v4}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    goto :goto_14

    :cond_48
    const-string v0, "I"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v1, "java/lang/Integer"

    const-string v0, "intValue"

    goto :goto_29

    :cond_55
    const-string v0, "Z"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    const-string v1, "java/lang/Boolean"

    const-string v0, "booleanValue"

    goto :goto_29

    :cond_62
    const-string v0, "D"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    const/16 v2, 0xaf

    const-string v1, "java/lang/Double"

    const-string v0, "doubleValue"

    goto :goto_29

    :cond_71
    const-string v0, "F"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    const/16 v2, 0xae

    const-string v1, "java/lang/Float"

    const-string v0, "floatValue"

    goto :goto_29

    :cond_80
    const-string v0, "J"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    const/16 v2, 0xad

    const-string v1, "java/lang/Long"

    const-string v0, "longValue"

    goto :goto_29

    :cond_8f
    const-string v0, "C"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    const-string v1, "java/lang/Character"

    const-string v0, "charValue"

    goto :goto_29

    :cond_9c
    const-string v1, "java/lang/Short"

    const-string v0, "shortValue"

    goto :goto_29

    :cond_a1
    invoke-static {p0}, Lbsh/ClassGeneratorUtil;->descriptorToClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v0, 0xb0

    invoke-interface {p1, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    goto/16 :goto_14
.end method

.method static generateSuperDelegateMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V
    .registers 15

    const/16 v8, 0x19

    const/16 v7, 0x14

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_b

    const-string p2, "Ljava/lang/Object;"

    :cond_b
    invoke-static {p2, p3}, Lbsh/ClassGeneratorUtil;->getMethodDescriptor(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "_bshSuper"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, p4, v3, v4, v1}, Lbsh/org/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbsh/org/objectweb/asm/CodeVisitor;

    move-result-object v5

    invoke-interface {v5, v8, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    move v1, v2

    :goto_2a
    array-length v3, p3

    if-lt v0, v3, :cond_39

    const/16 v0, 0xb7

    invoke-interface {v5, v0, p0, p1, v4}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v5}, Lbsh/ClassGeneratorUtil;->generatePlainReturnCode(Ljava/lang/String;Lbsh/org/objectweb/asm/CodeVisitor;)V

    invoke-interface {v5, v7, v7}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMaxs(II)V

    return-void

    :cond_39
    aget-object v3, p3, v0

    invoke-static {v3}, Lbsh/ClassGeneratorUtil;->isPrimitive(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f

    const/16 v3, 0x15

    invoke-interface {v5, v3, v1}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    :goto_46
    aget-object v3, p3, v0

    const-string v6, "D"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    aget-object v3, p3, v0

    const-string v6, "J"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    :cond_5a
    const/4 v3, 0x2

    :goto_5b
    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_5f
    invoke-interface {v5, v8, v1}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    goto :goto_46

    :cond_63
    move v3, v2

    goto :goto_5b
.end method

.method static getASMModifiers(Lbsh/Modifiers;)I
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    const-string v1, "public"

    invoke-virtual {p0, v1}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    const-string v1, "protected"

    invoke-virtual {p0, v1}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    add-int/lit8 v0, v0, 0x4

    :cond_17
    const-string v1, "static"

    invoke-virtual {p0, v1}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    add-int/lit8 v0, v0, 0x8

    :cond_21
    const-string v1, "synchronized"

    invoke-virtual {p0, v1}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    add-int/lit8 v0, v0, 0x20

    :cond_2b
    const-string v1, "abstract"

    invoke-virtual {p0, v1}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit16 v0, v0, 0x400

    goto :goto_3
.end method

.method private static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    :goto_9
    return-object p0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_9
.end method

.method static getClassInstanceThis(Ljava/lang/Object;Ljava/lang/String;)Lbsh/This;
    .registers 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_bshThis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lbsh/Reflect;->getObjectFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/This;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object v0

    :catch_1e
    move-exception v0

    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Generated class: Error getting This"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getClassStaticThis(Ljava/lang/Class;Ljava/lang/String;)Lbsh/This;
    .registers 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_bshStatic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lbsh/Reflect;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/This;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    return-object v0

    :catch_1a
    move-exception v0

    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unable to get class static space: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getConstructorArgs(Ljava/lang/String;Lbsh/This;[Ljava/lang/Object;I)Lbsh/ClassGeneratorUtil$ConstructorArgs;
    .registers 15

    :try_start_0
    invoke-virtual {p1}, Lbsh/This;->getNameSpace()Lbsh/NameSpace;

    move-result-object v0

    const-string v1, "_bshConstructors"

    invoke-virtual {v0, v1}, Lbsh/NameSpace;->getVariable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbsh/DelayedEvalBshMethod;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_12

    const/4 v1, -0x1

    if-ne p3, v1, :cond_2c

    sget-object v0, Lbsh/ClassGeneratorUtil$ConstructorArgs;->DEFAULT:Lbsh/ClassGeneratorUtil$ConstructorArgs;

    :goto_11
    return-object v0

    :catch_12
    move-exception v0

    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "unable to get instance initializer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2c
    aget-object v4, v0, p3

    iget-object v1, v4, Lbsh/DelayedEvalBshMethod;->methodBody:Lbsh/BSHBlock;

    invoke-virtual {v1}, Lbsh/BSHBlock;->jjtGetNumChildren()I

    move-result v1

    if-nez v1, :cond_39

    sget-object v0, Lbsh/ClassGeneratorUtil$ConstructorArgs;->DEFAULT:Lbsh/ClassGeneratorUtil$ConstructorArgs;

    goto :goto_11

    :cond_39
    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v1, v4, Lbsh/DelayedEvalBshMethod;->methodBody:Lbsh/BSHBlock;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lbsh/BSHBlock;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/SimpleNode;

    instance-of v5, v1, Lbsh/BSHPrimaryExpression;

    if-eqz v5, :cond_4f

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lbsh/SimpleNode;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/SimpleNode;

    :cond_4f
    instance-of v5, v1, Lbsh/BSHMethodInvocation;

    if-eqz v5, :cond_75

    check-cast v1, Lbsh/BSHMethodInvocation;

    invoke-virtual {v1}, Lbsh/BSHMethodInvocation;->getNameNode()Lbsh/BSHAmbiguousName;

    move-result-object v5

    iget-object v6, v5, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;

    const-string v7, "super"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6d

    iget-object v6, v5, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;

    const-string v7, "this"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    :cond_6d
    iget-object v2, v5, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;

    invoke-virtual {v1}, Lbsh/BSHMethodInvocation;->getArgsNode()Lbsh/BSHArguments;

    move-result-object v1

    move-object v3, v2

    move-object v2, v1

    :cond_75
    if-nez v3, :cond_7a

    sget-object v0, Lbsh/ClassGeneratorUtil$ConstructorArgs;->DEFAULT:Lbsh/ClassGeneratorUtil$ConstructorArgs;

    goto :goto_11

    :cond_7a
    new-instance v5, Lbsh/NameSpace;

    invoke-virtual {p1}, Lbsh/This;->getNameSpace()Lbsh/NameSpace;

    move-result-object v1

    const-string v6, "consArgs"

    invoke-direct {v5, v1, v6}, Lbsh/NameSpace;-><init>(Lbsh/NameSpace;Ljava/lang/String;)V

    invoke-virtual {v4}, Lbsh/DelayedEvalBshMethod;->getParameterNames()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lbsh/DelayedEvalBshMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    const/4 v1, 0x0

    :goto_8e
    array-length v7, p2

    if-lt v1, v7, :cond_ca

    new-instance v1, Lbsh/CallStack;

    invoke-direct {v1}, Lbsh/CallStack;-><init>()V

    invoke-virtual {v1, v5}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    iget-object v4, p1, Lbsh/This;->declaringInterpreter:Lbsh/Interpreter;

    :try_start_9b
    invoke-virtual {v2, v1, v4}, Lbsh/BSHArguments;->getArguments(Lbsh/CallStack;Lbsh/Interpreter;)[Ljava/lang/Object;
    :try_end_9e
    .catch Lbsh/EvalError; {:try_start_9b .. :try_end_9e} :catch_f1

    move-result-object v1

    invoke-static {v1}, Lbsh/Types;->getTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1}, Lbsh/Primitive;->unwrap([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lbsh/BshClassManager;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_10b

    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "can\'t find superclass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ca
    :try_start_ca
    aget-object v7, v6, v1

    aget-object v8, v4, v1

    aget-object v9, p2, v1

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v8, v9, v10}, Lbsh/NameSpace;->setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V
    :try_end_d4
    .catch Lbsh/UtilEvalError; {:try_start_ca .. :try_end_d4} :catch_d7

    add-int/lit8 v1, v1, 0x1

    goto :goto_8e

    :catch_d7
    move-exception v0

    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "err setting local cons arg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_f1
    move-exception v0

    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error evaluating constructor args: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10b
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    const-string v1, "super"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12d

    invoke-static {v2, v4}, Lbsh/Reflect;->findMostSpecificConstructorIndex([Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_126

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "can\'t find constructor for args!"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_126
    new-instance v0, Lbsh/ClassGeneratorUtil$ConstructorArgs;

    invoke-direct {v0, v1, v5}, Lbsh/ClassGeneratorUtil$ConstructorArgs;-><init>(I[Ljava/lang/Object;)V

    goto/16 :goto_11

    :cond_12d
    array-length v1, v0

    new-array v3, v1, [[Ljava/lang/Class;

    const/4 v1, 0x0

    :goto_131
    array-length v6, v3

    if-lt v1, v6, :cond_143

    invoke-static {v2, v3}, Lbsh/Reflect;->findMostSpecificSignature([Ljava/lang/Class;[[Ljava/lang/Class;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14e

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "can\'t find constructor for args 2!"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_143
    aget-object v6, v0, v1

    invoke-virtual {v6}, Lbsh/DelayedEvalBshMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_131

    :cond_14e
    array-length v1, v4

    add-int/2addr v1, v0

    array-length v0, v4

    add-int/2addr v0, p3

    if-ne v1, v0, :cond_15c

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "Recusive constructor call."

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15c
    new-instance v0, Lbsh/ClassGeneratorUtil$ConstructorArgs;

    invoke-direct {v0, v1, v5}, Lbsh/ClassGeneratorUtil$ConstructorArgs;-><init>(I[Ljava/lang/Object;)V

    goto/16 :goto_11
.end method

.method static getMethodDescriptor(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, "("

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_8
    array-length v2, p1

    if-lt v0, v2, :cond_26

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method static getTypeDescriptors([Ljava/lang/Class;)[Ljava/lang/String;
    .registers 4

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_4
    array-length v2, v1

    if-lt v0, v2, :cond_8

    return-object v1

    :cond_8
    aget-object v2, p0, v0

    invoke-static {v2}, Lbsh/BSHType;->getTypeDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public static initInstance(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 11

    const/4 v6, 0x1

    invoke-static {p2}, Lbsh/Types;->getTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v4

    new-instance v3, Lbsh/CallStack;

    invoke-direct {v3}, Lbsh/CallStack;-><init>()V

    invoke-static {p0, p1}, Lbsh/ClassGeneratorUtil;->getClassInstanceThis(Ljava/lang/Object;Ljava/lang/String;)Lbsh/This;

    move-result-object v0

    if-nez v0, :cond_10c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lbsh/ClassGeneratorUtil;->getClassStaticThis(Ljava/lang/Class;Ljava/lang/String;)Lbsh/This;

    move-result-object v5

    iget-object v2, v5, Lbsh/This;->declaringInterpreter:Lbsh/Interpreter;

    :try_start_1a
    invoke-virtual {v5}, Lbsh/This;->getNameSpace()Lbsh/NameSpace;

    move-result-object v0

    const-string v1, "_bshInstanceInitializer"

    invoke-virtual {v0, v1}, Lbsh/NameSpace;->getVariable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/BSHBlock;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_26} :catch_be

    new-instance v1, Lbsh/NameSpace;

    invoke-virtual {v5}, Lbsh/This;->getNameSpace()Lbsh/NameSpace;

    move-result-object v5

    invoke-direct {v1, v5, p1}, Lbsh/NameSpace;-><init>(Lbsh/NameSpace;Ljava/lang/String;)V

    iput-boolean v6, v1, Lbsh/NameSpace;->isClass:Z

    invoke-virtual {v1, v2}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v5

    :try_start_35
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "_bshThis"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lbsh/Reflect;->getLHSObjectField(Ljava/lang/Object;Ljava/lang/String;)Lbsh/LHS;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_50} :catch_d8

    invoke-virtual {v1, p0}, Lbsh/NameSpace;->setClassInstance(Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    const/4 v5, 0x1

    :try_start_57
    sget-object v6, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->CLASSINSTANCE:Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    invoke-virtual {v0, v3, v2, v5, v6}, Lbsh/BSHBlock;->evalBlock(Lbsh/CallStack;Lbsh/Interpreter;ZLbsh/BSHBlock$NodeFilter;)Ljava/lang/Object;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5c} :catch_f2

    invoke-virtual {v3}, Lbsh/CallStack;->pop()Lbsh/NameSpace;

    move-object v0, v1

    :goto_60
    invoke-static {p1}, Lbsh/ClassGeneratorUtil;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    :try_start_65
    invoke-virtual {v0, v1, v4, v5}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Lbsh/BshMethod;

    move-result-object v0

    array-length v1, p2

    if-lez v1, :cond_114

    if-nez v0, :cond_114

    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t find constructor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_87} :catch_87

    :catch_87
    move-exception v0

    instance-of v1, v0, Lbsh/TargetError;

    if-eqz v1, :cond_94

    check-cast v0, Lbsh/TargetError;

    invoke-virtual {v0}, Lbsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    :cond_94
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_a0

    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    :cond_a0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error in class initialization: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_be
    move-exception v0

    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "unable to get instance initializer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_d8
    move-exception v0

    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error in class gen setup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_f2
    move-exception v0

    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error in class initialization: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10c
    iget-object v2, v0, Lbsh/This;->declaringInterpreter:Lbsh/Interpreter;

    invoke-virtual {v0}, Lbsh/This;->getNameSpace()Lbsh/NameSpace;

    move-result-object v0

    goto/16 :goto_60

    :cond_114
    if-eqz v0, :cond_11c

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    :try_start_119
    invoke-virtual/range {v0 .. v5}, Lbsh/BshMethod;->invoke([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_11c} :catch_87

    :cond_11c
    return-void
.end method

.method private static isPrimitive(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method classContainsMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 12

    const/4 v3, 0x1

    const/4 v1, 0x0

    :goto_2
    if-nez p1, :cond_5

    :goto_4
    return v1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    move v0, v1

    :goto_a
    array-length v2, v4

    if-lt v0, v2, :cond_12

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_2

    :cond_12
    aget-object v2, v4, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    aget-object v2, v4, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lbsh/ClassGeneratorUtil;->getTypeDescriptors([Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v5

    move v2, v1

    :goto_29
    array-length v6, v5

    if-lt v2, v6, :cond_31

    move v2, v3

    :goto_2d
    if-eqz v2, :cond_40

    move v1, v3

    goto :goto_4

    :cond_31
    aget-object v6, p3, v2

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    move v2, v1

    goto :goto_2d

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public generateClass()[B
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lbsh/ClassGeneratorUtil;->classModifiers:Lbsh/Modifiers;

    invoke-static {v0}, Lbsh/ClassGeneratorUtil;->getASMModifiers(Lbsh/Modifiers;)I

    move-result v0

    or-int/lit8 v1, v0, 0x1

    iget-boolean v0, p0, Lbsh/ClassGeneratorUtil;->isInterface:Z

    if-eqz v0, :cond_10

    or-int/lit16 v1, v1, 0x200

    :cond_10
    iget-object v0, p0, Lbsh/ClassGeneratorUtil;->interfaces:[Ljava/lang/Class;

    array-length v0, v0

    new-array v4, v0, [Ljava/lang/String;

    move v0, v8

    :goto_16
    iget-object v2, p0, Lbsh/ClassGeneratorUtil;->interfaces:[Ljava/lang/Class;

    array-length v2, v2

    if-lt v0, v2, :cond_87

    const-string v5, "BeanShell Generated via ASM (www.objectweb.org)"

    new-instance v0, Lbsh/org/objectweb/asm/ClassWriter;

    invoke-direct {v0, v8}, Lbsh/org/objectweb/asm/ClassWriter;-><init>(Z)V

    iget-object v2, p0, Lbsh/ClassGeneratorUtil;->fqClassName:Ljava/lang/String;

    iget-object v3, p0, Lbsh/ClassGeneratorUtil;->superClassName:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lbsh/org/objectweb/asm/ClassWriter;->visit(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lbsh/ClassGeneratorUtil;->isInterface:Z

    if-nez v1, :cond_63

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "_bshThis"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lbsh/ClassGeneratorUtil;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Lbsh/This;"

    invoke-static {v1, v2, v9, v0}, Lbsh/ClassGeneratorUtil;->generateField(Ljava/lang/String;Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "_bshStatic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lbsh/ClassGeneratorUtil;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Lbsh/This;"

    const/16 v3, 0x9

    invoke-static {v1, v2, v3, v0}, Lbsh/ClassGeneratorUtil;->generateField(Ljava/lang/String;Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V

    :cond_63
    move v1, v8

    :goto_64
    iget-object v2, p0, Lbsh/ClassGeneratorUtil;->vars:[Lbsh/Variable;

    array-length v2, v2

    if-lt v1, v2, :cond_94

    move v1, v8

    move v2, v8

    :goto_6b
    iget-object v3, p0, Lbsh/ClassGeneratorUtil;->constructors:[Lbsh/DelayedEvalBshMethod;

    array-length v3, v3

    if-lt v1, v3, :cond_cc

    iget-boolean v1, p0, Lbsh/ClassGeneratorUtil;->isInterface:Z

    if-nez v1, :cond_7c

    if-nez v2, :cond_7c

    const/4 v1, -0x1

    new-array v2, v8, [Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v9, v0}, Lbsh/ClassGeneratorUtil;->generateConstructor(I[Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V

    :cond_7c
    move v10, v8

    :goto_7d
    iget-object v1, p0, Lbsh/ClassGeneratorUtil;->methods:[Lbsh/DelayedEvalBshMethod;

    array-length v1, v1

    if-lt v10, v1, :cond_f4

    invoke-virtual {v0}, Lbsh/org/objectweb/asm/ClassWriter;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_87
    iget-object v2, p0, Lbsh/ClassGeneratorUtil;->interfaces:[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-static {v2}, Lbsh/org/objectweb/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_94
    iget-object v2, p0, Lbsh/ClassGeneratorUtil;->vars:[Lbsh/Variable;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lbsh/Variable;->getTypeDescriptor()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lbsh/ClassGeneratorUtil;->vars:[Lbsh/Variable;

    aget-object v2, v2, v1

    const-string v4, "private"

    invoke-virtual {v2, v4}, Lbsh/Variable;->hasModifier(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_aa

    if-nez v3, :cond_ad

    :cond_aa
    :goto_aa
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    :cond_ad
    iget-boolean v2, p0, Lbsh/ClassGeneratorUtil;->isInterface:Z

    if-eqz v2, :cond_bf

    const/16 v2, 0x19

    :goto_b3
    iget-object v4, p0, Lbsh/ClassGeneratorUtil;->vars:[Lbsh/Variable;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lbsh/Variable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3, v2, v0}, Lbsh/ClassGeneratorUtil;->generateField(Ljava/lang/String;Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V

    goto :goto_aa

    :cond_bf
    iget-object v2, p0, Lbsh/ClassGeneratorUtil;->vars:[Lbsh/Variable;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lbsh/Variable;->getModifiers()Lbsh/Modifiers;

    move-result-object v2

    invoke-static {v2}, Lbsh/ClassGeneratorUtil;->getASMModifiers(Lbsh/Modifiers;)I

    move-result v2

    goto :goto_b3

    :cond_cc
    iget-object v3, p0, Lbsh/ClassGeneratorUtil;->constructors:[Lbsh/DelayedEvalBshMethod;

    aget-object v3, v3, v1

    const-string v4, "private"

    invoke-virtual {v3, v4}, Lbsh/DelayedEvalBshMethod;->hasModifier(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_db

    :goto_d8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    :cond_db
    iget-object v2, p0, Lbsh/ClassGeneratorUtil;->constructors:[Lbsh/DelayedEvalBshMethod;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lbsh/DelayedEvalBshMethod;->getModifiers()Lbsh/Modifiers;

    move-result-object v2

    invoke-static {v2}, Lbsh/ClassGeneratorUtil;->getASMModifiers(Lbsh/Modifiers;)I

    move-result v2

    iget-object v3, p0, Lbsh/ClassGeneratorUtil;->constructors:[Lbsh/DelayedEvalBshMethod;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lbsh/DelayedEvalBshMethod;->getParamTypeDescriptors()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v2, v0}, Lbsh/ClassGeneratorUtil;->generateConstructor(I[Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V

    move v2, v9

    goto :goto_d8

    :cond_f4
    iget-object v1, p0, Lbsh/ClassGeneratorUtil;->methods:[Lbsh/DelayedEvalBshMethod;

    aget-object v1, v1, v10

    invoke-virtual {v1}, Lbsh/DelayedEvalBshMethod;->getReturnTypeDescriptor()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lbsh/ClassGeneratorUtil;->methods:[Lbsh/DelayedEvalBshMethod;

    aget-object v1, v1, v10

    const-string v2, "private"

    invoke-virtual {v1, v2}, Lbsh/DelayedEvalBshMethod;->hasModifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10d

    :cond_108
    :goto_108
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto/16 :goto_7d

    :cond_10d
    iget-object v1, p0, Lbsh/ClassGeneratorUtil;->methods:[Lbsh/DelayedEvalBshMethod;

    aget-object v1, v1, v10

    invoke-virtual {v1}, Lbsh/DelayedEvalBshMethod;->getModifiers()Lbsh/Modifiers;

    move-result-object v1

    invoke-static {v1}, Lbsh/ClassGeneratorUtil;->getASMModifiers(Lbsh/Modifiers;)I

    move-result v6

    iget-boolean v1, p0, Lbsh/ClassGeneratorUtil;->isInterface:Z

    if-eqz v1, :cond_11f

    or-int/lit16 v6, v6, 0x401

    :cond_11f
    iget-object v1, p0, Lbsh/ClassGeneratorUtil;->className:Ljava/lang/String;

    iget-object v2, p0, Lbsh/ClassGeneratorUtil;->fqClassName:Ljava/lang/String;

    iget-object v3, p0, Lbsh/ClassGeneratorUtil;->methods:[Lbsh/DelayedEvalBshMethod;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Lbsh/DelayedEvalBshMethod;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lbsh/ClassGeneratorUtil;->methods:[Lbsh/DelayedEvalBshMethod;

    aget-object v5, v5, v10

    invoke-virtual {v5}, Lbsh/DelayedEvalBshMethod;->getParamTypeDescriptors()[Ljava/lang/String;

    move-result-object v5

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Lbsh/ClassGeneratorUtil;->generateMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V

    and-int/lit8 v1, v6, 0x8

    if-lez v1, :cond_16d

    move v1, v9

    :goto_13c
    iget-object v2, p0, Lbsh/ClassGeneratorUtil;->superClass:Ljava/lang/Class;

    iget-object v3, p0, Lbsh/ClassGeneratorUtil;->methods:[Lbsh/DelayedEvalBshMethod;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Lbsh/DelayedEvalBshMethod;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lbsh/ClassGeneratorUtil;->methods:[Lbsh/DelayedEvalBshMethod;

    aget-object v5, v5, v10

    invoke-virtual {v5}, Lbsh/DelayedEvalBshMethod;->getParamTypeDescriptors()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v3, v5}, Lbsh/ClassGeneratorUtil;->classContainsMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v1, :cond_108

    if-eqz v2, :cond_108

    iget-object v2, p0, Lbsh/ClassGeneratorUtil;->superClassName:Ljava/lang/String;

    iget-object v1, p0, Lbsh/ClassGeneratorUtil;->methods:[Lbsh/DelayedEvalBshMethod;

    aget-object v1, v1, v10

    invoke-virtual {v1}, Lbsh/DelayedEvalBshMethod;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lbsh/ClassGeneratorUtil;->methods:[Lbsh/DelayedEvalBshMethod;

    aget-object v1, v1, v10

    invoke-virtual {v1}, Lbsh/DelayedEvalBshMethod;->getParamTypeDescriptors()[Ljava/lang/String;

    move-result-object v5

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lbsh/ClassGeneratorUtil;->generateSuperDelegateMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V

    goto :goto_108

    :cond_16d
    move v1, v8

    goto :goto_13c
.end method

.method generateConstructor(I[Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V
    .registers 13

    const/16 v7, 0x19

    const/16 v6, 0x14

    const/4 v5, 0x0

    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    array-length v1, p2

    add-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const-string v3, "V"

    invoke-static {v3, p2}, Lbsh/ClassGeneratorUtil;->getMethodDescriptor(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "<init>"

    invoke-virtual {p4, p3, v4, v3, v2}, Lbsh/org/objectweb/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbsh/org/objectweb/asm/CodeVisitor;

    move-result-object v2

    invoke-static {p2, v5, v2}, Lbsh/ClassGeneratorUtil;->generateParameterReifierCode([Ljava/lang/String;ZLbsh/org/objectweb/asm/CodeVisitor;)V

    const/16 v3, 0x3a

    invoke-interface {v2, v3, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    invoke-virtual {p0, p1, v0, v1, v2}, Lbsh/ClassGeneratorUtil;->generateConstructorSwitch(IIILbsh/org/objectweb/asm/CodeVisitor;)V

    invoke-interface {v2, v7, v5}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    iget-object v1, p0, Lbsh/ClassGeneratorUtil;->className:Ljava/lang/String;

    invoke-interface {v2, v1}, Lbsh/org/objectweb/asm/CodeVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    invoke-interface {v2, v7, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    const/16 v0, 0xb8

    const-string v1, "bsh/ClassGeneratorUtil"

    const-string v3, "initInstance"

    const-string v4, "(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V"

    invoke-interface {v2, v0, v1, v3, v4}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb1

    invoke-interface {v2, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitInsn(I)V

    invoke-interface {v2, v6, v6}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMaxs(II)V

    return-void
.end method

.method generateConstructorSwitch(IIILbsh/org/objectweb/asm/CodeVisitor;)V
    .registers 16

    const/16 v10, 0x19

    const/4 v8, 0x0

    new-instance v9, Lbsh/org/objectweb/asm/Label;

    invoke-direct {v9}, Lbsh/org/objectweb/asm/Label;-><init>()V

    new-instance v3, Lbsh/org/objectweb/asm/Label;

    invoke-direct {v3}, Lbsh/org/objectweb/asm/Label;-><init>()V

    iget-object v0, p0, Lbsh/ClassGeneratorUtil;->superConstructors:[Ljava/lang/reflect/Constructor;

    array-length v0, v0

    iget-object v1, p0, Lbsh/ClassGeneratorUtil;->constructors:[Lbsh/DelayedEvalBshMethod;

    array-length v1, v1

    add-int/2addr v1, v0

    new-array v4, v1, [Lbsh/org/objectweb/asm/Label;

    move v0, v8

    :goto_17
    if-lt v0, v1, :cond_8d

    iget-object v0, p0, Lbsh/ClassGeneratorUtil;->superClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lbsh/org/objectweb/asm/CodeVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0xb2

    iget-object v2, p0, Lbsh/ClassGeneratorUtil;->fqClassName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "_bshStatic"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lbsh/ClassGeneratorUtil;->className:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Lbsh/This;"

    invoke-interface {p4, v0, v2, v5, v6}, Lbsh/org/objectweb/asm/CodeVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v10, p2}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    const/16 v0, 0x10

    invoke-interface {p4, v0, p1}, Lbsh/org/objectweb/asm/CodeVisitor;->visitIntInsn(II)V

    const/16 v0, 0xb8

    const-string v2, "bsh/ClassGeneratorUtil"

    const-string v5, "getConstructorArgs"

    const-string v6, "(Ljava/lang/String;Lbsh/This;[Ljava/lang/Object;I)Lbsh/ClassGeneratorUtil$ConstructorArgs;"

    invoke-interface {p4, v0, v2, v5, v6}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3a

    invoke-interface {p4, v0, p3}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    invoke-interface {p4, v10, p3}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    const/16 v0, 0xb4

    const-string v2, "bsh/ClassGeneratorUtil$ConstructorArgs"

    const-string v5, "selector"

    const-string v6, "I"

    invoke-interface {p4, v0, v2, v5, v6}, Lbsh/org/objectweb/asm/CodeVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v1, -0x1

    invoke-interface {p4, v8, v0, v9, v4}, Lbsh/org/objectweb/asm/CodeVisitor;->visitTableSwitchInsn(IILbsh/org/objectweb/asm/Label;[Lbsh/org/objectweb/asm/Label;)V

    move v7, v8

    move v0, v8

    :goto_6d
    iget-object v1, p0, Lbsh/ClassGeneratorUtil;->superConstructors:[Ljava/lang/reflect/Constructor;

    array-length v1, v1

    if-lt v7, v1, :cond_97

    move v7, v8

    :goto_73
    iget-object v1, p0, Lbsh/ClassGeneratorUtil;->constructors:[Lbsh/DelayedEvalBshMethod;

    array-length v1, v1

    if-lt v7, v1, :cond_b0

    invoke-interface {p4, v9}, Lbsh/org/objectweb/asm/CodeVisitor;->visitLabel(Lbsh/org/objectweb/asm/Label;)V

    invoke-interface {p4, v10, v8}, Lbsh/org/objectweb/asm/CodeVisitor;->visitVarInsn(II)V

    const/16 v0, 0xb7

    iget-object v1, p0, Lbsh/ClassGeneratorUtil;->superClassName:Ljava/lang/String;

    const-string v2, "<init>"

    const-string v4, "()V"

    invoke-interface {p4, v0, v1, v2, v4}, Lbsh/org/objectweb/asm/CodeVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v3}, Lbsh/org/objectweb/asm/CodeVisitor;->visitLabel(Lbsh/org/objectweb/asm/Label;)V

    return-void

    :cond_8d
    new-instance v2, Lbsh/org/objectweb/asm/Label;

    invoke-direct {v2}, Lbsh/org/objectweb/asm/Label;-><init>()V

    aput-object v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_97
    iget-object v1, p0, Lbsh/ClassGeneratorUtil;->superClassName:Ljava/lang/String;

    iget-object v2, p0, Lbsh/ClassGeneratorUtil;->superConstructors:[Ljava/lang/reflect/Constructor;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lbsh/ClassGeneratorUtil;->getTypeDescriptors([Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lbsh/ClassGeneratorUtil;->doSwitchBranch(ILjava/lang/String;[Ljava/lang/String;Lbsh/org/objectweb/asm/Label;[Lbsh/org/objectweb/asm/Label;ILbsh/org/objectweb/asm/CodeVisitor;)V

    add-int/lit8 v1, v7, 0x1

    add-int/lit8 v0, v0, 0x1

    move v7, v1

    goto :goto_6d

    :cond_b0
    iget-object v1, p0, Lbsh/ClassGeneratorUtil;->fqClassName:Ljava/lang/String;

    iget-object v2, p0, Lbsh/ClassGeneratorUtil;->constructors:[Lbsh/DelayedEvalBshMethod;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lbsh/DelayedEvalBshMethod;->getParamTypeDescriptors()[Ljava/lang/String;

    move-result-object v2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lbsh/ClassGeneratorUtil;->doSwitchBranch(ILjava/lang/String;[Ljava/lang/String;Lbsh/org/objectweb/asm/Label;[Lbsh/org/objectweb/asm/Label;ILbsh/org/objectweb/asm/CodeVisitor;)V

    add-int/lit8 v1, v7, 0x1

    add-int/lit8 v0, v0, 0x1

    move v7, v1

    goto :goto_73
.end method
