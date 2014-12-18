.class public Lbsh/ClassGeneratorImpl;
.super Lbsh/ClassGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/ClassGeneratorImpl$ClassNodeFilter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lbsh/ClassGenerator;-><init>()V

    return-void
.end method

.method public static generateClassImpl(Ljava/lang/String;Lbsh/Modifiers;[Ljava/lang/Class;Ljava/lang/Class;Lbsh/BSHBlock;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v3, 0x1

    :try_start_1
    invoke-static {v3}, Lbsh/Capabilities;->setAccessibility(Z)V
    :try_end_4
    .catch Lbsh/Capabilities$Unavailable; {:try_start_1 .. :try_end_4} :catch_f9

    invoke-virtual/range {p6 .. p6}, Lbsh/CallStack;->top()Lbsh/NameSpace;

    move-result-object v14

    invoke-virtual {v14}, Lbsh/NameSpace;->getPackage()Ljava/lang/String;

    move-result-object v6

    iget-boolean v3, v14, Lbsh/NameSpace;->isClass:Z

    if-eqz v3, :cond_106

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v14}, Lbsh/NameSpace;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2d
    if-nez v6, :cond_10a

    move-object v13, v5

    :goto_30
    invoke-virtual/range {p7 .. p7}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object v15

    invoke-virtual {v15, v13}, Lbsh/BshClassManager;->definingClass(Ljava/lang/String;)V

    new-instance v11, Lbsh/NameSpace;

    invoke-direct {v11, v14, v5}, Lbsh/NameSpace;-><init>(Lbsh/NameSpace;Ljava/lang/String;)V

    const/4 v3, 0x1

    iput-boolean v3, v11, Lbsh/NameSpace;->isClass:Z

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    const/4 v3, 0x1

    sget-object v4, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->CLASSCLASSES:Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lbsh/BSHBlock;->evalBlock(Lbsh/CallStack;Lbsh/Interpreter;ZLbsh/BSHBlock$NodeFilter;)Ljava/lang/Object;

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-static {v0, v1, v2, v6}, Lbsh/ClassGeneratorImpl;->getDeclaredVariables(Lbsh/BSHBlock;Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)[Lbsh/Variable;

    move-result-object v9

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-static {v0, v1, v2, v6}, Lbsh/ClassGeneratorImpl;->getDeclaredMethods(Lbsh/BSHBlock;Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)[Lbsh/DelayedEvalBshMethod;

    move-result-object v10

    new-instance v3, Lbsh/ClassGeneratorUtil;

    move-object/from16 v4, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    move/from16 v12, p5

    invoke-direct/range {v3 .. v12}, Lbsh/ClassGeneratorUtil;-><init>(Lbsh/Modifiers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Lbsh/Variable;[Lbsh/DelayedEvalBshMethod;Lbsh/NameSpace;Z)V

    invoke-virtual {v3}, Lbsh/ClassGeneratorUtil;->generateClass()[B

    move-result-object v3

    const-string v4, "debugClasses"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a5

    :try_start_7d
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v7, ".class"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_a5} :catch_158

    :cond_a5
    :goto_a5
    invoke-virtual {v15, v13, v3}, Lbsh/BshClassManager;->defineClass(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0x24

    const/16 v6, 0x2e

    invoke-virtual {v13, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lbsh/NameSpace;->importClass(Ljava/lang/String;)V

    :try_start_b4
    const-string v4, "_bshInstanceInitializer"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v11, v4, v0, v6}, Lbsh/NameSpace;->setLocalVariable(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_bc
    .catch Lbsh/UtilEvalError; {:try_start_b4 .. :try_end_bc} :catch_124

    invoke-virtual {v11, v3}, Lbsh/NameSpace;->setClassStatic(Ljava/lang/Class;)V

    const/4 v4, 0x1

    sget-object v6, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->CLASSSTATIC:Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-virtual {v0, v1, v2, v4, v6}, Lbsh/BSHBlock;->evalBlock(Lbsh/CallStack;Lbsh/Interpreter;ZLbsh/BSHBlock$NodeFilter;)Ljava/lang/Object;

    invoke-virtual/range {p6 .. p6}, Lbsh/CallStack;->pop()Lbsh/NameSpace;

    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_f5

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "_bshStatic"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    :try_start_e7
    invoke-static {v3, v4}, Lbsh/Reflect;->getLHSStaticField(Ljava/lang/Class;Ljava/lang/String;)Lbsh/LHS;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v11, v0}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_f5} :catch_13e

    :cond_f5
    invoke-virtual {v15, v13}, Lbsh/BshClassManager;->doneDefiningClass(Ljava/lang/String;)V

    return-object v3

    :catch_f9
    move-exception v3

    new-instance v3, Lbsh/EvalError;

    const-string v4, "Defining classes currently requires reflective Accessibility."

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-direct {v3, v4, v0, v1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v3

    :cond_106
    move-object/from16 v5, p0

    goto/16 :goto_2d

    :cond_10a
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    goto/16 :goto_30

    :catch_124
    move-exception v3

    new-instance v4, Lbsh/InterpreterError;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "unable to init static: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_13e
    move-exception v3

    new-instance v4, Lbsh/InterpreterError;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Error in class gen setup: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_158
    move-exception v4

    goto/16 :goto_a5
.end method

.method static getDeclaredMethods(Lbsh/BSHBlock;Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)[Lbsh/DelayedEvalBshMethod;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v15, v3

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lbsh/BSHBlock;->jjtGetNumChildren()I

    move-result v3

    if-lt v15, v3, :cond_19

    const/4 v3, 0x0

    new-array v3, v3, [Lbsh/DelayedEvalBshMethod;

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lbsh/DelayedEvalBshMethod;

    return-object v3

    :cond_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lbsh/BSHBlock;->jjtGetChild(I)Lbsh/Node;

    move-result-object v3

    check-cast v3, Lbsh/SimpleNode;

    instance-of v4, v3, Lbsh/BSHMethodDeclaration;

    if-eqz v4, :cond_60

    move-object v10, v3

    check-cast v10, Lbsh/BSHMethodDeclaration;

    invoke-virtual {v10}, Lbsh/BSHMethodDeclaration;->insureNodesParsed()V

    iget-object v12, v10, Lbsh/BSHMethodDeclaration;->modifiers:Lbsh/Modifiers;

    iget-object v4, v10, Lbsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v10, v0, v1, v2}, Lbsh/BSHMethodDeclaration;->getReturnTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lbsh/BSHMethodDeclaration;->getReturnTypeNode()Lbsh/BSHReturnType;

    move-result-object v6

    iget-object v9, v10, Lbsh/BSHMethodDeclaration;->paramsNode:Lbsh/BSHFormalParameters;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v9, v0, v1, v2}, Lbsh/BSHFormalParameters;->getTypeDescriptors(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    new-instance v3, Lbsh/DelayedEvalBshMethod;

    iget-object v7, v10, Lbsh/BSHMethodDeclaration;->paramsNode:Lbsh/BSHFormalParameters;

    invoke-virtual {v7}, Lbsh/BSHFormalParameters;->getParamNames()[Ljava/lang/String;

    move-result-object v7

    iget-object v10, v10, Lbsh/BSHMethodDeclaration;->blockNode:Lbsh/BSHBlock;

    const/4 v11, 0x0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-direct/range {v3 .. v14}, Lbsh/DelayedEvalBshMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Lbsh/BSHReturnType;[Ljava/lang/String;[Ljava/lang/String;Lbsh/BSHFormalParameters;Lbsh/BSHBlock;Lbsh/NameSpace;Lbsh/Modifiers;Lbsh/CallStack;Lbsh/Interpreter;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_60
    add-int/lit8 v3, v15, 0x1

    move v15, v3

    goto :goto_7
.end method

.method static getDeclaredVariables(Lbsh/BSHBlock;Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)[Lbsh/Variable;
    .registers 14

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lbsh/BSHBlock;->jjtGetNumChildren()I

    move-result v0

    if-lt v1, v0, :cond_16

    new-array v0, v2, [Lbsh/Variable;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbsh/Variable;

    return-object v0

    :cond_16
    invoke-virtual {p0, v1}, Lbsh/BSHBlock;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    instance-of v4, v0, Lbsh/BSHTypedVariableDeclaration;

    if-eqz v4, :cond_30

    check-cast v0, Lbsh/BSHTypedVariableDeclaration;

    iget-object v4, v0, Lbsh/BSHTypedVariableDeclaration;->modifiers:Lbsh/Modifiers;

    invoke-virtual {v0, p1, p2, p3}, Lbsh/BSHTypedVariableDeclaration;->getTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lbsh/BSHTypedVariableDeclaration;->getDeclarators()[Lbsh/BSHVariableDeclarator;

    move-result-object v6

    move v0, v2

    :goto_2d
    array-length v7, v6

    if-lt v0, v7, :cond_34

    :cond_30
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_34
    aget-object v7, v6, v0

    iget-object v7, v7, Lbsh/BSHVariableDeclarator;->name:Ljava/lang/String;

    :try_start_38
    new-instance v8, Lbsh/Variable;

    const/4 v9, 0x0

    invoke-direct {v8, v7, v5, v9, v4}, Lbsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lbsh/Modifiers;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catch Lbsh/UtilEvalError; {:try_start_38 .. :try_end_41} :catch_44

    :goto_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :catch_44
    move-exception v7

    goto :goto_41
.end method

.method public static invokeSuperclassMethodImpl(Lbsh/BshClassManager;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;,
            Lbsh/ReflectError;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_bshSuper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p3}, Lbsh/Types;->getTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v1, v0, v2, v5}, Lbsh/Reflect;->resolveJavaMethod(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {v0, p1, p3}, Lbsh/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_26
    return-object v0

    :cond_27
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lbsh/Reflect;->resolveExpectedJavaMethod(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lbsh/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_26
.end method


# virtual methods
.method public generateClass(Ljava/lang/String;Lbsh/Modifiers;[Ljava/lang/Class;Ljava/lang/Class;Lbsh/BSHBlock;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    invoke-static/range {p1 .. p8}, Lbsh/ClassGeneratorImpl;->generateClassImpl(Ljava/lang/String;Lbsh/Modifiers;[Ljava/lang/Class;Ljava/lang/Class;Lbsh/BSHBlock;ZLbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public invokeSuperclassMethod(Lbsh/BshClassManager;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;,
            Lbsh/ReflectError;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lbsh/ClassGeneratorImpl;->invokeSuperclassMethodImpl(Lbsh/BshClassManager;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setInstanceNameSpaceParent(Ljava/lang/Object;Ljava/lang/String;Lbsh/NameSpace;)V
    .registers 5

    invoke-static {p1, p2}, Lbsh/ClassGeneratorUtil;->getClassInstanceThis(Ljava/lang/Object;Ljava/lang/String;)Lbsh/This;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/This;->getNameSpace()Lbsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0, p3}, Lbsh/NameSpace;->setParent(Lbsh/NameSpace;)V

    return-void
.end method
