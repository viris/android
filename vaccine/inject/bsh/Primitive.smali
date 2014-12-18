.class public final Lbsh/Primitive;
.super Ljava/lang/Object;

# interfaces
.implements Lbsh/ParserConstants;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/Primitive$Special;
    }
.end annotation


# static fields
.field public static final NULL:Lbsh/Primitive;

.field public static final VOID:Lbsh/Primitive;

.field static class$bsh$Primitive:Ljava/lang/Class;

.field static class$java$lang$Boolean:Ljava/lang/Class;

.field static class$java$lang$Byte:Ljava/lang/Class;

.field static class$java$lang$Character:Ljava/lang/Class;

.field static class$java$lang$Double:Ljava/lang/Class;

.field static class$java$lang$Float:Ljava/lang/Class;

.field static class$java$lang$Integer:Ljava/lang/Class;

.field static class$java$lang$Long:Ljava/lang/Class;

.field static class$java$lang$Short:Ljava/lang/Class;

.field static wrapperMap:Ljava/util/Hashtable;


# instance fields
.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    sget-object v1, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_14a

    const-string v0, "java.lang.Boolean"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Boolean:Ljava/lang/Class;

    :goto_17
    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Byte:Ljava/lang/Class;

    if-nez v0, :cond_14e

    const-string v0, "java.lang.Byte"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Byte:Ljava/lang/Class;

    :goto_2a
    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Short:Ljava/lang/Class;

    if-nez v0, :cond_152

    const-string v0, "java.lang.Short"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Short:Ljava/lang/Class;

    :goto_3d
    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Character:Ljava/lang/Class;

    if-nez v0, :cond_156

    const-string v0, "java.lang.Character"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Character:Ljava/lang/Class;

    :goto_50
    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Integer:Ljava/lang/Class;

    if-nez v0, :cond_15a

    const-string v0, "java.lang.Integer"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Integer:Ljava/lang/Class;

    :goto_63
    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v0, :cond_15e

    const-string v0, "java.lang.Long"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Long:Ljava/lang/Class;

    :goto_76
    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Float:Ljava/lang/Class;

    if-nez v0, :cond_162

    const-string v0, "java.lang.Float"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Float:Ljava/lang/Class;

    :goto_89
    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Double:Ljava/lang/Class;

    if-nez v0, :cond_166

    const-string v0, "java.lang.Double"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Double:Ljava/lang/Class;

    :goto_9c
    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_16a

    const-string v0, "java.lang.Boolean"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Boolean:Ljava/lang/Class;

    :goto_ad
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Byte:Ljava/lang/Class;

    if-nez v0, :cond_16e

    const-string v0, "java.lang.Byte"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Byte:Ljava/lang/Class;

    :goto_c0
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Short:Ljava/lang/Class;

    if-nez v0, :cond_172

    const-string v0, "java.lang.Short"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Short:Ljava/lang/Class;

    :goto_d3
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Character:Ljava/lang/Class;

    if-nez v0, :cond_176

    const-string v0, "java.lang.Character"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Character:Ljava/lang/Class;

    :goto_e6
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Integer:Ljava/lang/Class;

    if-nez v0, :cond_17a

    const-string v0, "java.lang.Integer"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Integer:Ljava/lang/Class;

    :goto_f9
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v0, :cond_17e

    const-string v0, "java.lang.Long"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Long:Ljava/lang/Class;

    :goto_10c
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Float:Ljava/lang/Class;

    if-nez v0, :cond_181

    const-string v0, "java.lang.Float"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Float:Ljava/lang/Class;

    :goto_11f
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    sget-object v0, Lbsh/Primitive;->class$java$lang$Double:Ljava/lang/Class;

    if-nez v0, :cond_184

    const-string v0, "java.lang.Double"

    invoke-static {v0}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Primitive;->class$java$lang$Double:Ljava/lang/Class;

    :goto_132
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lbsh/Primitive;

    sget-object v1, Lbsh/Primitive$Special;->NULL_VALUE:Lbsh/Primitive$Special;

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    new-instance v0, Lbsh/Primitive;

    sget-object v1, Lbsh/Primitive$Special;->VOID_TYPE:Lbsh/Primitive$Special;

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-void

    :cond_14a
    sget-object v0, Lbsh/Primitive;->class$java$lang$Boolean:Ljava/lang/Class;

    goto/16 :goto_17

    :cond_14e
    sget-object v0, Lbsh/Primitive;->class$java$lang$Byte:Ljava/lang/Class;

    goto/16 :goto_2a

    :cond_152
    sget-object v0, Lbsh/Primitive;->class$java$lang$Short:Ljava/lang/Class;

    goto/16 :goto_3d

    :cond_156
    sget-object v0, Lbsh/Primitive;->class$java$lang$Character:Ljava/lang/Class;

    goto/16 :goto_50

    :cond_15a
    sget-object v0, Lbsh/Primitive;->class$java$lang$Integer:Ljava/lang/Class;

    goto/16 :goto_63

    :cond_15e
    sget-object v0, Lbsh/Primitive;->class$java$lang$Long:Ljava/lang/Class;

    goto/16 :goto_76

    :cond_162
    sget-object v0, Lbsh/Primitive;->class$java$lang$Float:Ljava/lang/Class;

    goto/16 :goto_89

    :cond_166
    sget-object v0, Lbsh/Primitive;->class$java$lang$Double:Ljava/lang/Class;

    goto/16 :goto_9c

    :cond_16a
    sget-object v0, Lbsh/Primitive;->class$java$lang$Boolean:Ljava/lang/Class;

    goto/16 :goto_ad

    :cond_16e
    sget-object v0, Lbsh/Primitive;->class$java$lang$Byte:Ljava/lang/Class;

    goto/16 :goto_c0

    :cond_172
    sget-object v0, Lbsh/Primitive;->class$java$lang$Short:Ljava/lang/Class;

    goto/16 :goto_d3

    :cond_176
    sget-object v0, Lbsh/Primitive;->class$java$lang$Character:Ljava/lang/Class;

    goto/16 :goto_e6

    :cond_17a
    sget-object v0, Lbsh/Primitive;->class$java$lang$Integer:Ljava/lang/Class;

    goto/16 :goto_f9

    :cond_17e
    sget-object v0, Lbsh/Primitive;->class$java$lang$Long:Ljava/lang/Class;

    goto :goto_10c

    :cond_181
    sget-object v0, Lbsh/Primitive;->class$java$lang$Float:Ljava/lang/Class;

    goto :goto_11f

    :cond_184
    sget-object v0, Lbsh/Primitive;->class$java$lang$Double:Ljava/lang/Class;

    goto :goto_132
.end method

.method public constructor <init>(B)V
    .registers 3

    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p1}, Ljava/lang/Byte;-><init>(B)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(C)V
    .registers 3

    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(D)V
    .registers 4

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(F)V
    .registers 3

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "Use Primitve.NULL instead of Primitive(null)"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    sget-object v0, Lbsh/Primitive$Special;->NULL_VALUE:Lbsh/Primitive$Special;

    if-eq p1, v0, :cond_38

    sget-object v0, Lbsh/Primitive$Special;->VOID_TYPE:Lbsh/Primitive$Special;

    if-eq p1, v0, :cond_38

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lbsh/Primitive;->isWrapperType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_38

    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Not a wrapper type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    iput-object p1, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(S)V
    .registers 3

    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p1}, Ljava/lang/Short;-><init>(S)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static binaryOperation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-eq p0, v0, :cond_8

    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne p1, v0, :cond_10

    :cond_8
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Null value or \'null\' literal in binary operation"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq p0, v0, :cond_18

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p1, v0, :cond_20

    :cond_18
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Undefined variable, class, or \'void\' literal in binary operation"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    instance-of v0, p0, Lbsh/Primitive;

    if-eqz v0, :cond_32

    check-cast p0, Lbsh/Primitive;

    invoke-virtual {p0}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object p0

    :cond_32
    instance-of v0, p1, Lbsh/Primitive;

    if-eqz v0, :cond_3c

    check-cast p1, Lbsh/Primitive;

    invoke-virtual {p1}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object p1

    :cond_3c
    invoke-static {p0, p1}, Lbsh/Primitive;->promotePrimitives(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_7b

    new-instance v2, Lbsh/UtilEvalError;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Type mismatch in operator.  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " cannot be used with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7b
    :try_start_7b
    invoke-static {v1, v0, p2}, Lbsh/Primitive;->binaryOperationImpl(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    :try_end_7e
    .catch Ljava/lang/ArithmeticException; {:try_start_7b .. :try_end_7e} :catch_a6

    move-result-object v0

    sget-object v1, Lbsh/Primitive;->class$bsh$Primitive:Ljava/lang/Class;

    if-nez v1, :cond_af

    const-string v1, "bsh.Primitive"

    invoke-static {v1}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lbsh/Primitive;->class$bsh$Primitive:Ljava/lang/Class;

    :goto_8b
    if-ne v2, v1, :cond_9b

    sget-object v1, Lbsh/Primitive;->class$bsh$Primitive:Ljava/lang/Class;

    if-nez v1, :cond_b2

    const-string v1, "bsh.Primitive"

    invoke-static {v1}, Lbsh/Primitive;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lbsh/Primitive;->class$bsh$Primitive:Ljava/lang/Class;

    :goto_99
    if-eq v3, v1, :cond_9f

    :cond_9b
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_a5

    :cond_9f
    new-instance v1, Lbsh/Primitive;

    invoke-direct {v1, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :cond_a5
    return-object v0

    :catch_a6
    move-exception v0

    new-instance v1, Lbsh/UtilTargetError;

    const-string v2, "Arithemetic Exception in binary op"

    invoke-direct {v1, v2, v0}, Lbsh/UtilTargetError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_af
    sget-object v1, Lbsh/Primitive;->class$bsh$Primitive:Ljava/lang/Class;

    goto :goto_8b

    :cond_b2
    sget-object v1, Lbsh/Primitive;->class$bsh$Primitive:Ljava/lang/Class;

    goto :goto_99
.end method

.method static binaryOperationImpl(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    check-cast p0, Ljava/lang/Boolean;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1, p2}, Lbsh/Primitive;->booleanBinaryOperation(Ljava/lang/Boolean;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1a

    check-cast p0, Ljava/lang/Integer;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1, p2}, Lbsh/Primitive;->intBinaryOperation(Ljava/lang/Integer;Ljava/lang/Integer;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    :cond_1a
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_27

    check-cast p0, Ljava/lang/Long;

    check-cast p1, Ljava/lang/Long;

    invoke-static {p0, p1, p2}, Lbsh/Primitive;->longBinaryOperation(Ljava/lang/Long;Ljava/lang/Long;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    :cond_27
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_34

    check-cast p0, Ljava/lang/Float;

    check-cast p1, Ljava/lang/Float;

    invoke-static {p0, p1, p2}, Lbsh/Primitive;->floatBinaryOperation(Ljava/lang/Float;Ljava/lang/Float;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    :cond_34
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_41

    check-cast p0, Ljava/lang/Double;

    check-cast p1, Ljava/lang/Double;

    invoke-static {p0, p1, p2}, Lbsh/Primitive;->doubleBinaryOperation(Ljava/lang/Double;Ljava/lang/Double;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    :cond_41
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Invalid types in binary operator"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static booleanBinaryOperation(Ljava/lang/Boolean;Ljava/lang/Boolean;I)Ljava/lang/Boolean;
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    packed-switch p2, :pswitch_data_44

    :pswitch_d
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "unimplemented binary operator"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_15
    new-instance v2, Ljava/lang/Boolean;

    if-ne v3, v4, :cond_1e

    :goto_19
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    :goto_1d
    return-object v0

    :cond_1e
    move v0, v1

    goto :goto_19

    :pswitch_20
    new-instance v2, Ljava/lang/Boolean;

    if-eq v3, v4, :cond_29

    :goto_24
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1d

    :cond_29
    move v0, v1

    goto :goto_24

    :pswitch_2b
    new-instance v2, Ljava/lang/Boolean;

    if-nez v3, :cond_31

    if-eqz v4, :cond_32

    :cond_31
    move v1, v0

    :cond_32
    invoke-direct {v2, v1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1d

    :pswitch_37
    new-instance v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_42

    if-eqz v4, :cond_42

    :goto_3d
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1d

    :cond_42
    move v0, v1

    goto :goto_3d

    :pswitch_data_44
    .packed-switch 0x5a
        :pswitch_15
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_20
        :pswitch_2b
        :pswitch_2b
        :pswitch_37
        :pswitch_37
    .end packed-switch
.end method

.method static booleanUnaryOperation(Ljava/lang/Boolean;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    packed-switch p1, :pswitch_data_16

    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Operator inappropriate for boolean"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_f
    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12

    nop

    :pswitch_data_16
    .packed-switch 0x56
        :pswitch_f
    .end packed-switch
.end method

.method public static boxType(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 4

    sget-object v0, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Not a primitive type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static castPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lbsh/Primitive;ZI)Lbsh/Primitive;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    if-eqz p3, :cond_c

    if-eqz p2, :cond_c

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad cast param 1"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-nez p3, :cond_18

    if-nez p2, :cond_18

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad cast param 2"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    if-eqz p1, :cond_39

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_39

    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "bad fromType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne p2, v0, :cond_47

    if-eqz p1, :cond_47

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "inconsistent args 1"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p2, v0, :cond_57

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_57

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "inconsistent args 2"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_57
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6b

    if-eqz p3, :cond_60

    sget-object v0, Lbsh/Types;->INVALID_CAST:Lbsh/Primitive;

    :goto_5f
    return-object v0

    :cond_60
    invoke-static {p0}, Lbsh/Reflect;->normalizeClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "void value"

    invoke-static {v0, v1, p4}, Lbsh/Types;->castError(Ljava/lang/String;Ljava/lang/String;I)Lbsh/UtilEvalError;

    move-result-object v0

    throw v0

    :cond_6b
    const/4 v0, 0x0

    if-eqz p2, :cond_72

    invoke-virtual {p2}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    :cond_72
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_99

    if-nez p1, :cond_c2

    if-eqz p3, :cond_7f

    sget-object v0, Lbsh/Types;->INVALID_CAST:Lbsh/Primitive;

    goto :goto_5f

    :cond_7f
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "primitive type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Null value"

    invoke-static {v0, v1, p4}, Lbsh/Types;->castError(Ljava/lang/String;Ljava/lang/String;I)Lbsh/UtilEvalError;

    move-result-object v0

    throw v0

    :cond_99
    if-nez p1, :cond_a3

    if-eqz p3, :cond_a0

    sget-object v0, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    goto :goto_5f

    :cond_a0
    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    goto :goto_5f

    :cond_a3
    if-eqz p3, :cond_a8

    sget-object v0, Lbsh/Types;->INVALID_CAST:Lbsh/Primitive;

    goto :goto_5f

    :cond_a8
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "object type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "primitive value"

    invoke-static {v0, v1, p4}, Lbsh/Types;->castError(Ljava/lang/String;Ljava/lang/String;I)Lbsh/UtilEvalError;

    move-result-object v0

    throw v0

    :cond_c2
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_da

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_d4

    if-eqz p3, :cond_cf

    sget-object v0, Lbsh/Types;->INVALID_CAST:Lbsh/Primitive;

    goto :goto_5f

    :cond_cf
    invoke-static {p0, p1, p4}, Lbsh/Types;->castError(Ljava/lang/Class;Ljava/lang/Class;I)Lbsh/UtilEvalError;

    move-result-object v0

    throw v0

    :cond_d4
    if-eqz p3, :cond_d8

    sget-object p2, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    :cond_d8
    move-object v0, p2

    goto :goto_5f

    :cond_da
    const/4 v1, 0x1

    if-ne p4, v1, :cond_ee

    invoke-static {p0, p1}, Lbsh/Types;->isJavaAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_ee

    if-eqz p3, :cond_e9

    sget-object v0, Lbsh/Types;->INVALID_CAST:Lbsh/Primitive;

    goto/16 :goto_5f

    :cond_e9
    invoke-static {p0, p1, p4}, Lbsh/Types;->castError(Ljava/lang/Class;Ljava/lang/Class;I)Lbsh/UtilEvalError;

    move-result-object v0

    throw v0

    :cond_ee
    if-eqz p3, :cond_f4

    sget-object v0, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    goto/16 :goto_5f

    :cond_f4
    new-instance v1, Lbsh/Primitive;

    invoke-static {p0, v0}, Lbsh/Primitive;->castWrapper(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_5f
.end method

.method static castWrapper(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "invalid type in castWrapper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    if-nez p1, :cond_29

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "null value in castWrapper, guard"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_39

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_63

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad wrapper cast of boolean"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_c1

    new-instance v0, Ljava/lang/Integer;

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    :goto_48
    instance-of v1, v0, Ljava/lang/Number;

    if-nez v1, :cond_54

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad type in cast"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    check-cast v0, Ljava/lang/Number;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_64

    new-instance p1, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-direct {p1, v0}, Ljava/lang/Byte;-><init>(B)V

    :cond_63
    :goto_63
    return-object p1

    :cond_64
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_72

    new-instance p1, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-direct {p1, v0}, Ljava/lang/Short;-><init>(S)V

    goto :goto_63

    :cond_72
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_81

    new-instance p1, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-char v0, v0

    invoke-direct {p1, v0}, Ljava/lang/Character;-><init>(C)V

    goto :goto_63

    :cond_81
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_8f

    new-instance p1, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_63

    :cond_8f
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_9d

    new-instance p1, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    goto :goto_63

    :cond_9d
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_ab

    new-instance p1, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-direct {p1, v0}, Ljava/lang/Float;-><init>(F)V

    goto :goto_63

    :cond_ab
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_b9

    new-instance p1, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/lang/Double;-><init>(D)V

    goto :goto_63

    :cond_b9
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "error in wrapper cast"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c1
    move-object v0, p1

    goto :goto_48
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

.method static doubleBinaryOperation(Ljava/lang/Double;Ljava/lang/Double;I)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    packed-switch p2, :pswitch_data_94

    :pswitch_d
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "Unimplemented binary double operator"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_15
    new-instance v2, Ljava/lang/Boolean;

    cmpg-double v3, v3, v5

    if-gez v3, :cond_20

    :goto_1b
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    :goto_1f
    return-object v0

    :cond_20
    move v0, v1

    goto :goto_1b

    :pswitch_22
    new-instance v2, Ljava/lang/Boolean;

    cmpl-double v3, v3, v5

    if-lez v3, :cond_2d

    :goto_28
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1f

    :cond_2d
    move v0, v1

    goto :goto_28

    :pswitch_2f
    new-instance v2, Ljava/lang/Boolean;

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3a

    :goto_35
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1f

    :cond_3a
    move v0, v1

    goto :goto_35

    :pswitch_3c
    new-instance v2, Ljava/lang/Boolean;

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_47

    :goto_42
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1f

    :cond_47
    move v0, v1

    goto :goto_42

    :pswitch_49
    new-instance v2, Ljava/lang/Boolean;

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_54

    :goto_4f
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1f

    :cond_54
    move v0, v1

    goto :goto_4f

    :pswitch_56
    new-instance v2, Ljava/lang/Boolean;

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_61

    :goto_5c
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1f

    :cond_61
    move v0, v1

    goto :goto_5c

    :pswitch_63
    new-instance v0, Ljava/lang/Double;

    add-double v1, v3, v5

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto :goto_1f

    :pswitch_6b
    new-instance v0, Ljava/lang/Double;

    sub-double v1, v3, v5

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto :goto_1f

    :pswitch_73
    new-instance v0, Ljava/lang/Double;

    mul-double v1, v3, v5

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto :goto_1f

    :pswitch_7b
    new-instance v0, Ljava/lang/Double;

    div-double v1, v3, v5

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto :goto_1f

    :pswitch_83
    new-instance v0, Ljava/lang/Double;

    rem-double v1, v3, v5

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto :goto_1f

    :pswitch_8b
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Can\'t shift doubles"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_94
    .packed-switch 0x52
        :pswitch_22
        :pswitch_22
        :pswitch_15
        :pswitch_15
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_2f
        :pswitch_3c
        :pswitch_3c
        :pswitch_49
        :pswitch_49
        :pswitch_56
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_63
        :pswitch_6b
        :pswitch_73
        :pswitch_7b
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_83
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
    .end packed-switch
.end method

.method static doubleUnaryOperation(Ljava/lang/Double;I)D
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    packed-switch p1, :pswitch_data_12

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad double unaryOperation"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_f
    neg-double v0, v0

    :pswitch_10
    return-wide v0

    nop

    :pswitch_data_12
    .packed-switch 0x66
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method

.method static floatBinaryOperation(Ljava/lang/Float;Ljava/lang/Float;I)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    packed-switch p2, :pswitch_data_94

    :pswitch_d
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "Unimplemented binary float operator"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_15
    new-instance v2, Ljava/lang/Boolean;

    cmpg-float v3, v3, v4

    if-gez v3, :cond_20

    :goto_1b
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    :goto_1f
    return-object v0

    :cond_20
    move v0, v1

    goto :goto_1b

    :pswitch_22
    new-instance v2, Ljava/lang/Boolean;

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2d

    :goto_28
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1f

    :cond_2d
    move v0, v1

    goto :goto_28

    :pswitch_2f
    new-instance v2, Ljava/lang/Boolean;

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3a

    :goto_35
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1f

    :cond_3a
    move v0, v1

    goto :goto_35

    :pswitch_3c
    new-instance v2, Ljava/lang/Boolean;

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_47

    :goto_42
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1f

    :cond_47
    move v0, v1

    goto :goto_42

    :pswitch_49
    new-instance v2, Ljava/lang/Boolean;

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_54

    :goto_4f
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1f

    :cond_54
    move v0, v1

    goto :goto_4f

    :pswitch_56
    new-instance v2, Ljava/lang/Boolean;

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_61

    :goto_5c
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1f

    :cond_61
    move v0, v1

    goto :goto_5c

    :pswitch_63
    new-instance v0, Ljava/lang/Float;

    add-float v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    goto :goto_1f

    :pswitch_6b
    new-instance v0, Ljava/lang/Float;

    sub-float v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    goto :goto_1f

    :pswitch_73
    new-instance v0, Ljava/lang/Float;

    mul-float v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    goto :goto_1f

    :pswitch_7b
    new-instance v0, Ljava/lang/Float;

    div-float v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    goto :goto_1f

    :pswitch_83
    new-instance v0, Ljava/lang/Float;

    rem-float v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    goto :goto_1f

    :pswitch_8b
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Can\'t shift floats "

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_94
    .packed-switch 0x52
        :pswitch_22
        :pswitch_22
        :pswitch_15
        :pswitch_15
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_2f
        :pswitch_3c
        :pswitch_3c
        :pswitch_49
        :pswitch_49
        :pswitch_56
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_63
        :pswitch_6b
        :pswitch_73
        :pswitch_7b
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_83
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
    .end packed-switch
.end method

.method static floatUnaryOperation(Ljava/lang/Float;I)F
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    packed-switch p1, :pswitch_data_12

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad float unaryOperation"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_f
    neg-float v0, v0

    :pswitch_10
    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x66
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method

.method public static getDefaultValue(Ljava/lang/Class;)Lbsh/Primitive;
    .registers 3

    const/4 v1, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_9
    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    :goto_b
    return-object v0

    :cond_c
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_16

    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(Z)V

    goto :goto_b

    :cond_16
    :try_start_16
    new-instance v0, Lbsh/Primitive;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lbsh/Primitive;->castToType(Ljava/lang/Class;I)Lbsh/Primitive;
    :try_end_20
    .catch Lbsh/UtilEvalError; {:try_start_16 .. :try_end_20} :catch_22

    move-result-object v0

    goto :goto_b

    :catch_22
    move-exception v0

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad cast"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static intBinaryOperation(Ljava/lang/Integer;Ljava/lang/Integer;I)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch p2, :pswitch_data_b2

    :pswitch_d
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "Unimplemented binary integer operator"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_15
    new-instance v2, Ljava/lang/Boolean;

    if-ge v3, v4, :cond_1e

    :goto_19
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    :goto_1d
    return-object v0

    :cond_1e
    move v0, v1

    goto :goto_19

    :pswitch_20
    new-instance v2, Ljava/lang/Boolean;

    if-le v3, v4, :cond_29

    :goto_24
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1d

    :cond_29
    move v0, v1

    goto :goto_24

    :pswitch_2b
    new-instance v2, Ljava/lang/Boolean;

    if-ne v3, v4, :cond_34

    :goto_2f
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1d

    :cond_34
    move v0, v1

    goto :goto_2f

    :pswitch_36
    new-instance v2, Ljava/lang/Boolean;

    if-gt v3, v4, :cond_3f

    :goto_3a
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1d

    :cond_3f
    move v0, v1

    goto :goto_3a

    :pswitch_41
    new-instance v2, Ljava/lang/Boolean;

    if-lt v3, v4, :cond_4a

    :goto_45
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1d

    :cond_4a
    move v0, v1

    goto :goto_45

    :pswitch_4c
    new-instance v2, Ljava/lang/Boolean;

    if-eq v3, v4, :cond_55

    :goto_50
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1d

    :cond_55
    move v0, v1

    goto :goto_50

    :pswitch_57
    new-instance v0, Ljava/lang/Integer;

    add-int v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1d

    :pswitch_5f
    new-instance v0, Ljava/lang/Integer;

    sub-int v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1d

    :pswitch_67
    new-instance v0, Ljava/lang/Integer;

    mul-int v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1d

    :pswitch_6f
    new-instance v0, Ljava/lang/Integer;

    div-int v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1d

    :pswitch_77
    new-instance v0, Ljava/lang/Integer;

    rem-int v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1d

    :pswitch_7f
    new-instance v0, Ljava/lang/Integer;

    shl-int v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1d

    :pswitch_87
    new-instance v0, Ljava/lang/Integer;

    shr-int v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1d

    :pswitch_8f
    new-instance v0, Ljava/lang/Integer;

    ushr-int v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1d

    :pswitch_97
    new-instance v0, Ljava/lang/Integer;

    and-int v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto/16 :goto_1d

    :pswitch_a0
    new-instance v0, Ljava/lang/Integer;

    or-int v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto/16 :goto_1d

    :pswitch_a9
    new-instance v0, Ljava/lang/Integer;

    xor-int v1, v3, v4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto/16 :goto_1d

    :pswitch_data_b2
    .packed-switch 0x52
        :pswitch_20
        :pswitch_20
        :pswitch_15
        :pswitch_15
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_2b
        :pswitch_36
        :pswitch_36
        :pswitch_41
        :pswitch_41
        :pswitch_4c
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_57
        :pswitch_5f
        :pswitch_67
        :pswitch_6f
        :pswitch_97
        :pswitch_97
        :pswitch_a0
        :pswitch_a0
        :pswitch_a9
        :pswitch_77
        :pswitch_7f
        :pswitch_7f
        :pswitch_87
        :pswitch_87
        :pswitch_8f
        :pswitch_8f
    .end packed-switch
.end method

.method static intUnaryOperation(Ljava/lang/Integer;I)I
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch p1, :sswitch_data_1a

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad integer unaryOperation"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_f
    neg-int v0, v0

    :goto_10
    :sswitch_10
    return v0

    :sswitch_11
    xor-int/lit8 v0, v0, -0x1

    goto :goto_10

    :sswitch_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :sswitch_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :sswitch_data_1a
    .sparse-switch
        0x57 -> :sswitch_11
        0x64 -> :sswitch_14
        0x65 -> :sswitch_17
        0x66 -> :sswitch_10
        0x67 -> :sswitch_f
    .end sparse-switch
.end method

.method public static isWrapperType(Ljava/lang/Class;)Z
    .registers 2

    sget-object v0, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static longBinaryOperation(Ljava/lang/Long;Ljava/lang/Long;I)Ljava/lang/Object;
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    packed-switch p2, :pswitch_data_c2

    :pswitch_d
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "Unimplemented binary long operator"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_15
    new-instance v2, Ljava/lang/Boolean;

    cmp-long v3, v3, v5

    if-gez v3, :cond_20

    :goto_1b
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    :goto_1f
    return-object v0

    :cond_20
    move v0, v1

    goto :goto_1b

    :pswitch_22
    new-instance v2, Ljava/lang/Boolean;

    cmp-long v3, v3, v5

    if-lez v3, :cond_2d

    :goto_28
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1f

    :cond_2d
    move v0, v1

    goto :goto_28

    :pswitch_2f
    new-instance v2, Ljava/lang/Boolean;

    cmp-long v3, v3, v5

    if-nez v3, :cond_3a

    :goto_35
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1f

    :cond_3a
    move v0, v1

    goto :goto_35

    :pswitch_3c
    new-instance v2, Ljava/lang/Boolean;

    cmp-long v3, v3, v5

    if-gtz v3, :cond_47

    :goto_42
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1f

    :cond_47
    move v0, v1

    goto :goto_42

    :pswitch_49
    new-instance v2, Ljava/lang/Boolean;

    cmp-long v3, v3, v5

    if-ltz v3, :cond_54

    :goto_4f
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1f

    :cond_54
    move v0, v1

    goto :goto_4f

    :pswitch_56
    new-instance v2, Ljava/lang/Boolean;

    cmp-long v3, v3, v5

    if-eqz v3, :cond_61

    :goto_5c
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_1f

    :cond_61
    move v0, v1

    goto :goto_5c

    :pswitch_63
    new-instance v0, Ljava/lang/Long;

    add-long v1, v3, v5

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1f

    :pswitch_6b
    new-instance v0, Ljava/lang/Long;

    sub-long v1, v3, v5

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1f

    :pswitch_73
    new-instance v0, Ljava/lang/Long;

    mul-long v1, v3, v5

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1f

    :pswitch_7b
    new-instance v0, Ljava/lang/Long;

    div-long v1, v3, v5

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1f

    :pswitch_83
    new-instance v0, Ljava/lang/Long;

    rem-long v1, v3, v5

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1f

    :pswitch_8b
    new-instance v0, Ljava/lang/Long;

    long-to-int v1, v5

    shl-long v1, v3, v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1f

    :pswitch_94
    new-instance v0, Ljava/lang/Long;

    long-to-int v1, v5

    shr-long v1, v3, v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1f

    :pswitch_9d
    new-instance v0, Ljava/lang/Long;

    long-to-int v1, v5

    ushr-long v1, v3, v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto/16 :goto_1f

    :pswitch_a7
    new-instance v0, Ljava/lang/Long;

    and-long v1, v3, v5

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto/16 :goto_1f

    :pswitch_b0
    new-instance v0, Ljava/lang/Long;

    or-long v1, v3, v5

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto/16 :goto_1f

    :pswitch_b9
    new-instance v0, Ljava/lang/Long;

    xor-long v1, v3, v5

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto/16 :goto_1f

    :pswitch_data_c2
    .packed-switch 0x52
        :pswitch_22
        :pswitch_22
        :pswitch_15
        :pswitch_15
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_2f
        :pswitch_3c
        :pswitch_3c
        :pswitch_49
        :pswitch_49
        :pswitch_56
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_63
        :pswitch_6b
        :pswitch_73
        :pswitch_7b
        :pswitch_a7
        :pswitch_a7
        :pswitch_b0
        :pswitch_b0
        :pswitch_b9
        :pswitch_83
        :pswitch_8b
        :pswitch_8b
        :pswitch_94
        :pswitch_94
        :pswitch_9d
        :pswitch_9d
    .end packed-switch
.end method

.method static longUnaryOperation(Ljava/lang/Long;I)J
    .registers 6

    const-wide/16 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sparse-switch p1, :sswitch_data_1c

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad long unaryOperation"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_11
    neg-long v0, v0

    :goto_12
    :sswitch_12
    return-wide v0

    :sswitch_13
    const-wide/16 v2, -0x1

    xor-long/2addr v0, v2

    goto :goto_12

    :sswitch_17
    add-long/2addr v0, v2

    goto :goto_12

    :sswitch_19
    sub-long/2addr v0, v2

    goto :goto_12

    nop

    :sswitch_data_1c
    .sparse-switch
        0x57 -> :sswitch_13
        0x64 -> :sswitch_17
        0x65 -> :sswitch_19
        0x66 -> :sswitch_12
        0x67 -> :sswitch_11
    .end sparse-switch
.end method

.method static promotePrimitives(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8

    invoke-static {p0}, Lbsh/Primitive;->promoteToInteger(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Lbsh/Primitive;->promoteToInteger(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v0, v1, Ljava/lang/Number;

    if-eqz v0, :cond_29

    instance-of v0, v3, Ljava/lang/Number;

    if-eqz v0, :cond_29

    move-object v0, v1

    check-cast v0, Ljava/lang/Number;

    move-object v2, v3

    check-cast v2, Ljava/lang/Number;

    instance-of v4, v0, Ljava/lang/Double;

    if-nez v4, :cond_1e

    instance-of v5, v2, Ljava/lang/Double;

    if-eqz v5, :cond_3d

    :cond_1e
    if-eqz v4, :cond_33

    new-instance v3, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    :cond_29
    :goto_29
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object v3, v0, v1

    return-object v0

    :cond_33
    new-instance v1, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/lang/Double;-><init>(D)V

    goto :goto_29

    :cond_3d
    instance-of v4, v0, Ljava/lang/Float;

    if-nez v4, :cond_45

    instance-of v5, v2, Ljava/lang/Float;

    if-eqz v5, :cond_5b

    :cond_45
    if-eqz v4, :cond_51

    new-instance v3, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-direct {v3, v0}, Ljava/lang/Float;-><init>(F)V

    goto :goto_29

    :cond_51
    new-instance v1, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Float;-><init>(F)V

    goto :goto_29

    :cond_5b
    instance-of v4, v0, Ljava/lang/Long;

    if-nez v4, :cond_63

    instance-of v5, v2, Ljava/lang/Long;

    if-eqz v5, :cond_29

    :cond_63
    if-eqz v4, :cond_6f

    new-instance v3, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    goto :goto_29

    :cond_6f
    new-instance v1, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/lang/Long;-><init>(J)V

    goto :goto_29
.end method

.method static promoteToInteger(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object p0, v0

    :cond_10
    :goto_10
    return-object p0

    :cond_11
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_19

    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_10

    :cond_19
    new-instance v0, Ljava/lang/Integer;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object p0, v0

    goto :goto_10
.end method

.method public static unaryOperation(Lbsh/Primitive;I)Lbsh/Primitive;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne p0, v0, :cond_c

    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "illegal use of null object or \'null\' literal"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p0, v0, :cond_18

    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "illegal use of undefined object or \'void\' literal"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    invoke-virtual {p0}, Lbsh/Primitive;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbsh/Primitive;->promoteToInteger(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_35

    new-instance v1, Lbsh/Primitive;

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lbsh/Primitive;->booleanUnaryOperation(Ljava/lang/Boolean;I)Z

    move-result v0

    invoke-direct {v1, v0}, Lbsh/Primitive;-><init>(Z)V

    move-object v0, v1

    :goto_34
    return-object v0

    :cond_35
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_6e

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lbsh/Primitive;->intUnaryOperation(Ljava/lang/Integer;I)I

    move-result v2

    const/16 v0, 0x64

    if-eq p1, v0, :cond_47

    const/16 v0, 0x65

    if-ne p1, v0, :cond_68

    :cond_47
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_52

    new-instance v0, Lbsh/Primitive;

    int-to-byte v1, v2

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(B)V

    goto :goto_34

    :cond_52
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_5d

    new-instance v0, Lbsh/Primitive;

    int-to-short v1, v2

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(S)V

    goto :goto_34

    :cond_5d
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_68

    new-instance v0, Lbsh/Primitive;

    int-to-char v1, v2

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(C)V

    goto :goto_34

    :cond_68
    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, v2}, Lbsh/Primitive;-><init>(I)V

    goto :goto_34

    :cond_6e
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_7f

    new-instance v1, Lbsh/Primitive;

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0, p1}, Lbsh/Primitive;->longUnaryOperation(Ljava/lang/Long;I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lbsh/Primitive;-><init>(J)V

    move-object v0, v1

    goto :goto_34

    :cond_7f
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_90

    new-instance v1, Lbsh/Primitive;

    check-cast v0, Ljava/lang/Float;

    invoke-static {v0, p1}, Lbsh/Primitive;->floatUnaryOperation(Ljava/lang/Float;I)F

    move-result v0

    invoke-direct {v1, v0}, Lbsh/Primitive;-><init>(F)V

    move-object v0, v1

    goto :goto_34

    :cond_90
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_a1

    new-instance v1, Lbsh/Primitive;

    check-cast v0, Ljava/lang/Double;

    invoke-static {v0, p1}, Lbsh/Primitive;->doubleUnaryOperation(Ljava/lang/Double;I)D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lbsh/Primitive;-><init>(D)V

    move-object v0, v1

    goto :goto_34

    :cond_a1
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "An error occurred.  Please call technical support."

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unboxType(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 4

    sget-object v0, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Not a primitive wrapper type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unwrap(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x0

    :cond_5
    :goto_5
    return-object p0

    :cond_6
    instance-of v0, p0, Lbsh/Primitive;

    if-eqz v0, :cond_5

    check-cast p0, Lbsh/Primitive;

    invoke-virtual {p0}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object p0

    goto :goto_5
.end method

.method public static unwrap([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_4
    array-length v2, p0

    if-lt v0, v2, :cond_8

    return-object v1

    :cond_8
    aget-object v2, p0, v0

    invoke-static {v2}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public static wrap(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    sget-object p0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    if-nez p0, :cond_c

    sget-object p0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    goto :goto_6

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, p0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_6
.end method

.method public static wrap([Ljava/lang/Object;[Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 6

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_8
    array-length v2, p0

    if-lt v0, v2, :cond_d

    move-object v0, v1

    goto :goto_3

    :cond_d
    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Lbsh/Primitive;->wrap(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method


# virtual methods
.method public booleanValue()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_f
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Primitive not a boolean"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public castToType(Ljava/lang/Class;I)Lbsh/Primitive;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    invoke-virtual {p0}, Lbsh/Primitive;->getType()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, p0, v1, p2}, Lbsh/Primitive;->castPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lbsh/Primitive;ZI)Lbsh/Primitive;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lbsh/Primitive;

    if-eqz v0, :cond_f

    check-cast p1, Lbsh/Primitive;

    iget-object v0, p1, Lbsh/Primitive;->value:Ljava/lang/Object;

    iget-object v1, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p0, v0, :cond_7

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne p0, v0, :cond_d

    const/4 v0, 0x0

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lbsh/Primitive;->unboxType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_6
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive$Special;->NULL_VALUE:Lbsh/Primitive$Special;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive$Special;->VOID_TYPE:Lbsh/Primitive$Special;

    if-ne v0, v1, :cond_16

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "attempt to unwrap void type"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    goto :goto_7
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x15

    return v0
.end method

.method public intValue()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    :cond_f
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Primitive not a number"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isNumber()Z
    .registers 2

    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-nez v0, :cond_10

    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-eq p0, v0, :cond_10

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq p0, v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public numberValue()Ljava/lang/Number;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Character;

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v1

    :cond_12
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_19

    check-cast v0, Ljava/lang/Number;

    return-object v0

    :cond_19
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Primitive not a number"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive$Special;->NULL_VALUE:Lbsh/Primitive$Special;

    if-ne v0, v1, :cond_9

    const-string v0, "null"

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive$Special;->VOID_TYPE:Lbsh/Primitive$Special;

    if-ne v0, v1, :cond_12

    const-string v0, "void"

    goto :goto_8

    :cond_12
    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method
