.class public Lbsh/Interpreter;
.super Ljava/lang/Object;

# interfaces
.implements Lbsh/ConsoleInterface;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Runnable;


# static fields
.field public static DEBUG:Z = false

.field public static LOCALSCOPING:Z = false

.field public static TRACE:Z = false

.field public static final VERSION:Ljava/lang/String; = "2.0b4"

.field static array$Ljava$lang$String:Ljava/lang/Class;

.field static transient debug:Ljava/io/PrintStream;

.field static sharedObject:Lbsh/This;

.field static systemLineSeparator:Ljava/lang/String;


# instance fields
.field console:Lbsh/ConsoleInterface;

.field transient err:Ljava/io/PrintStream;

.field protected evalOnly:Z

.field private exitOnEOF:Z

.field globalNameSpace:Lbsh/NameSpace;

.field transient in:Ljava/io/Reader;

.field protected interactive:Z

.field transient out:Ljava/io/PrintStream;

.field parent:Lbsh/Interpreter;

.field transient parser:Lbsh/Parser;

.field private showResults:Z

.field sourceFileInfo:Ljava/lang/String;

.field private strictJava:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\n"

    sput-object v0, Lbsh/Interpreter;->systemLineSeparator:Ljava/lang/String;

    invoke-static {}, Lbsh/Interpreter;->staticInit()V

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    const/4 v6, 0x1

    new-instance v1, Ljava/io/StringReader;

    const-string v0, ""

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;)V

    iput-boolean v6, p0, Lbsh/Interpreter;->evalOnly:Z

    const-string v0, "bsh.evalOnly"

    new-instance v1, Lbsh/Primitive;

    invoke-direct {v1, v6}, Lbsh/Primitive;-><init>(Z)V

    invoke-virtual {p0, v0, v1}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lbsh/ConsoleInterface;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbsh/Interpreter;-><init>(Lbsh/ConsoleInterface;Lbsh/NameSpace;)V

    return-void
.end method

.method public constructor <init>(Lbsh/ConsoleInterface;Lbsh/NameSpace;)V
    .registers 9

    invoke-interface {p1}, Lbsh/ConsoleInterface;->getIn()Ljava/io/Reader;

    move-result-object v1

    invoke-interface {p1}, Lbsh/ConsoleInterface;->getOut()Ljava/io/PrintStream;

    move-result-object v2

    invoke-interface {p1}, Lbsh/ConsoleInterface;->getErr()Ljava/io/PrintStream;

    move-result-object v3

    const/4 v4, 0x1

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lbsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;)V

    invoke-virtual {p0, p1}, Lbsh/Interpreter;->setConsole(Lbsh/ConsoleInterface;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;Z)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lbsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;)V
    .registers 14

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lbsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;Lbsh/Interpreter;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;Lbsh/Interpreter;Ljava/lang/String;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsh/Interpreter;->strictJava:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsh/Interpreter;->exitOnEOF:Z

    new-instance v0, Lbsh/Parser;

    invoke-direct {v0, p1}, Lbsh/Parser;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lbsh/Interpreter;->parser:Lbsh/Parser;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-object p1, p0, Lbsh/Interpreter;->in:Ljava/io/Reader;

    iput-object p2, p0, Lbsh/Interpreter;->out:Ljava/io/PrintStream;

    iput-object p3, p0, Lbsh/Interpreter;->err:Ljava/io/PrintStream;

    iput-boolean p4, p0, Lbsh/Interpreter;->interactive:Z

    sput-object p3, Lbsh/Interpreter;->debug:Ljava/io/PrintStream;

    iput-object p6, p0, Lbsh/Interpreter;->parent:Lbsh/Interpreter;

    if-eqz p6, :cond_29

    invoke-virtual {p6}, Lbsh/Interpreter;->getStrictJava()Z

    move-result v2

    invoke-virtual {p0, v2}, Lbsh/Interpreter;->setStrictJava(Z)V

    :cond_29
    iput-object p7, p0, Lbsh/Interpreter;->sourceFileInfo:Ljava/lang/String;

    invoke-static {p0}, Lbsh/BshClassManager;->createClassManager(Lbsh/Interpreter;)Lbsh/BshClassManager;

    move-result-object v2

    if-nez p5, :cond_6d

    new-instance v3, Lbsh/NameSpace;

    const-string v4, "global"

    invoke-direct {v3, v2, v4}, Lbsh/NameSpace;-><init>(Lbsh/BshClassManager;Ljava/lang/String;)V

    iput-object v3, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    :goto_3a
    const-string v2, "bsh"

    invoke-virtual {p0, v2}, Lbsh/Interpreter;->getu(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lbsh/This;

    if-nez v2, :cond_47

    invoke-direct {p0}, Lbsh/Interpreter;->initRootSystemObject()V

    :cond_47
    if-eqz p4, :cond_4c

    invoke-virtual {p0}, Lbsh/Interpreter;->loadRCFiles()V

    :cond_4c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-boolean v4, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v4, :cond_6c

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Time to initialize interpreter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sub-long v0, v2, v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_6c
    return-void

    :cond_6d
    iput-object p5, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    goto :goto_3a
.end method

.method private Line()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    iget-object v0, p0, Lbsh/Interpreter;->parser:Lbsh/Parser;

    invoke-virtual {v0}, Lbsh/Parser;->Line()Z

    move-result v0

    return v0
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

.method public static final debug(Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lbsh/Interpreter;->debug:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "// Debug: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method private getBshPrompt()Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "getBshPrompt()"

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    const-string v0, "bsh % "

    goto :goto_8
.end method

.method private get_jj_input_stream()Lbsh/JavaCharStream;
    .registers 2

    iget-object v0, p0, Lbsh/Interpreter;->parser:Lbsh/Parser;

    iget-object v0, v0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    return-object v0
.end method

.method private get_jjtree()Lbsh/JJTParserState;
    .registers 2

    iget-object v0, p0, Lbsh/Interpreter;->parser:Lbsh/Parser;

    iget-object v0, v0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    return-object v0
.end method

.method private initRootSystemObject()V
    .registers 5

    invoke-virtual {p0}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    const-string v1, "bsh"

    new-instance v2, Lbsh/NameSpace;

    const-string v3, "Bsh Object"

    invoke-direct {v2, v0, v3}, Lbsh/NameSpace;-><init>(Lbsh/BshClassManager;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lbsh/Interpreter;->sharedObject:Lbsh/This;

    if-nez v1, :cond_25

    new-instance v1, Lbsh/NameSpace;

    const-string v2, "Bsh Shared System Object"

    invoke-direct {v1, v0, v2}, Lbsh/NameSpace;-><init>(Lbsh/BshClassManager;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v1

    sput-object v1, Lbsh/Interpreter;->sharedObject:Lbsh/This;

    :cond_25
    const-string v1, "bsh.system"

    sget-object v2, Lbsh/Interpreter;->sharedObject:Lbsh/This;

    invoke-virtual {p0, v1, v2}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "bsh.shared"

    sget-object v2, Lbsh/Interpreter;->sharedObject:Lbsh/This;

    invoke-virtual {p0, v1, v2}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lbsh/NameSpace;

    const-string v2, "Bsh Command Help Text"

    invoke-direct {v1, v0, v2}, Lbsh/NameSpace;-><init>(Lbsh/BshClassManager;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    const-string v1, "bsh.help"

    invoke-virtual {p0, v1, v0}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_43
    const-string v0, "bsh.cwd"

    const-string v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4e
    .catch Ljava/lang/SecurityException; {:try_start_43 .. :try_end_4e} :catch_67

    :goto_4e
    const-string v0, "bsh.interactive"

    new-instance v1, Lbsh/Primitive;

    iget-boolean v2, p0, Lbsh/Interpreter;->interactive:Z

    invoke-direct {v1, v2}, Lbsh/Primitive;-><init>(Z)V

    invoke-virtual {p0, v0, v1}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "bsh.evalOnly"

    new-instance v1, Lbsh/Primitive;

    iget-boolean v2, p0, Lbsh/Interpreter;->evalOnly:Z

    invoke-direct {v1, v2}, Lbsh/Primitive;-><init>(Z)V

    invoke-virtual {p0, v0, v1}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_67
    move-exception v0

    const-string v0, "bsh.cwd"

    const-string v1, "."

    invoke-virtual {p0, v0, v1}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4e
.end method

.method public static invokeMain(Ljava/lang/Class;[Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v1, "main"

    new-array v2, v3, [Ljava/lang/Class;

    sget-object v0, Lbsh/Interpreter;->array$Ljava$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_23

    const-string v0, "[Ljava.lang.String;"

    invoke-static {v0}, Lbsh/Interpreter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Interpreter;->array$Ljava$lang$String:Ljava/lang/Class;

    :goto_13
    aput-object v0, v2, v4

    invoke-static {v5, p0, v1, v2, v3}, Lbsh/Reflect;->resolveJavaMethod(Lbsh/BshClassManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_22

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    return-void

    :cond_23
    sget-object v0, Lbsh/Interpreter;->array$Ljava$lang$String:Ljava/lang/Class;

    goto :goto_13
.end method

.method public static main([Ljava/lang/String;)V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    array-length v1, p0

    if-lez v1, :cond_db

    aget-object v2, p0, v4

    array-length v1, p0

    if-le v1, v5, :cond_32

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Ljava/lang/String;

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v5, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v1

    :goto_16
    new-instance v1, Lbsh/Interpreter;

    invoke-direct {v1}, Lbsh/Interpreter;-><init>()V

    const-string v4, "bsh.args"

    invoke-virtual {v1, v4, v3}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_20
    iget-object v4, v1, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {v1, v2, v4}, Lbsh/Interpreter;->source(Ljava/lang/String;Lbsh/NameSpace;)Ljava/lang/Object;

    move-result-object v2

    instance-of v1, v2, Ljava/lang/Class;
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_28} :catch_64
    .catch Lbsh/TargetError; {:try_start_20 .. :try_end_28} :catch_7e
    .catch Lbsh/EvalError; {:try_start_20 .. :try_end_28} :catch_a5
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_28} :catch_c0

    if-eqz v1, :cond_31

    :try_start_2a
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    invoke-static {v1, v3}, Lbsh/Interpreter;->invokeMain(Ljava/lang/Class;[Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_31} :catch_36
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_31} :catch_64
    .catch Lbsh/TargetError; {:try_start_2a .. :try_end_31} :catch_7e
    .catch Lbsh/EvalError; {:try_start_2a .. :try_end_31} :catch_a5
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_31} :catch_c0

    :cond_31
    :goto_31
    return-void

    :cond_32
    new-array v1, v4, [Ljava/lang/String;

    move-object v3, v1

    goto :goto_16

    :catch_36
    move-exception v1

    :try_start_37
    instance-of v3, v1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v3, :cond_41

    check-cast v1, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    :cond_41
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " main method threw exception:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_63} :catch_64
    .catch Lbsh/TargetError; {:try_start_37 .. :try_end_63} :catch_7e
    .catch Lbsh/EvalError; {:try_start_37 .. :try_end_63} :catch_a5
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_63} :catch_c0

    goto :goto_31

    :catch_64
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "File not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_31

    :catch_7e
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Script threw exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lbsh/TargetError;->inNativeCode()Z

    move-result v2

    if-eqz v2, :cond_31

    sget-boolean v2, Lbsh/Interpreter;->DEBUG:Z

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2, v3}, Lbsh/TargetError;->printStackTrace(ZLjava/io/PrintStream;)V

    goto :goto_31

    :catch_a5
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Evaluation Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_31

    :catch_c0
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "I/O Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_31

    :cond_db
    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Windows"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_116

    const-string v1, "java.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1.1."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_116

    new-instance v1, Lbsh/Interpreter$1;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lbsh/Interpreter$1;-><init>(Ljava/io/InputStream;)V

    :goto_fe
    new-instance v2, Lbsh/CommandLineReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Lbsh/CommandLineReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Lbsh/Interpreter;

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v1, v2, v3, v4, v5}, Lbsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;Z)V

    invoke-virtual {v1}, Lbsh/Interpreter;->run()V

    goto/16 :goto_31

    :cond_116
    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    goto :goto_fe
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v0, p0, Lbsh/Interpreter;->console:Lbsh/ConsoleInterface;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lbsh/Interpreter;->console:Lbsh/ConsoleInterface;

    invoke-interface {v0}, Lbsh/ConsoleInterface;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->setOut(Ljava/io/PrintStream;)V

    iget-object v0, p0, Lbsh/Interpreter;->console:Lbsh/ConsoleInterface;

    invoke-interface {v0}, Lbsh/ConsoleInterface;->getErr()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->setErr(Ljava/io/PrintStream;)V

    :goto_19
    return-void

    :cond_1a
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->setOut(Ljava/io/PrintStream;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->setErr(Ljava/io/PrintStream;)V

    goto :goto_19
.end method

.method public static redirectOutputToFile(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    invoke-static {v0}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t redirect output to file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_10
.end method

.method private showEvalString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/16 v3, 0x50

    const/16 v2, 0x20

    const/16 v0, 0xa

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_2e

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " . . . "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2e
    return-object v0
.end method

.method static staticInit()V
    .registers 4

    :try_start_0
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbsh/Interpreter;->systemLineSeparator:Ljava/lang/String;

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sput-object v0, Lbsh/Interpreter;->debug:Ljava/io/PrintStream;

    const-string v0, "debug"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    const-string v0, "trace"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lbsh/Interpreter;->TRACE:Z

    const-string v0, "localscoping"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lbsh/Interpreter;->LOCALSCOPING:Z

    const-string v0, "outfile"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-static {v0}, Lbsh/Interpreter;->redirectOutputToFile(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_2f} :catch_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_4a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2f} :catch_64

    :cond_2f
    :goto_2f
    return-void

    :catch_30
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not init static:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2f

    :catch_4a
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not init static(2):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2f

    :catch_64
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not init static(3):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2f
.end method


# virtual methods
.method public final error(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lbsh/Interpreter;->console:Lbsh/ConsoleInterface;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lbsh/Interpreter;->console:Lbsh/ConsoleInterface;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "// Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lbsh/ConsoleInterface;->error(Ljava/lang/Object;)V

    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lbsh/Interpreter;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "// Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lbsh/Interpreter;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    goto :goto_22
.end method

.method public eval(Ljava/io/Reader;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    const-string v1, "eval stream"

    invoke-virtual {p0, p1, v0, v1}, Lbsh/Interpreter;->eval(Ljava/io/Reader;Lbsh/NameSpace;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public eval(Ljava/io/Reader;Lbsh/NameSpace;Ljava/lang/String;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x1

    sget-boolean v1, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v1, :cond_1d

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "eval: nameSpace = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_1d
    new-instance v1, Lbsh/Interpreter;

    iget-object v3, p0, Lbsh/Interpreter;->out:Ljava/io/PrintStream;

    iget-object v4, p0, Lbsh/Interpreter;->err:Ljava/io/PrintStream;

    move-object v2, p1

    move-object v6, p2

    move-object v7, p0

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lbsh/Interpreter;-><init>(Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;Lbsh/Interpreter;Ljava/lang/String;)V

    new-instance v6, Lbsh/CallStack;

    invoke-direct {v6, p2}, Lbsh/CallStack;-><init>(Lbsh/NameSpace;)V

    move v4, v5

    move-object v3, v9

    :goto_31
    if-eqz v4, :cond_38

    :cond_33
    :goto_33
    invoke-static {v3}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_38
    :try_start_38
    invoke-direct {v1}, Lbsh/Interpreter;->Line()Z
    :try_end_3b
    .catch Lbsh/ParseException; {:try_start_38 .. :try_end_3b} :catch_96
    .catch Lbsh/InterpreterError; {:try_start_38 .. :try_end_3b} :catch_22b
    .catch Lbsh/TargetError; {:try_start_38 .. :try_end_3b} :catch_21e
    .catch Lbsh/EvalError; {:try_start_38 .. :try_end_3b} :catch_215
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_212
    .catch Lbsh/TokenMgrError; {:try_start_38 .. :try_end_3b} :catch_20f
    .catchall {:try_start_38 .. :try_end_3b} :catchall_a8

    move-result v5

    :try_start_3c
    invoke-direct {v1}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v2

    invoke-virtual {v2}, Lbsh/JJTParserState;->nodeArity()I

    move-result v2

    if-lez v2, :cond_100

    invoke-direct {v1}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v2

    invoke-virtual {v2}, Lbsh/JJTParserState;->rootNode()Lbsh/Node;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lbsh/SimpleNode;

    move-object v4, v0
    :try_end_52
    .catch Lbsh/ParseException; {:try_start_3c .. :try_end_52} :catch_96
    .catch Lbsh/InterpreterError; {:try_start_3c .. :try_end_52} :catch_22b
    .catch Lbsh/TargetError; {:try_start_3c .. :try_end_52} :catch_224
    .catch Lbsh/EvalError; {:try_start_3c .. :try_end_52} :catch_21a
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_52} :catch_212
    .catch Lbsh/TokenMgrError; {:try_start_3c .. :try_end_52} :catch_20f
    .catchall {:try_start_3c .. :try_end_52} :catchall_a8

    :try_start_52
    invoke-virtual {v4, p3}, Lbsh/SimpleNode;->setSourceFile(Ljava/lang/String;)V

    sget-boolean v2, Lbsh/Interpreter;->TRACE:Z

    if-eqz v2, :cond_73

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "// "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v4}, Lbsh/SimpleNode;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbsh/Interpreter;->println(Ljava/lang/Object;)V

    :cond_73
    invoke-virtual {v4, v6, v1}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6}, Lbsh/CallStack;->depth()I

    move-result v2

    if-le v2, v10, :cond_bd

    new-instance v2, Lbsh/InterpreterError;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Callstack growing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_96
    .catch Lbsh/ParseException; {:try_start_52 .. :try_end_96} :catch_96
    .catch Lbsh/InterpreterError; {:try_start_52 .. :try_end_96} :catch_116
    .catch Lbsh/TargetError; {:try_start_52 .. :try_end_96} :catch_141
    .catch Lbsh/EvalError; {:try_start_52 .. :try_end_96} :catch_17b
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_96} :catch_1b8
    .catch Lbsh/TokenMgrError; {:try_start_52 .. :try_end_96} :catch_1e7
    .catchall {:try_start_52 .. :try_end_96} :catchall_a8

    :catch_96
    move-exception v2

    :try_start_97
    sget-boolean v3, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v3, :cond_a4

    sget-boolean v3, Lbsh/Interpreter;->DEBUG:Z

    invoke-virtual {v2, v3}, Lbsh/ParseException;->getMessage(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    :cond_a4
    invoke-virtual {v2, p3}, Lbsh/ParseException;->setErrorSourceFile(Ljava/lang/String;)V

    throw v2
    :try_end_a8
    .catchall {:try_start_97 .. :try_end_a8} :catchall_a8

    :catchall_a8
    move-exception v2

    invoke-direct {v1}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v1

    invoke-virtual {v1}, Lbsh/JJTParserState;->reset()V

    invoke-virtual {v6}, Lbsh/CallStack;->depth()I

    move-result v1

    if-le v1, v10, :cond_bc

    invoke-virtual {v6}, Lbsh/CallStack;->clear()V

    invoke-virtual {v6, p2}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    :cond_bc
    throw v2

    :cond_bd
    :try_start_bd
    instance-of v2, v3, Lbsh/ReturnControl;

    if-eqz v2, :cond_dc

    move-object v0, v3

    check-cast v0, Lbsh/ReturnControl;

    move-object v2, v0

    iget-object v3, v2, Lbsh/ReturnControl;->value:Ljava/lang/Object;
    :try_end_c7
    .catch Lbsh/ParseException; {:try_start_bd .. :try_end_c7} :catch_96
    .catch Lbsh/InterpreterError; {:try_start_bd .. :try_end_c7} :catch_116
    .catch Lbsh/TargetError; {:try_start_bd .. :try_end_c7} :catch_141
    .catch Lbsh/EvalError; {:try_start_bd .. :try_end_c7} :catch_17b
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c7} :catch_1b8
    .catch Lbsh/TokenMgrError; {:try_start_bd .. :try_end_c7} :catch_1e7
    .catchall {:try_start_bd .. :try_end_c7} :catchall_a8

    invoke-direct {v1}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v1

    invoke-virtual {v1}, Lbsh/JJTParserState;->reset()V

    invoke-virtual {v6}, Lbsh/CallStack;->depth()I

    move-result v1

    if-le v1, v10, :cond_33

    invoke-virtual {v6}, Lbsh/CallStack;->clear()V

    invoke-virtual {v6, p2}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    goto/16 :goto_33

    :cond_dc
    :try_start_dc
    iget-boolean v2, v1, Lbsh/Interpreter;->showResults:Z

    if-eqz v2, :cond_100

    sget-object v2, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq v3, v2, :cond_100

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "<"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v7, ">"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbsh/Interpreter;->println(Ljava/lang/Object;)V
    :try_end_100
    .catch Lbsh/ParseException; {:try_start_dc .. :try_end_100} :catch_96
    .catch Lbsh/InterpreterError; {:try_start_dc .. :try_end_100} :catch_116
    .catch Lbsh/TargetError; {:try_start_dc .. :try_end_100} :catch_141
    .catch Lbsh/EvalError; {:try_start_dc .. :try_end_100} :catch_17b
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_100} :catch_1b8
    .catch Lbsh/TokenMgrError; {:try_start_dc .. :try_end_100} :catch_1e7
    .catchall {:try_start_dc .. :try_end_100} :catchall_a8

    :cond_100
    invoke-direct {v1}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v2

    invoke-virtual {v2}, Lbsh/JJTParserState;->reset()V

    invoke-virtual {v6}, Lbsh/CallStack;->depth()I

    move-result v2

    if-le v2, v10, :cond_236

    invoke-virtual {v6}, Lbsh/CallStack;->clear()V

    invoke-virtual {v6, p2}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    move v4, v5

    goto/16 :goto_31

    :catch_116
    move-exception v2

    :goto_117
    :try_start_117
    invoke-virtual {v2}, Lbsh/InterpreterError;->printStackTrace()V

    new-instance v3, Lbsh/EvalError;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Sourced file: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, " internal Error: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Lbsh/InterpreterError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v4, v6}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v3

    :catch_141
    move-exception v2

    move v11, v5

    move-object v5, v3

    move v3, v11

    :goto_145
    invoke-virtual {v2}, Lbsh/TargetError;->getNode()Lbsh/SimpleNode;

    move-result-object v7

    if-nez v7, :cond_14e

    invoke-virtual {v2, v4}, Lbsh/TargetError;->setNode(Lbsh/SimpleNode;)V

    :cond_14e
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Sourced file: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lbsh/TargetError;->reThrow(Ljava/lang/String;)V
    :try_end_164
    .catchall {:try_start_117 .. :try_end_164} :catchall_a8

    invoke-direct {v1}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v2

    invoke-virtual {v2}, Lbsh/JJTParserState;->reset()V

    invoke-virtual {v6}, Lbsh/CallStack;->depth()I

    move-result v2

    if-le v2, v10, :cond_232

    invoke-virtual {v6}, Lbsh/CallStack;->clear()V

    invoke-virtual {v6, p2}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    move v4, v3

    move-object v3, v5

    goto/16 :goto_31

    :catch_17b
    move-exception v2

    :goto_17c
    :try_start_17c
    sget-boolean v7, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v7, :cond_183

    invoke-virtual {v2}, Lbsh/EvalError;->printStackTrace()V

    :cond_183
    invoke-virtual {v2}, Lbsh/EvalError;->getNode()Lbsh/SimpleNode;

    move-result-object v7

    if-nez v7, :cond_18c

    invoke-virtual {v2, v4}, Lbsh/EvalError;->setNode(Lbsh/SimpleNode;)V

    :cond_18c
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Sourced file: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lbsh/EvalError;->reThrow(Ljava/lang/String;)V
    :try_end_1a2
    .catchall {:try_start_17c .. :try_end_1a2} :catchall_a8

    invoke-direct {v1}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v2

    invoke-virtual {v2}, Lbsh/JJTParserState;->reset()V

    invoke-virtual {v6}, Lbsh/CallStack;->depth()I

    move-result v2

    if-le v2, v10, :cond_22f

    invoke-virtual {v6}, Lbsh/CallStack;->clear()V

    invoke-virtual {v6, p2}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    move v4, v5

    goto/16 :goto_31

    :catch_1b8
    move-exception v2

    :goto_1b9
    :try_start_1b9
    sget-boolean v3, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v3, :cond_1c0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1c0
    new-instance v3, Lbsh/EvalError;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Sourced file: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, " unknown error: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v4, v6}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v3

    :catch_1e7
    move-exception v2

    :goto_1e8
    new-instance v3, Lbsh/EvalError;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Sourced file: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, " Token Parsing Error: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Lbsh/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v4, v6}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v3
    :try_end_20f
    .catchall {:try_start_1b9 .. :try_end_20f} :catchall_a8

    :catch_20f
    move-exception v2

    move-object v4, v9

    goto :goto_1e8

    :catch_212
    move-exception v2

    move-object v4, v9

    goto :goto_1b9

    :catch_215
    move-exception v2

    move v5, v4

    move-object v4, v9

    goto/16 :goto_17c

    :catch_21a
    move-exception v2

    move-object v4, v9

    goto/16 :goto_17c

    :catch_21e
    move-exception v2

    move-object v5, v3

    move v3, v4

    move-object v4, v9

    goto/16 :goto_145

    :catch_224
    move-exception v2

    move-object v4, v9

    move v11, v5

    move-object v5, v3

    move v3, v11

    goto/16 :goto_145

    :catch_22b
    move-exception v2

    move-object v4, v9

    goto/16 :goto_117

    :cond_22f
    move v4, v5

    goto/16 :goto_31

    :cond_232
    move v4, v3

    move-object v3, v5

    goto/16 :goto_31

    :cond_236
    move v4, v5

    goto/16 :goto_31
.end method

.method public eval(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    sget-boolean v0, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "eval(String): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_1a
    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {p0, p1, v0}, Lbsh/Interpreter;->eval(Ljava/lang/String;Lbsh/NameSpace;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public eval(Ljava/lang/String;Lbsh/NameSpace;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :goto_8
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "inline evaluation of: ``"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-direct {p0, p1}, Lbsh/Interpreter;->showEvalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1}, Lbsh/Interpreter;->eval(Ljava/io/Reader;Lbsh/NameSpace;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2f
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {v0, p1, p0}, Lbsh/NameSpace;->get(Ljava/lang/String;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    return-object v0

    :catch_b
    move-exception v0

    sget-object v1, Lbsh/SimpleNode;->JAVACODE:Lbsh/SimpleNode;

    new-instance v2, Lbsh/CallStack;

    invoke-direct {v2}, Lbsh/CallStack;-><init>()V

    invoke-virtual {v0, v1, v2}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0
.end method

.method public getClassManager()Lbsh/BshClassManager;
    .registers 2

    invoke-virtual {p0}, Lbsh/Interpreter;->getNameSpace()Lbsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/NameSpace;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    return-object v0
.end method

.method public getErr()Ljava/io/PrintStream;
    .registers 2

    iget-object v0, p0, Lbsh/Interpreter;->err:Ljava/io/PrintStream;

    return-object v0
.end method

.method public getIn()Ljava/io/Reader;
    .registers 2

    iget-object v0, p0, Lbsh/Interpreter;->in:Ljava/io/Reader;

    return-object v0
.end method

.method public getInterface(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {v0, p0}, Lbsh/NameSpace;->getThis(Lbsh/Interpreter;)Lbsh/This;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsh/This;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_9
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    return-object v0

    :catch_b
    move-exception v0

    sget-object v1, Lbsh/SimpleNode;->JAVACODE:Lbsh/SimpleNode;

    new-instance v2, Lbsh/CallStack;

    invoke-direct {v2}, Lbsh/CallStack;-><init>()V

    invoke-virtual {v0, v1, v2}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0
.end method

.method public getNameSpace()Lbsh/NameSpace;
    .registers 2

    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    return-object v0
.end method

.method public getOut()Ljava/io/PrintStream;
    .registers 2

    iget-object v0, p0, Lbsh/Interpreter;->out:Ljava/io/PrintStream;

    return-object v0
.end method

.method public getParent()Lbsh/Interpreter;
    .registers 2

    iget-object v0, p0, Lbsh/Interpreter;->parent:Lbsh/Interpreter;

    return-object v0
.end method

.method public getShowResults()Z
    .registers 2

    iget-boolean v0, p0, Lbsh/Interpreter;->showResults:Z

    return v0
.end method

.method public getSourceFileInfo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbsh/Interpreter;->sourceFileInfo:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lbsh/Interpreter;->sourceFileInfo:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "<unknown source>"

    goto :goto_6
.end method

.method public getStrictJava()Z
    .registers 2

    iget-boolean v0, p0, Lbsh/Interpreter;->strictJava:Z

    return v0
.end method

.method getu(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    :try_start_0
    invoke-virtual {p0, p1}, Lbsh/Interpreter;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method loadRCFiles()V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".bshrc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {p0, v0, v1}, Lbsh/Interpreter;->source(Ljava/lang/String;Lbsh/NameSpace;)Ljava/lang/Object;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    :cond_24
    :goto_24
    return-void

    :catch_25
    move-exception v0

    sget-boolean v1, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v1, :cond_24

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not find rc file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    goto :goto_24
.end method

.method public pathToFile(Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_30

    const-string v0, "bsh.cwd"

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->getu(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :cond_30
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public final print(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lbsh/Interpreter;->console:Lbsh/ConsoleInterface;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lbsh/Interpreter;->console:Lbsh/ConsoleInterface;

    invoke-interface {v0, p1}, Lbsh/ConsoleInterface;->print(Ljava/lang/Object;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lbsh/Interpreter;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    iget-object v0, p0, Lbsh/Interpreter;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    goto :goto_9
.end method

.method public final println(Ljava/lang/Object;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lbsh/Interpreter;->systemLineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .registers 9

    const/4 v3, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lbsh/Interpreter;->evalOnly:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bsh Interpreter: No stream"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-boolean v0, p0, Lbsh/Interpreter;->interactive:Z

    if-eqz v0, :cond_17

    :try_start_12
    const-string v0, "printBanner();"

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_17
    .catch Lbsh/EvalError; {:try_start_12 .. :try_end_17} :catch_2d

    :cond_17
    :goto_17
    new-instance v4, Lbsh/CallStack;

    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-direct {v4, v0}, Lbsh/CallStack;-><init>(Lbsh/NameSpace;)V

    move v2, v3

    :cond_1f
    :goto_1f
    if-eqz v2, :cond_34

    iget-boolean v0, p0, Lbsh/Interpreter;->interactive:Z

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lbsh/Interpreter;->exitOnEOF:Z

    if-eqz v0, :cond_2c

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    :cond_2c
    return-void

    :catch_2d
    move-exception v0

    const-string v0, "BeanShell 2.0b4 - by Pat Niemeyer (pat@pat.net)"

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->println(Ljava/lang/Object;)V

    goto :goto_17

    :cond_34
    :try_start_34
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    invoke-static {}, Ljava/lang/Thread;->yield()V

    iget-boolean v0, p0, Lbsh/Interpreter;->interactive:Z

    if-eqz v0, :cond_4c

    invoke-direct {p0}, Lbsh/Interpreter;->getBshPrompt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->print(Ljava/lang/Object;)V

    :cond_4c
    invoke-direct {p0}, Lbsh/Interpreter;->Line()Z
    :try_end_4f
    .catch Lbsh/ParseException; {:try_start_34 .. :try_end_4f} :catch_90
    .catch Lbsh/InterpreterError; {:try_start_34 .. :try_end_4f} :catch_11f
    .catch Lbsh/TargetError; {:try_start_34 .. :try_end_4f} :catch_15d
    .catch Lbsh/EvalError; {:try_start_34 .. :try_end_4f} :catch_1a6
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_4f} :catch_21e
    .catch Lbsh/TokenMgrError; {:try_start_34 .. :try_end_4f} :catch_25c
    .catchall {:try_start_34 .. :try_end_4f} :catchall_207

    move-result v2

    :try_start_50
    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/JJTParserState;->nodeArity()I

    move-result v0

    if-lez v0, :cond_108

    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/JJTParserState;->rootNode()Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    sget-boolean v5, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v5, :cond_6d

    const-string v5, ">"

    invoke-virtual {v0, v5}, Lbsh/SimpleNode;->dump(Ljava/lang/String;)V

    :cond_6d
    invoke-virtual {v0, v4, p0}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4}, Lbsh/CallStack;->depth()I

    move-result v5

    if-le v5, v1, :cond_d7

    new-instance v0, Lbsh/InterpreterError;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Callstack growing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_90
    .catch Lbsh/ParseException; {:try_start_50 .. :try_end_90} :catch_90
    .catch Lbsh/InterpreterError; {:try_start_50 .. :try_end_90} :catch_2ab
    .catch Lbsh/TargetError; {:try_start_50 .. :try_end_90} :catch_15d
    .catch Lbsh/EvalError; {:try_start_50 .. :try_end_90} :catch_2a5
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_90} :catch_29f
    .catch Lbsh/TokenMgrError; {:try_start_50 .. :try_end_90} :catch_29a
    .catchall {:try_start_50 .. :try_end_90} :catchall_207

    :catch_90
    move-exception v0

    :try_start_91
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Parser Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-boolean v6, Lbsh/Interpreter;->DEBUG:Z

    invoke-virtual {v0, v6}, Lbsh/ParseException;->getMessage(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    sget-boolean v5, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v5, :cond_b4

    invoke-virtual {v0}, Lbsh/ParseException;->printStackTrace()V

    :cond_b4
    iget-boolean v0, p0, Lbsh/Interpreter;->interactive:Z

    if-nez v0, :cond_b9

    move v2, v1

    :cond_b9
    iget-object v0, p0, Lbsh/Interpreter;->parser:Lbsh/Parser;

    iget-object v5, p0, Lbsh/Interpreter;->in:Ljava/io/Reader;

    invoke-virtual {v0, v5}, Lbsh/Parser;->reInitInput(Ljava/io/Reader;)V
    :try_end_c0
    .catchall {:try_start_91 .. :try_end_c0} :catchall_207

    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/JJTParserState;->reset()V

    invoke-virtual {v4}, Lbsh/CallStack;->depth()I

    move-result v0

    if-le v0, v1, :cond_1f

    invoke-virtual {v4}, Lbsh/CallStack;->clear()V

    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {v4, v0}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    goto/16 :goto_1f

    :cond_d7
    :try_start_d7
    instance-of v5, v0, Lbsh/ReturnControl;

    if-eqz v5, :cond_df

    check-cast v0, Lbsh/ReturnControl;

    iget-object v0, v0, Lbsh/ReturnControl;->value:Ljava/lang/Object;

    :cond_df
    sget-object v5, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq v0, v5, :cond_108

    const-string v5, "$_"

    invoke-virtual {p0, v5, v0}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v5, p0, Lbsh/Interpreter;->showResults:Z

    if-eqz v5, :cond_108

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v5, ">"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->println(Ljava/lang/Object;)V
    :try_end_108
    .catch Lbsh/ParseException; {:try_start_d7 .. :try_end_108} :catch_90
    .catch Lbsh/InterpreterError; {:try_start_d7 .. :try_end_108} :catch_2ab
    .catch Lbsh/TargetError; {:try_start_d7 .. :try_end_108} :catch_15d
    .catch Lbsh/EvalError; {:try_start_d7 .. :try_end_108} :catch_2a5
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_108} :catch_29f
    .catch Lbsh/TokenMgrError; {:try_start_d7 .. :try_end_108} :catch_29a
    .catchall {:try_start_d7 .. :try_end_108} :catchall_207

    :cond_108
    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/JJTParserState;->reset()V

    invoke-virtual {v4}, Lbsh/CallStack;->depth()I

    move-result v0

    if-le v0, v1, :cond_1f

    invoke-virtual {v4}, Lbsh/CallStack;->clear()V

    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {v4, v0}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    goto/16 :goto_1f

    :catch_11f
    move-exception v0

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    :goto_123
    :try_start_123
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Internal Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Lbsh/InterpreterError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lbsh/InterpreterError;->printStackTrace()V

    iget-boolean v2, p0, Lbsh/Interpreter;->interactive:Z
    :try_end_142
    .catchall {:try_start_123 .. :try_end_142} :catchall_207

    if-nez v2, :cond_145

    move v0, v1

    :cond_145
    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v2

    invoke-virtual {v2}, Lbsh/JJTParserState;->reset()V

    invoke-virtual {v4}, Lbsh/CallStack;->depth()I

    move-result v2

    if-le v2, v1, :cond_2b1

    invoke-virtual {v4}, Lbsh/CallStack;->clear()V

    iget-object v2, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {v4, v2}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    move v2, v0

    goto/16 :goto_1f

    :catch_15d
    move-exception v0

    :try_start_15e
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "// Uncaught Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lbsh/TargetError;->inNativeCode()Z

    move-result v5

    if-eqz v5, :cond_181

    sget-boolean v5, Lbsh/Interpreter;->DEBUG:Z

    iget-object v6, p0, Lbsh/Interpreter;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v5, v6}, Lbsh/TargetError;->printStackTrace(ZLjava/io/PrintStream;)V

    :cond_181
    iget-boolean v5, p0, Lbsh/Interpreter;->interactive:Z

    if-nez v5, :cond_186

    move v2, v1

    :cond_186
    const-string v5, "$_e"

    invoke-virtual {v0}, Lbsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_18f
    .catchall {:try_start_15e .. :try_end_18f} :catchall_207

    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/JJTParserState;->reset()V

    invoke-virtual {v4}, Lbsh/CallStack;->depth()I

    move-result v0

    if-le v0, v1, :cond_1f

    invoke-virtual {v4}, Lbsh/CallStack;->clear()V

    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {v4, v0}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    goto/16 :goto_1f

    :catch_1a6
    move-exception v0

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    :goto_1aa
    :try_start_1aa
    iget-boolean v5, p0, Lbsh/Interpreter;->interactive:Z

    if-eqz v5, :cond_1ec

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "EvalError: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Lbsh/EvalError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    :goto_1c8
    sget-boolean v5, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v5, :cond_1cf

    invoke-virtual {v2}, Lbsh/EvalError;->printStackTrace()V

    :cond_1cf
    iget-boolean v2, p0, Lbsh/Interpreter;->interactive:Z
    :try_end_1d1
    .catchall {:try_start_1aa .. :try_end_1d1} :catchall_207

    if-nez v2, :cond_1d4

    move v0, v1

    :cond_1d4
    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v2

    invoke-virtual {v2}, Lbsh/JJTParserState;->reset()V

    invoke-virtual {v4}, Lbsh/CallStack;->depth()I

    move-result v2

    if-le v2, v1, :cond_2b1

    invoke-virtual {v4}, Lbsh/CallStack;->clear()V

    iget-object v2, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {v4, v2}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    move v2, v0

    goto/16 :goto_1f

    :cond_1ec
    :try_start_1ec
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "EvalError: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Lbsh/EvalError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V
    :try_end_206
    .catchall {:try_start_1ec .. :try_end_206} :catchall_207

    goto :goto_1c8

    :catchall_207
    move-exception v0

    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v2

    invoke-virtual {v2}, Lbsh/JJTParserState;->reset()V

    invoke-virtual {v4}, Lbsh/CallStack;->depth()I

    move-result v2

    if-le v2, v1, :cond_21d

    invoke-virtual {v4}, Lbsh/CallStack;->clear()V

    iget-object v1, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {v4, v1}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    :cond_21d
    throw v0

    :catch_21e
    move-exception v0

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    :goto_222
    :try_start_222
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unknown error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    sget-boolean v5, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v5, :cond_23f

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_23f
    iget-boolean v2, p0, Lbsh/Interpreter;->interactive:Z
    :try_end_241
    .catchall {:try_start_222 .. :try_end_241} :catchall_207

    if-nez v2, :cond_244

    move v0, v1

    :cond_244
    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v2

    invoke-virtual {v2}, Lbsh/JJTParserState;->reset()V

    invoke-virtual {v4}, Lbsh/CallStack;->depth()I

    move-result v2

    if-le v2, v1, :cond_2b1

    invoke-virtual {v4}, Lbsh/CallStack;->clear()V

    iget-object v2, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {v4, v2}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    move v2, v0

    goto/16 :goto_1f

    :catch_25c
    move-exception v0

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    :goto_260
    :try_start_260
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Error parsing input: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbsh/Interpreter;->error(Ljava/lang/Object;)V

    iget-object v2, p0, Lbsh/Interpreter;->parser:Lbsh/Parser;

    iget-object v5, p0, Lbsh/Interpreter;->in:Ljava/io/Reader;

    invoke-virtual {v2, v5}, Lbsh/Parser;->reInitTokenInput(Ljava/io/Reader;)V

    iget-boolean v2, p0, Lbsh/Interpreter;->interactive:Z
    :try_end_27f
    .catchall {:try_start_260 .. :try_end_27f} :catchall_207

    if-nez v2, :cond_282

    move v0, v1

    :cond_282
    invoke-direct {p0}, Lbsh/Interpreter;->get_jjtree()Lbsh/JJTParserState;

    move-result-object v2

    invoke-virtual {v2}, Lbsh/JJTParserState;->reset()V

    invoke-virtual {v4}, Lbsh/CallStack;->depth()I

    move-result v2

    if-le v2, v1, :cond_2b1

    invoke-virtual {v4}, Lbsh/CallStack;->clear()V

    iget-object v2, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {v4, v2}, Lbsh/CallStack;->push(Lbsh/NameSpace;)V

    move v2, v0

    goto/16 :goto_1f

    :catch_29a
    move-exception v0

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    goto :goto_260

    :catch_29f
    move-exception v0

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    goto/16 :goto_222

    :catch_2a5
    move-exception v0

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    goto/16 :goto_1aa

    :catch_2ab
    move-exception v0

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    goto/16 :goto_123

    :cond_2b1
    move v2, v0

    goto/16 :goto_1f
.end method

.method public set(Ljava/lang/String;D)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, p2, p3}, Lbsh/Primitive;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/String;F)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, p2}, Lbsh/Primitive;-><init>(F)V

    invoke-virtual {p0, p1, v0}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, p2}, Lbsh/Primitive;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/String;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, p2, p3}, Lbsh/Primitive;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    if-nez p2, :cond_4

    sget-object p2, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    :cond_4
    new-instance v1, Lbsh/CallStack;

    invoke-direct {v1}, Lbsh/CallStack;-><init>()V

    :try_start_9
    invoke-static {p1}, Lbsh/Name;->isCompound(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {v0, p1}, Lbsh/NameSpace;->getNameResolver(Ljava/lang/String;)Lbsh/Name;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lbsh/Name;->toLHS(Lbsh/CallStack;Lbsh/Interpreter;)Lbsh/LHS;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2}, Lbsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_24
    .catch Lbsh/UtilEvalError; {:try_start_9 .. :try_end_24} :catch_25

    goto :goto_1d

    :catch_25
    move-exception v0

    sget-object v2, Lbsh/SimpleNode;->JAVACODE:Lbsh/SimpleNode;

    invoke-virtual {v0, v2, v1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object v0

    throw v0
.end method

.method public set(Ljava/lang/String;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, p2}, Lbsh/Primitive;-><init>(Z)V

    invoke-virtual {p0, p1, v0}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .registers 3

    invoke-virtual {p0}, Lbsh/Interpreter;->getClassManager()Lbsh/BshClassManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsh/BshClassManager;->setClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public setConsole(Lbsh/ConsoleInterface;)V
    .registers 3

    iput-object p1, p0, Lbsh/Interpreter;->console:Lbsh/ConsoleInterface;

    const-string v0, "bsh.console"

    invoke-virtual {p0, v0, p1}, Lbsh/Interpreter;->setu(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lbsh/ConsoleInterface;->getOut()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->setOut(Ljava/io/PrintStream;)V

    invoke-interface {p1}, Lbsh/ConsoleInterface;->getErr()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/Interpreter;->setErr(Ljava/io/PrintStream;)V

    return-void
.end method

.method public setErr(Ljava/io/PrintStream;)V
    .registers 2

    iput-object p1, p0, Lbsh/Interpreter;->err:Ljava/io/PrintStream;

    return-void
.end method

.method public setExitOnEOF(Z)V
    .registers 2

    iput-boolean p1, p0, Lbsh/Interpreter;->exitOnEOF:Z

    return-void
.end method

.method public setNameSpace(Lbsh/NameSpace;)V
    .registers 2

    iput-object p1, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    return-void
.end method

.method public setOut(Ljava/io/PrintStream;)V
    .registers 2

    iput-object p1, p0, Lbsh/Interpreter;->out:Ljava/io/PrintStream;

    return-void
.end method

.method public setShowResults(Z)V
    .registers 2

    iput-boolean p1, p0, Lbsh/Interpreter;->showResults:Z

    return-void
.end method

.method public setStrictJava(Z)V
    .registers 2

    iput-boolean p1, p0, Lbsh/Interpreter;->strictJava:Z

    return-void
.end method

.method setu(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public source(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lbsh/EvalError;
        }
    .end annotation

    iget-object v0, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {p0, p1, v0}, Lbsh/Interpreter;->source(Ljava/lang/String;Lbsh/NameSpace;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public source(Ljava/lang/String;Lbsh/NameSpace;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lbsh/EvalError;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lbsh/Interpreter;->pathToFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sget-boolean v1, Lbsh/Interpreter;->DEBUG:Z

    if-eqz v1, :cond_1e

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Sourcing file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_1e
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_28
    invoke-virtual {p0, v1, p2, p1}, Lbsh/Interpreter;->eval(Ljava/io/Reader;Lbsh/NameSpace;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_30

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    return-object v0

    :catchall_30
    move-exception v0

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    throw v0
.end method

.method public unset(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    new-instance v0, Lbsh/CallStack;

    invoke-direct {v0}, Lbsh/CallStack;-><init>()V

    :try_start_5
    iget-object v1, p0, Lbsh/Interpreter;->globalNameSpace:Lbsh/NameSpace;

    invoke-virtual {v1, p1}, Lbsh/NameSpace;->getNameResolver(Ljava/lang/String;)Lbsh/Name;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lbsh/Name;->toLHS(Lbsh/CallStack;Lbsh/Interpreter;)Lbsh/LHS;

    move-result-object v0

    iget v1, v0, Lbsh/LHS;->type:I

    if-eqz v1, :cond_45

    new-instance v0, Lbsh/EvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t unset, not a variable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lbsh/SimpleNode;->JAVACODE:Lbsh/SimpleNode;

    new-instance v3, Lbsh/CallStack;

    invoke-direct {v3}, Lbsh/CallStack;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v0
    :try_end_33
    .catch Lbsh/UtilEvalError; {:try_start_5 .. :try_end_33} :catch_33

    :catch_33
    move-exception v0

    new-instance v1, Lbsh/EvalError;

    invoke-virtual {v0}, Lbsh/UtilEvalError;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lbsh/SimpleNode;->JAVACODE:Lbsh/SimpleNode;

    new-instance v3, Lbsh/CallStack;

    invoke-direct {v3}, Lbsh/CallStack;-><init>()V

    invoke-direct {v1, v0, v2, v3}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw v1

    :cond_45
    :try_start_45
    iget-object v0, v0, Lbsh/LHS;->nameSpace:Lbsh/NameSpace;

    invoke-virtual {v0, p1}, Lbsh/NameSpace;->unsetVariable(Ljava/lang/String;)V
    :try_end_4a
    .catch Lbsh/UtilEvalError; {:try_start_45 .. :try_end_4a} :catch_33

    return-void
.end method
