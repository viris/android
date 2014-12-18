.class public Lbsh/DelayedEvalBshMethod;
.super Lbsh/BshMethod;


# instance fields
.field transient callstack:Lbsh/CallStack;

.field transient interpreter:Lbsh/Interpreter;

.field paramTypeDescriptors:[Ljava/lang/String;

.field paramTypesNode:Lbsh/BSHFormalParameters;

.field returnTypeDescriptor:Ljava/lang/String;

.field returnTypeNode:Lbsh/BSHReturnType;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lbsh/BSHReturnType;[Ljava/lang/String;[Ljava/lang/String;Lbsh/BSHFormalParameters;Lbsh/BSHBlock;Lbsh/NameSpace;Lbsh/Modifiers;Lbsh/CallStack;Lbsh/Interpreter;)V
    .registers 21

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Lbsh/BshMethod;-><init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Lbsh/BSHBlock;Lbsh/NameSpace;Lbsh/Modifiers;)V

    iput-object p2, p0, Lbsh/DelayedEvalBshMethod;->returnTypeDescriptor:Ljava/lang/String;

    iput-object p3, p0, Lbsh/DelayedEvalBshMethod;->returnTypeNode:Lbsh/BSHReturnType;

    iput-object p5, p0, Lbsh/DelayedEvalBshMethod;->paramTypeDescriptors:[Ljava/lang/String;

    iput-object p6, p0, Lbsh/DelayedEvalBshMethod;->paramTypesNode:Lbsh/BSHFormalParameters;

    move-object/from16 v0, p10

    iput-object v0, p0, Lbsh/DelayedEvalBshMethod;->callstack:Lbsh/CallStack;

    move-object/from16 v0, p11

    iput-object v0, p0, Lbsh/DelayedEvalBshMethod;->interpreter:Lbsh/Interpreter;

    return-void
.end method


# virtual methods
.method public getParamTypeDescriptors()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbsh/DelayedEvalBshMethod;->paramTypeDescriptors:[Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/Class;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lbsh/DelayedEvalBshMethod;->paramTypesNode:Lbsh/BSHFormalParameters;

    iget-object v1, p0, Lbsh/DelayedEvalBshMethod;->callstack:Lbsh/CallStack;

    iget-object v2, p0, Lbsh/DelayedEvalBshMethod;->interpreter:Lbsh/Interpreter;

    invoke-virtual {v0, v1, v2}, Lbsh/BSHFormalParameters;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;
    :try_end_c
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "can\'t eval param types: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getReturnType()Ljava/lang/Class;
    .registers 5

    iget-object v0, p0, Lbsh/DelayedEvalBshMethod;->returnTypeNode:Lbsh/BSHReturnType;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    :try_start_6
    iget-object v0, p0, Lbsh/DelayedEvalBshMethod;->returnTypeNode:Lbsh/BSHReturnType;

    iget-object v1, p0, Lbsh/DelayedEvalBshMethod;->callstack:Lbsh/CallStack;

    iget-object v2, p0, Lbsh/DelayedEvalBshMethod;->interpreter:Lbsh/Interpreter;

    invoke-virtual {v0, v1, v2}, Lbsh/BSHReturnType;->evalReturnType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;
    :try_end_f
    .catch Lbsh/EvalError; {:try_start_6 .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_5

    :catch_11
    move-exception v0

    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "can\'t eval return type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getReturnTypeDescriptor()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbsh/DelayedEvalBshMethod;->returnTypeDescriptor:Ljava/lang/String;

    return-object v0
.end method
