.class Lbsh/Types;
.super Ljava/lang/Object;


# static fields
.field static final ASSIGNMENT:I = 0x1

.field static final BSH_ASSIGNABLE:I = 0x4

.field static final CAST:I = 0x0

.field static final FIRST_ROUND_ASSIGNABLE:I = 0x1

.field static INVALID_CAST:Lbsh/Primitive; = null

.field static final JAVA_BASE_ASSIGNABLE:I = 0x1

.field static final JAVA_BOX_TYPES_ASSIGABLE:I = 0x2

.field static final JAVA_VARARGS_ASSIGNABLE:I = 0x3

.field static final LAST_ROUND_ASSIGNABLE:I = 0x4

.field static VALID_CAST:Lbsh/Primitive;

.field static class$bsh$Primitive:Ljava/lang/Class;

.field static class$bsh$This:Ljava/lang/Class;

.field static class$java$lang$Number:Ljava/lang/Class;

.field static class$java$lang$Object:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lbsh/Primitive;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(I)V

    sput-object v0, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    new-instance v0, Lbsh/Primitive;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(I)V

    sput-object v0, Lbsh/Types;->INVALID_CAST:Lbsh/Primitive;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static castError(Ljava/lang/Class;Ljava/lang/Class;I)Lbsh/UtilEvalError;
    .registers 5

    invoke-static {p0}, Lbsh/Reflect;->normalizeClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lbsh/Reflect;->normalizeClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lbsh/Types;->castError(Ljava/lang/String;Ljava/lang/String;I)Lbsh/UtilEvalError;

    move-result-object v0

    return-object v0
.end method

.method static castError(Ljava/lang/String;Ljava/lang/String;I)Lbsh/UtilEvalError;
    .registers 6

    const/4 v0, 0x1

    if-ne p2, v0, :cond_26

    new-instance v0, Lbsh/UtilEvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t assign "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    :goto_25
    return-object v0

    :cond_26
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Cannot cast "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    new-instance v0, Lbsh/UtilTargetError;

    invoke-direct {v0, v1}, Lbsh/UtilTargetError;-><init>(Ljava/lang/Throwable;)V

    goto :goto_25
.end method

.method private static castObject(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;IZ)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    if-eqz p4, :cond_c

    if-eqz p2, :cond_c

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad cast params 1"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-nez p4, :cond_18

    if-nez p2, :cond_18

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad cast params 2"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    sget-object v0, Lbsh/Types;->class$bsh$Primitive:Ljava/lang/Class;

    if-nez v0, :cond_2e

    const-string v0, "bsh.Primitive"

    invoke-static {v0}, Lbsh/Types;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Types;->class$bsh$Primitive:Ljava/lang/Class;

    :goto_24
    if-ne p1, v0, :cond_31

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad from Type, need to unwrap"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    sget-object v0, Lbsh/Types;->class$bsh$Primitive:Ljava/lang/Class;

    goto :goto_24

    :cond_31
    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne p2, v0, :cond_3f

    if-eqz p1, :cond_3f

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "inconsistent args 1"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p2, v0, :cond_4f

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_4f

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "inconsistent args 2"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5b

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "loose toType should be null"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    if-eqz p0, :cond_5f

    if-ne p0, p1, :cond_65

    :cond_5f
    if-eqz p4, :cond_63

    sget-object p2, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    :cond_63
    move-object v0, p2

    :goto_64
    return-object v0

    :cond_65
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_a1

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_77

    if-eqz p1, :cond_77

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_7e

    :cond_77
    check-cast p2, Lbsh/Primitive;

    invoke-static {p0, p1, p2, p4, p3}, Lbsh/Primitive;->castPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lbsh/Primitive;ZI)Lbsh/Primitive;

    move-result-object v0

    goto :goto_64

    :cond_7e
    invoke-static {p1}, Lbsh/Primitive;->isWrapperType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-static {p1}, Lbsh/Primitive;->unboxType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    if-eqz p4, :cond_90

    const/4 v0, 0x0

    :goto_8b
    invoke-static {p0, v1, v0, p4, p3}, Lbsh/Primitive;->castPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lbsh/Primitive;ZI)Lbsh/Primitive;

    move-result-object v0

    goto :goto_64

    :cond_90
    invoke-static {p2, v1}, Lbsh/Primitive;->wrap(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/Primitive;

    goto :goto_8b

    :cond_97
    if-eqz p4, :cond_9c

    sget-object v0, Lbsh/Types;->INVALID_CAST:Lbsh/Primitive;

    goto :goto_64

    :cond_9c
    invoke-static {p0, p1, p3}, Lbsh/Types;->castError(Ljava/lang/Class;Ljava/lang/Class;I)Lbsh/UtilEvalError;

    move-result-object v0

    throw v0

    :cond_a1
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_ad

    if-eqz p1, :cond_ad

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_fa

    :cond_ad
    invoke-static {p0}, Lbsh/Primitive;->isWrapperType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_cd

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_cd

    if-eqz p1, :cond_cd

    if-eqz p4, :cond_be

    sget-object v0, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    goto :goto_64

    :cond_be
    invoke-static {p0}, Lbsh/Primitive;->unboxType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    check-cast p2, Lbsh/Primitive;

    invoke-virtual {p2}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lbsh/Primitive;->castWrapper(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_64

    :cond_cd
    sget-object v0, Lbsh/Types;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_e7

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lbsh/Types;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Types;->class$java$lang$Object:Ljava/lang/Class;

    :goto_d9
    if-ne p0, v0, :cond_f2

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_f2

    if-eqz p1, :cond_f2

    if-eqz p4, :cond_ea

    sget-object v0, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    goto/16 :goto_64

    :cond_e7
    sget-object v0, Lbsh/Types;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_d9

    :cond_ea
    check-cast p2, Lbsh/Primitive;

    invoke-virtual {p2}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_64

    :cond_f2
    check-cast p2, Lbsh/Primitive;

    invoke-static {p0, p1, p2, p4, p3}, Lbsh/Primitive;->castPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lbsh/Primitive;ZI)Lbsh/Primitive;

    move-result-object v0

    goto/16 :goto_64

    :cond_fa
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_107

    if-eqz p4, :cond_104

    sget-object p2, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    :cond_104
    move-object v0, p2

    goto/16 :goto_64

    :cond_107
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_136

    sget-object v0, Lbsh/Types;->class$bsh$This:Ljava/lang/Class;

    if-nez v0, :cond_12b

    const-string v0, "bsh.This"

    invoke-static {v0}, Lbsh/Types;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Types;->class$bsh$This:Ljava/lang/Class;

    :goto_119
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_136

    invoke-static {}, Lbsh/Capabilities;->canGenerateInterfaces()Z

    move-result v0

    if-eqz v0, :cond_136

    if-eqz p4, :cond_12e

    sget-object v0, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    goto/16 :goto_64

    :cond_12b
    sget-object v0, Lbsh/Types;->class$bsh$This:Ljava/lang/Class;

    goto :goto_119

    :cond_12e
    check-cast p2, Lbsh/This;

    invoke-virtual {p2, p0}, Lbsh/This;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_64

    :cond_136
    invoke-static {p0}, Lbsh/Primitive;->isWrapperType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_14e

    invoke-static {p1}, Lbsh/Primitive;->isWrapperType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_14e

    if-eqz p4, :cond_148

    sget-object v0, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    goto/16 :goto_64

    :cond_148
    invoke-static {p0, p2}, Lbsh/Primitive;->castWrapper(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_64

    :cond_14e
    if-eqz p4, :cond_154

    sget-object v0, Lbsh/Types;->INVALID_CAST:Lbsh/Primitive;

    goto/16 :goto_64

    :cond_154
    invoke-static {p0, p1, p3}, Lbsh/Types;->castError(Ljava/lang/Class;Ljava/lang/Class;I)Lbsh/UtilEvalError;

    move-result-object v0

    throw v0
.end method

.method public static castObject(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "null fromValue"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    instance-of v0, p0, Lbsh/Primitive;

    if-eqz v0, :cond_1b

    move-object v0, p0

    check-cast v0, Lbsh/Primitive;

    invoke-virtual {v0}, Lbsh/Primitive;->getType()Ljava/lang/Class;

    move-result-object v0

    :goto_15
    const/4 v1, 0x0

    invoke-static {p1, v0, p0, p2, v1}, Lbsh/Types;->castObject(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_15
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

.method public static getTypes([Ljava/lang/Object;)[Ljava/lang/Class;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_6

    new-array v0, v0, [Ljava/lang/Class;

    :goto_5
    return-object v0

    :cond_6
    array-length v1, p0

    new-array v2, v1, [Ljava/lang/Class;

    move v1, v0

    :goto_a
    array-length v0, p0

    if-lt v1, v0, :cond_f

    move-object v0, v2

    goto :goto_5

    :cond_f
    aget-object v0, p0, v1

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    aput-object v0, v2, v1

    :goto_16
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_1a
    aget-object v0, p0, v1

    instance-of v0, v0, Lbsh/Primitive;

    if-eqz v0, :cond_2b

    aget-object v0, p0, v1

    check-cast v0, Lbsh/Primitive;

    invoke-virtual {v0}, Lbsh/Primitive;->getType()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_16

    :cond_2b
    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_16
.end method

.method static isBshAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    :try_start_4
    invoke-static {p0, p1, v1, v2, v3}, Lbsh/Types;->castObject(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;
    :try_end_a
    .catch Lbsh/UtilEvalError; {:try_start_4 .. :try_end_a} :catch_f

    if-ne v1, v2, :cond_d

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c

    :catch_f
    move-exception v0

    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "err in cast check: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static isJavaAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 3

    invoke-static {p0, p1}, Lbsh/Types;->isJavaBaseAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0, p1}, Lbsh/Types;->isJavaBoxTypesAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static isJavaBaseAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p0, :cond_6

    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    if-nez p1, :cond_10

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_5

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_84

    if-eq p0, p1, :cond_5

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_36

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_5

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_5

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_5

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_5

    :cond_36
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_4a

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_5

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_5

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_5

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_5

    :cond_4a
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_5e

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_5

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_5

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_5

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_5

    :cond_5e
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_6e

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_5

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_5

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_5

    :cond_6e
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_7a

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_5

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_5

    :cond_7a
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_82

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_5

    :cond_82
    move v0, v1

    goto :goto_5

    :cond_84
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_82

    goto/16 :goto_5
.end method

.method static isJavaBoxTypesAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    sget-object v2, Lbsh/Types;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v2, :cond_15

    const-string v2, "java.lang.Object"

    invoke-static {v2}, Lbsh/Types;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lbsh/Types;->class$java$lang$Object:Ljava/lang/Class;

    :goto_11
    if-ne p0, v2, :cond_18

    move v0, v1

    goto :goto_4

    :cond_15
    sget-object v2, Lbsh/Types;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_11

    :cond_18
    sget-object v2, Lbsh/Types;->class$java$lang$Number:Ljava/lang/Class;

    if-nez v2, :cond_30

    const-string v2, "java.lang.Number"

    invoke-static {v2}, Lbsh/Types;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lbsh/Types;->class$java$lang$Number:Ljava/lang/Class;

    :goto_24
    if-ne p0, v2, :cond_33

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p1, v2, :cond_33

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v2, :cond_33

    move v0, v1

    goto :goto_4

    :cond_30
    sget-object v2, Lbsh/Types;->class$java$lang$Number:Ljava/lang/Class;

    goto :goto_24

    :cond_33
    sget-object v2, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method static isSignatureAssignable([Ljava/lang/Class;[Ljava/lang/Class;I)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_a

    array-length v0, p0

    array-length v3, p1

    if-eq v0, v3, :cond_a

    :cond_9
    :goto_9
    return v1

    :cond_a
    packed-switch p2, :pswitch_data_54

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad case"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_15
    move v0, v1

    :goto_16
    array-length v3, p0

    if-lt v0, v3, :cond_1b

    move v1, v2

    goto :goto_9

    :cond_1b
    aget-object v3, p1, v0

    aget-object v4, p0, v0

    invoke-static {v3, v4}, Lbsh/Types;->isJavaBaseAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :pswitch_28
    move v0, v1

    :goto_29
    array-length v3, p0

    if-lt v0, v3, :cond_2e

    move v1, v2

    goto :goto_9

    :cond_2e
    aget-object v3, p1, v0

    aget-object v4, p0, v0

    invoke-static {v3, v4}, Lbsh/Types;->isJavaBoxTypesAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :pswitch_3b
    invoke-static {p0, p1}, Lbsh/Types;->isSignatureVarargsAssignable([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v1

    goto :goto_9

    :pswitch_40
    move v0, v1

    :goto_41
    array-length v3, p0

    if-lt v0, v3, :cond_46

    move v1, v2

    goto :goto_9

    :cond_46
    aget-object v3, p1, v0

    aget-object v4, p0, v0

    invoke-static {v3, v4}, Lbsh/Types;->isBshAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_15
        :pswitch_28
        :pswitch_3b
        :pswitch_40
    .end packed-switch
.end method

.method private static isSignatureVarargsAssignable([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
