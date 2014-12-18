.class public Lbsh/Parser;
.super Ljava/lang/Object;

# interfaces
.implements Lbsh/ParserConstants;
.implements Lbsh/ParserTreeConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/Parser$1;,
        Lbsh/Parser$LookaheadSuccess;
    }
.end annotation


# instance fields
.field jj_input_stream:Lbsh/JavaCharStream;

.field private jj_la:I

.field private jj_lastpos:Lbsh/Token;

.field private final jj_ls:Lbsh/Parser$LookaheadSuccess;

.field public jj_nt:Lbsh/Token;

.field private jj_ntk:I

.field private jj_scanpos:Lbsh/Token;

.field private jj_semLA:Z

.field protected jjtree:Lbsh/JJTParserState;

.field public lookingAhead:Z

.field retainComments:Z

.field public token:Lbsh/Token;

.field public token_source:Lbsh/ParserTokenManager;


# direct methods
.method public constructor <init>(Lbsh/ParserTokenManager;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbsh/JJTParserState;

    invoke-direct {v0}, Lbsh/JJTParserState;-><init>()V

    iput-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    iput-boolean v1, p0, Lbsh/Parser;->retainComments:Z

    iput-boolean v1, p0, Lbsh/Parser;->lookingAhead:Z

    new-instance v0, Lbsh/Parser$LookaheadSuccess;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbsh/Parser$LookaheadSuccess;-><init>(Lbsh/Parser$1;)V

    iput-object v0, p0, Lbsh/Parser;->jj_ls:Lbsh/Parser$LookaheadSuccess;

    iput-object p1, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    new-instance v0, Lbsh/Token;

    invoke-direct {v0}, Lbsh/Token;-><init>()V

    iput-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    const/4 v0, -0x1

    iput v0, p0, Lbsh/Parser;->jj_ntk:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbsh/JJTParserState;

    invoke-direct {v0}, Lbsh/JJTParserState;-><init>()V

    iput-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    iput-boolean v1, p0, Lbsh/Parser;->retainComments:Z

    iput-boolean v1, p0, Lbsh/Parser;->lookingAhead:Z

    new-instance v0, Lbsh/Parser$LookaheadSuccess;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbsh/Parser$LookaheadSuccess;-><init>(Lbsh/Parser$1;)V

    iput-object v0, p0, Lbsh/Parser;->jj_ls:Lbsh/Parser$LookaheadSuccess;

    new-instance v0, Lbsh/JavaCharStream;

    invoke-direct {v0, p1, v2, v2}, Lbsh/JavaCharStream;-><init>(Ljava/io/InputStream;II)V

    iput-object v0, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    new-instance v0, Lbsh/ParserTokenManager;

    iget-object v1, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    invoke-direct {v0, v1}, Lbsh/ParserTokenManager;-><init>(Lbsh/JavaCharStream;)V

    iput-object v0, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    new-instance v0, Lbsh/Token;

    invoke-direct {v0}, Lbsh/Token;-><init>()V

    iput-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    const/4 v0, -0x1

    iput v0, p0, Lbsh/Parser;->jj_ntk:I

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbsh/JJTParserState;

    invoke-direct {v0}, Lbsh/JJTParserState;-><init>()V

    iput-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    iput-boolean v1, p0, Lbsh/Parser;->retainComments:Z

    iput-boolean v1, p0, Lbsh/Parser;->lookingAhead:Z

    new-instance v0, Lbsh/Parser$LookaheadSuccess;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbsh/Parser$LookaheadSuccess;-><init>(Lbsh/Parser$1;)V

    iput-object v0, p0, Lbsh/Parser;->jj_ls:Lbsh/Parser$LookaheadSuccess;

    new-instance v0, Lbsh/JavaCharStream;

    invoke-direct {v0, p1, v2, v2}, Lbsh/JavaCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v0, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    new-instance v0, Lbsh/ParserTokenManager;

    iget-object v1, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    invoke-direct {v0, v1}, Lbsh/ParserTokenManager;-><init>(Lbsh/JavaCharStream;)V

    iput-object v0, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    new-instance v0, Lbsh/Token;

    invoke-direct {v0}, Lbsh/Token;-><init>()V

    iput-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    const/4 v0, -0x1

    iput v0, p0, Lbsh/Parser;->jj_ntk:I

    return-void
.end method

.method private final jj_2_1(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_1()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_10(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_10()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_11(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_11()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_12(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_12()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_13(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_13()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_14(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_14()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_15(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_15()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_16(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_16()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_17(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_17()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_18(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_18()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_19(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_19()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_2(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_2()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_20(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_20()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_21(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_21()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_22(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_22()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_23(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_23()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_24(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_24()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_25(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_25()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_26(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_26()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_27(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_27()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_28(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_28()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_29(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_29()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_3(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_3()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_30(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_30()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_31(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_31()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_4(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_4()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_5(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_5()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_6(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_6()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_7(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_7()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_8(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_8()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_2_9(I)Z
    .registers 4

    const/4 v0, 0x1

    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :try_start_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_9()Z
    :try_end_c
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_12

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_f
.end method

.method private final jj_3R_100()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_130()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_101()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_37()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_102()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_103()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_104()Z
    .registers 3

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_16()Z

    move-result v1

    if-eqz v1, :cond_22

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_131()Z

    move-result v1

    if-eqz v1, :cond_22

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_132()Z

    move-result v1

    if-eqz v1, :cond_22

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_133()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private final jj_3R_105()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_129()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_106()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_134()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_107()Z
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_33()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_34()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_108()Z
    .registers 3

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_135()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_156()Z

    move-result v1

    if-eqz v1, :cond_12

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_12
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_109()Z
    .registers 3

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_5()Z

    move-result v1

    if-eqz v1, :cond_12

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_136()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private final jj_3R_110()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x4f

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_109()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_111()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x4f

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_112()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_113()Z
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x32

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x4a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_28
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_183()Z

    move-result v2

    if-eqz v2, :cond_28

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x4b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_114()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_45()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_184()Z

    move-result v1

    if-eqz v1, :cond_30

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_30
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_115()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x3b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_45()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_116()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x15

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_45()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x3b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_117()Z
    .registers 5

    const/16 v3, 0x4e

    const/4 v0, 0x1

    const/16 v1, 0x1e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_185()Z

    move-result v2

    if-eqz v2, :cond_1e

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_1e
    invoke-direct {p0, v3}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_186()Z

    move-result v2

    if-eqz v2, :cond_2e

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_2e
    invoke-direct {p0, v3}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_187()Z

    move-result v2

    if-eqz v2, :cond_3e

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_3e
    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_45()Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v0, 0x0

    goto :goto_b
.end method

.method private final jj_3R_118()Z
    .registers 3

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_30()Z

    move-result v1

    if-eqz v1, :cond_12

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_137()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private final jj_3R_119()Z
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x45

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_16

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_16
    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_120()Z
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x13

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x45

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_16

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_16
    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_121()Z
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x2e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_188()Z

    move-result v2

    if-eqz v2, :cond_14

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_14
    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_122()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x33

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_38()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_123()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x35

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_124()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x38

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_38()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_10
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_189()Z

    move-result v1

    if-eqz v1, :cond_10

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_190()Z

    move-result v1

    if-eqz v1, :cond_24

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_24
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_125()Z
    .registers 2

    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_126()Z
    .registers 2

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_127()Z
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_42()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_128()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v1, 0x68

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_129()Z
    .registers 3

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_138()Z

    move-result v1

    if-eqz v1, :cond_3a

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_139()Z

    move-result v1

    if-eqz v1, :cond_3a

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_140()Z

    move-result v1

    if-eqz v1, :cond_3a

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_141()Z

    move-result v1

    if-eqz v1, :cond_3a

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_142()Z

    move-result v1

    if-eqz v1, :cond_3a

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_143()Z

    move-result v1

    if-eqz v1, :cond_3a

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_144()Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    :goto_39
    return v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_39
.end method

.method private final jj_3R_130()Z
    .registers 3

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_18()Z

    move-result v1

    if-eqz v1, :cond_12

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_145()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private final jj_3R_131()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x4c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x4d

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_132()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x50

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_146()Z

    move-result v1

    if-eqz v1, :cond_1c

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_1c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_133()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x4a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x4b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_134()Z
    .registers 3

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_147()Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_135()Z
    .registers 3

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_148()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_159()Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_136()Z
    .registers 2

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_137()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x1e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x59

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_45()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_138()Z
    .registers 2

    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_139()Z
    .registers 2

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_140()Z
    .registers 2

    const/16 v0, 0x42

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_141()Z
    .registers 2

    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_142()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_149()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_143()Z
    .registers 2

    const/16 v0, 0x29

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_144()Z
    .registers 2

    const/16 v0, 0x39

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_145()Z
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x28

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_151()Z

    move-result v2

    if-eqz v2, :cond_20

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_152()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_20
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_146()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_69()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_147()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x4f

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_148()Z
    .registers 3

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_153()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_162()Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_149()Z
    .registers 3

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_154()Z

    move-result v1

    if-eqz v1, :cond_12

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_155()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private final jj_3R_150()Z
    .registers 3

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_21()Z

    move-result v1

    if-eqz v1, :cond_12

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_157()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private final jj_3R_151()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_150()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_152()Z
    .registers 3

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_69()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_17()Z

    move-result v1

    if-eqz v1, :cond_12

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_12
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_153()Z
    .registers 3

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_158()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_165()Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_154()Z
    .registers 2

    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_155()Z
    .registers 2

    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_156()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x58

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x59

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_108()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_157()Z
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_160()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_160()Z

    move-result v2

    if-eqz v2, :cond_8

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_97()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_158()Z
    .registers 3

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_161()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_167()Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_159()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x60

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_16

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x61

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    :goto_15
    return v0

    :cond_16
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_148()Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v0, 0x0

    goto :goto_15
.end method

.method private final jj_3R_160()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x4c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v1, 0x4d

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_161()Z
    .registers 3

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_164()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_169()Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_162()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x62

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_16

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x63

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    :goto_15
    return v0

    :cond_16
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_153()Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v0, 0x0

    goto :goto_15
.end method

.method private final jj_3R_163()Z
    .registers 3

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_31()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_4()Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_164()Z
    .registers 3

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_166()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_171()Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_165()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x6c

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_16

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x6d

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    :goto_15
    return v0

    :cond_16
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_158()Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v0, 0x0

    goto :goto_15
.end method

.method private final jj_3R_166()Z
    .registers 3

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_168()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_179()Z

    move-result v1

    if-eqz v1, :cond_12

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_12
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_167()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x6e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_161()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_168()Z
    .registers 3

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_170()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_182()Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_169()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x6a

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_16

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x6b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    :goto_15
    return v0

    :cond_16
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_164()Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v0, 0x0

    goto :goto_15
.end method

.method private final jj_3R_170()Z
    .registers 3

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_178()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_192()Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_171()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x5a

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_16

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x5f

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    :goto_15
    return v0

    :cond_16
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_166()Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v0, 0x0

    goto :goto_15
.end method

.method private final jj_3R_172()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x19

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_173()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x21

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_76()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_174()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x36

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_76()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_175()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_38()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_176()Z
    .registers 3

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_180()Z

    move-result v1

    if-eqz v1, :cond_14

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_177()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x4f

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_176()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_178()Z
    .registers 3

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_181()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_200()Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_179()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x23

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_180()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x51

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_31()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_181()Z
    .registers 3

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_191()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_209()Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_182()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x54

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_52

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x55

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_52

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x52

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_52

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x53

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_52

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x5b

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_52

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x5c

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_52

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x5d

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_52

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x5e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_52

    :cond_51
    :goto_51
    return v0

    :cond_52
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_170()Z

    move-result v1

    if-nez v1, :cond_51

    const/4 v0, 0x0

    goto :goto_51
.end method

.method private final jj_3R_183()Z
    .registers 3

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_193()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_29()Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_184()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x17

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_45()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_185()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_194()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_186()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_187()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_195()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_188()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_189()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_109()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_38()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_190()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_38()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_191()Z
    .registers 3

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_196()Z

    move-result v1

    if-eqz v1, :cond_22

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_197()Z

    move-result v1

    if-eqz v1, :cond_22

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_198()Z

    move-result v1

    if-eqz v1, :cond_22

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_199()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private final jj_3R_192()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x70

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_3e

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x71

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_3e

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x72

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_3e

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x73

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_3e

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x74

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_3e

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x75

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    :cond_3d
    :goto_3d
    return v0

    :cond_3e
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_178()Z

    move-result v1

    if-nez v1, :cond_3d

    const/4 v0, 0x0

    goto :goto_3d
.end method

.method private final jj_3R_193()Z
    .registers 3

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_201()Z

    move-result v1

    if-eqz v1, :cond_12

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_202()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private final jj_3R_194()Z
    .registers 3

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_203()Z

    move-result v1

    if-eqz v1, :cond_12

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_204()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private final jj_3R_195()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_205()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_196()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x66

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_16

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x67

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    :goto_15
    return v0

    :cond_16
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_191()Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v0, 0x0

    goto :goto_15
.end method

.method private final jj_3R_197()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_206()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_198()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_207()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_199()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_208()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_200()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x66

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_16

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x67

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    :goto_15
    return v0

    :cond_16
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_181()Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v0, 0x0

    goto :goto_15
.end method

.method private final jj_3R_201()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x59

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_202()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x14

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v1, 0x59

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_203()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_93()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_204()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_205()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_205()Z
    .registers 3

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_112()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_210()Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_206()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x64

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_33()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_207()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x65

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_33()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_208()Z
    .registers 3

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_211()Z

    move-result v1

    if-eqz v1, :cond_1a

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_212()Z

    move-result v1

    if-eqz v1, :cond_1a

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_213()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private final jj_3R_209()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x68

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_20

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x69

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_20

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x6f

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_1f
    :goto_1f
    return v0

    :cond_20
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_191()Z

    move-result v1

    if-nez v1, :cond_1f

    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private final jj_3R_210()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x4f

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_112()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_211()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x57

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_16

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x56

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    :goto_15
    return v0

    :cond_16
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_191()Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v0, 0x0

    goto :goto_15
.end method

.method private final jj_3R_212()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_214()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_213()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_215()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_214()Z
    .registers 3

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_216()Z

    move-result v1

    if-eqz v1, :cond_12

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_217()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private final jj_3R_215()Z
    .registers 3

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_218()Z

    move-result v1

    if-eqz v1, :cond_12

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_219()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private final jj_3R_216()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_191()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_217()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_208()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_218()Z
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_33()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x65

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_1c
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_219()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_33()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_28()Z
    .registers 3

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_46()Z

    move-result v1

    if-eqz v1, :cond_42

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_47()Z

    move-result v1

    if-eqz v1, :cond_42

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_48()Z

    move-result v1

    if-eqz v1, :cond_42

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_49()Z

    move-result v1

    if-eqz v1, :cond_42

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_28()Z

    move-result v1

    if-eqz v1, :cond_42

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_50()Z

    move-result v1

    if-eqz v1, :cond_42

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_51()Z

    move-result v1

    if-eqz v1, :cond_42

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_52()Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 v0, 0x1

    :goto_41
    return v0

    :cond_42
    const/4 v0, 0x0

    goto :goto_41
.end method

.method private final jj_3R_29()Z
    .registers 3

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_7()Z

    move-result v1

    if-eqz v1, :cond_a

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_30()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x50

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v1, 0x68

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_31()Z
    .registers 3

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_53()Z

    move-result v1

    if-eqz v1, :cond_12

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_54()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private final jj_3R_32()Z
    .registers 3

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_55()Z

    move-result v1

    if-eqz v1, :cond_12

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_56()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_6()Z

    move-result v1

    if-eqz v1, :cond_12

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_11
.end method

.method private final jj_3R_33()Z
    .registers 3

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_57()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_58()Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_34()Z
    .registers 3

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x51

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_98

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x78

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_98

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x79

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_98

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x7f

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_98

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x76

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_98

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x77

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_98

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x7a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_98

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x7e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_98

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x7c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_98

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_98

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x81

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_98

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x82

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_98

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x83

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_98

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x84

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_98

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v0, 0x85

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_98

    const/4 v0, 0x1

    :goto_97
    return v0

    :cond_98
    const/4 v0, 0x0

    goto :goto_97
.end method

.method private final jj_3R_35()Z
    .registers 3

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_10()Z

    move-result v1

    if-eqz v1, :cond_1a

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_59()Z

    move-result v1

    if-eqz v1, :cond_1a

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_60()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private final jj_3R_36()Z
    .registers 3

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_61()Z

    move-result v1

    if-eqz v1, :cond_42

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_62()Z

    move-result v1

    if-eqz v1, :cond_42

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_63()Z

    move-result v1

    if-eqz v1, :cond_42

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_64()Z

    move-result v1

    if-eqz v1, :cond_42

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_65()Z

    move-result v1

    if-eqz v1, :cond_42

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_66()Z

    move-result v1

    if-eqz v1, :cond_42

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_67()Z

    move-result v1

    if-eqz v1, :cond_42

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_68()Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 v0, 0x1

    :goto_41
    return v0

    :cond_42
    const/4 v0, 0x0

    goto :goto_41
.end method

.method private final jj_3R_37()Z
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_69()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_38()Z
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x4a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_23()Z

    move-result v2

    if-eqz v2, :cond_a

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x4b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_39()Z
    .registers 3

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_70()Z

    move-result v1

    if-eqz v1, :cond_12

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_71()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private final jj_3R_40()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v1, 0x59

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_45()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_41()Z
    .registers 3

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_72()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_42()Z
    .registers 3

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_73()Z

    move-result v1

    if-eqz v1, :cond_12

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_74()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private final jj_3R_43()Z
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_75()Z

    move-result v2

    if-eqz v2, :cond_14

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_14
    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_44()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x36

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_76()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_45()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_22()Z

    move-result v3

    if-eqz v3, :cond_93

    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_77()Z

    move-result v3

    if-eqz v3, :cond_93

    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v3, 0x4e

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v3

    if-eqz v3, :cond_93

    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_78()Z

    move-result v3

    if-eqz v3, :cond_93

    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_79()Z

    move-result v3

    if-eqz v3, :cond_93

    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_80()Z

    move-result v3

    if-eqz v3, :cond_93

    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_81()Z

    move-result v3

    if-eqz v3, :cond_93

    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_82()Z

    move-result v3

    if-eqz v3, :cond_93

    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-boolean v0, p0, Lbsh/Parser;->lookingAhead:Z

    invoke-virtual {p0}, Lbsh/Parser;->isRegularForStatement()Z

    move-result v3

    iput-boolean v3, p0, Lbsh/Parser;->jj_semLA:Z

    iput-boolean v1, p0, Lbsh/Parser;->lookingAhead:Z

    iget-boolean v3, p0, Lbsh/Parser;->jj_semLA:Z

    if-eqz v3, :cond_5a

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_83()Z

    move-result v3

    if-eqz v3, :cond_93

    :cond_5a
    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_84()Z

    move-result v3

    if-eqz v3, :cond_93

    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_85()Z

    move-result v3

    if-eqz v3, :cond_93

    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_86()Z

    move-result v3

    if-eqz v3, :cond_93

    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_87()Z

    move-result v3

    if-eqz v3, :cond_93

    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_88()Z

    move-result v3

    if-eqz v3, :cond_93

    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_89()Z

    move-result v3

    if-eqz v3, :cond_93

    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_90()Z

    move-result v2

    if-eqz v2, :cond_93

    :goto_92
    return v0

    :cond_93
    move v0, v1

    goto :goto_92
.end method

.method private final jj_3R_46()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_91()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_47()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_92()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_48()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_92()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_49()Z
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_93()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_50()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_94()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_51()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_95()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_52()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_96()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_53()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_97()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_54()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_55()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_36()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_56()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_57()Z
    .registers 3

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_98()Z

    move-result v1

    if-eqz v1, :cond_32

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_99()Z

    move-result v1

    if-eqz v1, :cond_32

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_100()Z

    move-result v1

    if-eqz v1, :cond_32

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_101()Z

    move-result v1

    if-eqz v1, :cond_32

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_102()Z

    move-result v1

    if-eqz v1, :cond_32

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_103()Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method private final jj_3R_58()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_104()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_59()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x4c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x4d

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_60()Z
    .registers 5

    const/16 v3, 0x48

    const/4 v0, 0x1

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x57

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_50

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x56

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_50

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_50

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x45

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_50

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x28

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_50

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_105()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_50
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_61()Z
    .registers 2

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_62()Z
    .registers 2

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_63()Z
    .registers 2

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_64()Z
    .registers 2

    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_65()Z
    .registers 2

    const/16 v0, 0x24

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_66()Z
    .registers 2

    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_67()Z
    .registers 2

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_68()Z
    .registers 2

    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_69()Z
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_106()Z

    move-result v2

    if-eqz v2, :cond_14

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_14
    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_70()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_107()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_71()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_108()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_72()Z
    .registers 3

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x2b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_70

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x2c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_70

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x2d

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_70

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x33

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_70

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x1b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_70

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x27

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_70

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x34

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_70

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x3a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_70

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_70

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x30

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_70

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v0, 0x31

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_70

    const/4 v0, 0x1

    :goto_6f
    return v0

    :cond_70
    const/4 v0, 0x0

    goto :goto_6f
.end method

.method private final jj_3R_73()Z
    .registers 2

    const/16 v0, 0x39

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_74()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_75()Z
    .registers 3

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_109()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_110()Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_76()Z
    .registers 3

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_111()Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_77()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_38()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_78()Z
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_112()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_79()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_113()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_80()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_114()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_81()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_115()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_82()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_116()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_83()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_117()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_84()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_118()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_85()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_119()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_86()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_120()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_87()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_121()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_88()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_122()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_89()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_123()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_90()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_124()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_91()Z
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_41()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_125()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_1a
    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_172()Z

    move-result v2

    if-eqz v2, :cond_2c

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_2c
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_173()Z

    move-result v2

    if-eqz v2, :cond_36

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_36
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_38()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_92()Z
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_41()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_126()Z

    move-result v2

    if-eqz v2, :cond_18

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_127()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_18
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_43()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_174()Z

    move-result v2

    if-eqz v2, :cond_28

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_28
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_175()Z

    move-result v2

    if-eqz v2, :cond_3a

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_3a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_93()Z
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_41()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_176()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_14
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_177()Z

    move-result v1

    if-eqz v1, :cond_14

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_94()Z
    .registers 3

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_3()Z

    move-result v1

    if-eqz v1, :cond_12

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_128()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private final jj_3R_95()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x2a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_96()Z
    .registers 2

    const/16 v0, 0x44

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_97()Z
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x4a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_163()Z

    move-result v2

    if-eqz v2, :cond_14

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_14
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x4f

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_20

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_20
    const/16 v1, 0x4b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_98()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_129()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_99()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3_1()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_28()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3_10()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_36()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3_11()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x4c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3_12()Z
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_33()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x65

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_1c
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3_13()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_36()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3_14()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_37()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3_15()Z
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/16 v1, 0x50

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3_16()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x50

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3_17()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_38()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3_18()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x28

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_36()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_150()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3_19()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x4c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x4d

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3_2()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3_20()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x4c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v1, 0x4d

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3_21()Z
    .registers 3

    invoke-direct {p0}, Lbsh/Parser;->jj_3_19()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_19()Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_12
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3_20()Z

    move-result v1

    if-eqz v1, :cond_12

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3_22()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_40()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3_23()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_28()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3_24()Z
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_41()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v1, 0x25

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_1c
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3_25()Z
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_41()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_42()Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3_26()Z
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_41()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_43()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_44()Z

    move-result v2

    if-eqz v2, :cond_20

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_20
    const/16 v1, 0x4a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3_27()Z
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_41()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3_28()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_45()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3_29()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_28()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3_3()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    const/16 v2, 0x30

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_d

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_d
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    :goto_15
    return v0

    :cond_16
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_30()Z

    move-result v2

    if-eqz v2, :cond_26

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :cond_26
    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v0, 0x0

    goto :goto_15
.end method

.method private final jj_3_30()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x1e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x59

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_45()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3_31()Z
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_41()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3_4()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x4f

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_31()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3_5()Z
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3_6()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x4c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v1, 0x4d

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3_7()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x50

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3_8()Z
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_33()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_34()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3_9()Z
    .registers 2

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_35()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_consume_token(I)Lbsh/Token;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget-object v1, v0, Lbsh/Token;->next:Lbsh/Token;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget-object v1, v1, Lbsh/Token;->next:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    :goto_c
    const/4 v1, -0x1

    iput v1, p0, Lbsh/Parser;->jj_ntk:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget v1, v1, Lbsh/Token;->kind:I

    if-ne v1, p1, :cond_25

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    return-object v0

    :cond_18
    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget-object v2, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    invoke-virtual {v2}, Lbsh/ParserTokenManager;->getNextToken()Lbsh/Token;

    move-result-object v2

    iput-object v2, v1, Lbsh/Token;->next:Lbsh/Token;

    iput-object v2, p0, Lbsh/Parser;->token:Lbsh/Token;

    goto :goto_c

    :cond_25
    iput-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->generateParseException()Lbsh/ParseException;

    move-result-object v0

    throw v0
.end method

.method private final jj_ntk()I
    .registers 3

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget-object v0, v0, Lbsh/Token;->next:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_nt:Lbsh/Token;

    if-nez v0, :cond_17

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    invoke-virtual {v1}, Lbsh/ParserTokenManager;->getNextToken()Lbsh/Token;

    move-result-object v1

    iput-object v1, v0, Lbsh/Token;->next:Lbsh/Token;

    iget v0, v1, Lbsh/Token;->kind:I

    iput v0, p0, Lbsh/Parser;->jj_ntk:I

    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lbsh/Parser;->jj_nt:Lbsh/Token;

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_16
.end method

.method private final jj_scan_token(I)Z
    .registers 4

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    if-ne v0, v1, :cond_31

    iget v0, p0, Lbsh/Parser;->jj_la:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iget-object v0, v0, Lbsh/Token;->next:Lbsh/Token;

    if-nez v0, :cond_28

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    invoke-virtual {v1}, Lbsh/ParserTokenManager;->getNextToken()Lbsh/Token;

    move-result-object v1

    iput-object v1, v0, Lbsh/Token;->next:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    :goto_20
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iget v0, v0, Lbsh/Token;->kind:I

    if-eq v0, p1, :cond_38

    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iget-object v0, v0, Lbsh/Token;->next:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    goto :goto_20

    :cond_31
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iget-object v0, v0, Lbsh/Token;->next:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    goto :goto_20

    :cond_38
    iget v0, p0, Lbsh/Parser;->jj_la:I

    if-nez v0, :cond_45

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    if-ne v0, v1, :cond_45

    iget-object v0, p0, Lbsh/Parser;->jj_ls:Lbsh/Parser$LookaheadSuccess;

    throw v0

    :cond_45
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public static main([Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    aget-object v2, p0, v0

    const-string v3, "-p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    move v0, v1

    move v2, v1

    :goto_e
    array-length v3, p0

    if-lt v0, v3, :cond_12

    return-void

    :cond_12
    new-instance v3, Ljava/io/FileReader;

    aget-object v4, p0, v0

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v4, Lbsh/Parser;

    invoke-direct {v4, v3}, Lbsh/Parser;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v4, v1}, Lbsh/Parser;->setRetainComments(Z)V

    :cond_21
    :goto_21
    invoke-virtual {v4}, Lbsh/Parser;->Line()Z

    move-result v3

    if-eqz v3, :cond_2a

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_2a
    if-eqz v2, :cond_21

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Lbsh/Parser;->popNode()Lbsh/SimpleNode;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_21

    :cond_36
    move v2, v0

    goto :goto_e
.end method


# virtual methods
.method public final AdditiveExpression()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, -0x1

    invoke-virtual {p0}, Lbsh/Parser;->MultiplicativeExpression()V

    :goto_5
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_11

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_d
    packed-switch v0, :pswitch_data_66

    return-void

    :cond_11
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_d

    :pswitch_14
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_28

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1c
    packed-switch v0, :pswitch_data_6e

    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_28
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1c

    :pswitch_2b
    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    :goto_31
    invoke-virtual {p0}, Lbsh/Parser;->MultiplicativeExpression()V

    new-instance v2, Lbsh/BSHBinaryExpression;

    const/16 v1, 0xf

    invoke-direct {v2, v1}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v1, 0x1

    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v2}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_44
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v2, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_53

    goto :goto_5

    :catchall_53
    move-exception v0

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v2, v6}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_5e
    throw v0

    :pswitch_5f
    const/16 v0, 0x67

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_31

    :pswitch_data_66
    .packed-switch 0x66
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_6e
    .packed-switch 0x66
        :pswitch_2b
        :pswitch_5f
    .end packed-switch
.end method

.method public final AllocationExpression()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, -0x1

    new-instance v3, Lbsh/BSHAllocationExpression;

    const/16 v0, 0x17

    invoke-direct {v3, v0}, Lbsh/BSHAllocationExpression;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/4 v0, 0x2

    :try_start_12
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_18(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->PrimitiveType()V

    invoke-virtual {p0}, Lbsh/Parser;->ArrayDimensions()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_23} :catch_41
    .catchall {:try_start_12 .. :try_end_23} :catchall_7b

    :cond_23
    :goto_23
    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :cond_2c
    :try_start_2c
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_5b

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_34
    packed-switch v0, :pswitch_data_9e

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_41} :catch_41
    .catchall {:try_start_2c .. :try_end_41} :catchall_7b

    :catch_41
    move-exception v0

    :try_start_42
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_7b

    const/4 v1, 0x0

    :try_start_48
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_93

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception v0

    :goto_50
    if-eqz v1, :cond_5a

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_5a
    throw v0

    :cond_5b
    :try_start_5b
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_34

    :pswitch_5e
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_7e

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_6e
    sparse-switch v0, :sswitch_data_a4

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :catchall_7b
    move-exception v0

    move v1, v2

    goto :goto_50

    :cond_7e
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_6e

    :sswitch_81
    invoke-virtual {p0}, Lbsh/Parser;->ArrayDimensions()V

    goto :goto_23

    :sswitch_85
    invoke-virtual {p0}, Lbsh/Parser;->Arguments()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_17(I)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lbsh/Parser;->Block()V
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_92} :catch_41
    .catchall {:try_start_5b .. :try_end_92} :catchall_7b

    goto :goto_23

    :cond_93
    :try_start_93
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_9a

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_9a
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_9d
    .catchall {:try_start_93 .. :try_end_9d} :catchall_4f

    nop

    :pswitch_data_9e
    .packed-switch 0x28
        :pswitch_5e
    .end packed-switch

    :sswitch_data_a4
    .sparse-switch
        0x48 -> :sswitch_85
        0x4c -> :sswitch_81
    .end sparse-switch
.end method

.method public final AmbiguousName()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHAmbiguousName;

    const/16 v0, 0xc

    invoke-direct {v3, v0}, Lbsh/BSHAmbiguousName;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x45

    :try_start_12
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuffer;

    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_1d
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_7(I)Z

    move-result v0

    if-eqz v0, :cond_55

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_47
    .catchall {:try_start_12 .. :try_end_47} :catchall_48

    goto :goto_1d

    :catchall_48
    move-exception v0

    move v1, v2

    :goto_4a
    if-eqz v1, :cond_54

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_54
    throw v0

    :cond_55
    :try_start_55
    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_48

    const/4 v1, 0x0

    :try_start_5c
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_66

    return-void

    :catchall_66
    move-exception v0

    goto :goto_4a
.end method

.method public final AndExpression()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, -0x1

    invoke-virtual {p0}, Lbsh/Parser;->EqualityExpression()V

    :goto_5
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_11

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_d
    packed-switch v0, :pswitch_data_66

    return-void

    :cond_11
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_d

    :pswitch_14
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_28

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1c
    packed-switch v0, :pswitch_data_6e

    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_28
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1c

    :pswitch_2b
    const/16 v0, 0x6a

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    :goto_31
    invoke-virtual {p0}, Lbsh/Parser;->EqualityExpression()V

    new-instance v2, Lbsh/BSHBinaryExpression;

    const/16 v1, 0xf

    invoke-direct {v2, v1}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v1, 0x1

    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v2}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_44
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v2, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_53

    goto :goto_5

    :catchall_53
    move-exception v0

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v2, v6}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_5e
    throw v0

    :pswitch_5f
    const/16 v0, 0x6b

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_31

    :pswitch_data_66
    .packed-switch 0x6a
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_6e
    .packed-switch 0x6a
        :pswitch_2b
        :pswitch_5f
    .end packed-switch
.end method

.method public final ArgumentList()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    :goto_3
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_c
    packed-switch v0, :pswitch_data_1c

    return-void

    :cond_10
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_c

    :pswitch_13
    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    goto :goto_3

    :pswitch_data_1c
    .packed-switch 0x4f
        :pswitch_13
    .end packed-switch
.end method

.method public final Arguments()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHArguments;

    const/16 v0, 0x16

    invoke-direct {v3, v0}, Lbsh/BSHArguments;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x48

    :try_start_12
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2f

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1e
    sparse-switch v0, :sswitch_data_5e

    :goto_21
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_26} :catch_36
    .catchall {:try_start_12 .. :try_end_26} :catchall_5a

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :cond_2f
    :try_start_2f
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1e

    :sswitch_32
    invoke-virtual {p0}, Lbsh/Parser;->ArgumentList()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_35} :catch_36
    .catchall {:try_start_2f .. :try_end_35} :catchall_5a

    goto :goto_21

    :catch_36
    move-exception v0

    :try_start_37
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_5a

    const/4 v1, 0x0

    :try_start_3d
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_50

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v0

    :goto_45
    if-eqz v1, :cond_4f

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_4f
    throw v0

    :cond_50
    :try_start_50
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_57

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_57
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_44

    :catchall_5a
    move-exception v0

    move v1, v2

    goto :goto_45

    nop

    :sswitch_data_5e
    .sparse-switch
        0xb -> :sswitch_32
        0xe -> :sswitch_32
        0x11 -> :sswitch_32
        0x16 -> :sswitch_32
        0x1a -> :sswitch_32
        0x1d -> :sswitch_32
        0x24 -> :sswitch_32
        0x26 -> :sswitch_32
        0x28 -> :sswitch_32
        0x29 -> :sswitch_32
        0x2f -> :sswitch_32
        0x37 -> :sswitch_32
        0x39 -> :sswitch_32
        0x3c -> :sswitch_32
        0x40 -> :sswitch_32
        0x42 -> :sswitch_32
        0x43 -> :sswitch_32
        0x45 -> :sswitch_32
        0x48 -> :sswitch_32
        0x56 -> :sswitch_32
        0x57 -> :sswitch_32
        0x64 -> :sswitch_32
        0x65 -> :sswitch_32
        0x66 -> :sswitch_32
        0x67 -> :sswitch_32
    .end sparse-switch
.end method

.method public final ArrayDimensions()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, -0x1

    new-instance v3, Lbsh/BSHArrayDimensions;

    const/16 v0, 0x18

    invoke-direct {v3, v0}, Lbsh/BSHArrayDimensions;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/4 v0, 0x2

    :try_start_12
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_21(I)Z

    move-result v0

    if-eqz v0, :cond_5e

    :cond_18
    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {v3}, Lbsh/BSHArrayDimensions;->addDefinedDimension()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_19(I)Z

    move-result v0

    if-nez v0, :cond_18

    :goto_2f
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_20(I)Z

    move-result v0

    if-eqz v0, :cond_94

    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {v3}, Lbsh/BSHArrayDimensions;->addUndefinedDimension()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_43} :catch_44
    .catchall {:try_start_12 .. :try_end_43} :catchall_73

    goto :goto_2f

    :catch_44
    move-exception v0

    :try_start_45
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_73

    const/4 v1, 0x0

    :try_start_4b
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_a0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_52

    :catchall_52
    move-exception v0

    :goto_53
    if-eqz v1, :cond_5d

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_5d
    throw v0

    :cond_5e
    :try_start_5e
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_76

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_66
    packed-switch v0, :pswitch_data_aa

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :catchall_73
    move-exception v0

    move v1, v2

    goto :goto_53

    :cond_76
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_66

    :pswitch_79
    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {v3}, Lbsh/BSHArrayDimensions;->addUndefinedDimension()V

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_9d

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_8e
    packed-switch v0, :pswitch_data_b0

    invoke-virtual {p0}, Lbsh/Parser;->ArrayInitializer()V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_94} :catch_44
    .catchall {:try_start_5e .. :try_end_94} :catchall_73

    :cond_94
    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :cond_9d
    :try_start_9d
    iget v0, p0, Lbsh/Parser;->jj_ntk:I
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_9f} :catch_44
    .catchall {:try_start_9d .. :try_end_9f} :catchall_73

    goto :goto_8e

    :cond_a0
    :try_start_a0
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_a7

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_a7
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_aa
    .catchall {:try_start_a0 .. :try_end_aa} :catchall_52

    :pswitch_data_aa
    .packed-switch 0x4c
        :pswitch_79
    .end packed-switch

    :pswitch_data_b0
    .packed-switch 0x4c
        :pswitch_79
    .end packed-switch
.end method

.method public final ArrayInitializer()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHArrayInitializer;

    const/4 v0, 0x6

    invoke-direct {v3, v0}, Lbsh/BSHArrayInitializer;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x4a

    :try_start_12
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_39

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1d
    sparse-switch v0, :sswitch_data_80

    :cond_20
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_69

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_28
    packed-switch v0, :pswitch_data_ea

    :goto_2b
    const/16 v0, 0x4b

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_30} :catch_4f
    .catchall {:try_start_12 .. :try_end_30} :catchall_72

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :cond_39
    :try_start_39
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1d

    :sswitch_3c
    invoke-virtual {p0}, Lbsh/Parser;->VariableInitializer()V

    :goto_3f
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_4(I)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->VariableInitializer()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_4e} :catch_4f
    .catchall {:try_start_39 .. :try_end_4e} :catchall_72

    goto :goto_3f

    :catch_4f
    move-exception v0

    :try_start_50
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_72

    const/4 v1, 0x0

    :try_start_56
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_75

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception v0

    :goto_5e
    if-eqz v1, :cond_68

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_68
    throw v0

    :cond_69
    :try_start_69
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_28

    :pswitch_6c
    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_71} :catch_4f
    .catchall {:try_start_69 .. :try_end_71} :catchall_72

    goto :goto_2b

    :catchall_72
    move-exception v0

    move v1, v2

    goto :goto_5e

    :cond_75
    :try_start_75
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_7c

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_7c
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_7f
    .catchall {:try_start_75 .. :try_end_7f} :catchall_5d

    nop

    :sswitch_data_80
    .sparse-switch
        0xb -> :sswitch_3c
        0xe -> :sswitch_3c
        0x11 -> :sswitch_3c
        0x16 -> :sswitch_3c
        0x1a -> :sswitch_3c
        0x1d -> :sswitch_3c
        0x24 -> :sswitch_3c
        0x26 -> :sswitch_3c
        0x28 -> :sswitch_3c
        0x29 -> :sswitch_3c
        0x2f -> :sswitch_3c
        0x37 -> :sswitch_3c
        0x39 -> :sswitch_3c
        0x3c -> :sswitch_3c
        0x40 -> :sswitch_3c
        0x42 -> :sswitch_3c
        0x43 -> :sswitch_3c
        0x45 -> :sswitch_3c
        0x48 -> :sswitch_3c
        0x4a -> :sswitch_3c
        0x56 -> :sswitch_3c
        0x57 -> :sswitch_3c
        0x64 -> :sswitch_3c
        0x65 -> :sswitch_3c
        0x66 -> :sswitch_3c
        0x67 -> :sswitch_3c
    .end sparse-switch

    :pswitch_data_ea
    .packed-switch 0x4f
        :pswitch_6c
    .end packed-switch
.end method

.method public final Assignment()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHAssignment;

    const/16 v0, 0xd

    invoke-direct {v3, v0}, Lbsh/BSHAssignment;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_10
    invoke-virtual {p0}, Lbsh/Parser;->PrimaryExpression()V

    invoke-virtual {p0}, Lbsh/Parser;->AssignmentOperator()I

    move-result v0

    iput v0, v3, Lbsh/BSHAssignment;->operator:I

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1c} :catch_25
    .catchall {:try_start_10 .. :try_end_1c} :catchall_49

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :catch_25
    move-exception v0

    :try_start_26
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_49

    const/4 v1, 0x0

    :try_start_2c
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_3f

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_33

    :catchall_33
    move-exception v0

    :goto_34
    if-eqz v1, :cond_3e

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_3e
    throw v0

    :cond_3f
    :try_start_3f
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_46

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_46
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_33

    :catchall_49
    move-exception v0

    move v1, v2

    goto :goto_34
.end method

.method public final AssignmentOperator()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, -0x1

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_15

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_9
    sparse-switch v0, :sswitch_data_7a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_15
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_9

    :sswitch_18
    const/16 v0, 0x51

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    :goto_1d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/Parser;->getToken(I)Lbsh/Token;

    move-result-object v0

    iget v0, v0, Lbsh/Token;->kind:I

    return v0

    :sswitch_25
    const/16 v0, 0x78

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_1d

    :sswitch_2b
    const/16 v0, 0x79

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_1d

    :sswitch_31
    const/16 v0, 0x7f

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_1d

    :sswitch_37
    const/16 v0, 0x76

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_1d

    :sswitch_3d
    const/16 v0, 0x77

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_1d

    :sswitch_43
    const/16 v0, 0x7a

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_1d

    :sswitch_49
    const/16 v0, 0x7e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_1d

    :sswitch_4f
    const/16 v0, 0x7c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_1d

    :sswitch_55
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_1d

    :sswitch_5b
    const/16 v0, 0x81

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_1d

    :sswitch_61
    const/16 v0, 0x82

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_1d

    :sswitch_67
    const/16 v0, 0x83

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_1d

    :sswitch_6d
    const/16 v0, 0x84

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_1d

    :sswitch_73
    const/16 v0, 0x85

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_1d

    nop

    :sswitch_data_7a
    .sparse-switch
        0x51 -> :sswitch_18
        0x76 -> :sswitch_37
        0x77 -> :sswitch_3d
        0x78 -> :sswitch_25
        0x79 -> :sswitch_2b
        0x7a -> :sswitch_43
        0x7c -> :sswitch_4f
        0x7e -> :sswitch_49
        0x7f -> :sswitch_31
        0x80 -> :sswitch_55
        0x81 -> :sswitch_5b
        0x82 -> :sswitch_61
        0x83 -> :sswitch_67
        0x84 -> :sswitch_6d
        0x85 -> :sswitch_73
    .end sparse-switch
.end method

.method public final Block()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHBlock;

    const/16 v0, 0x19

    invoke-direct {v3, v0}, Lbsh/BSHBlock;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x4a

    :try_start_12
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    :goto_15
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_23(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lbsh/Parser;->BlockStatement()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_1f} :catch_20
    .catchall {:try_start_12 .. :try_end_1f} :catchall_52

    goto :goto_15

    :catch_20
    move-exception v0

    :try_start_21
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_52

    const/4 v1, 0x0

    :try_start_27
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_48

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v0

    :goto_2f
    if-eqz v1, :cond_39

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_39
    throw v0

    :cond_3a
    const/16 v0, 0x4b

    :try_start_3c
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3f} :catch_20
    .catchall {:try_start_3c .. :try_end_3f} :catchall_52

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :cond_48
    :try_start_48
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_4f

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_4f
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_52
    .catchall {:try_start_48 .. :try_end_52} :catchall_2e

    :catchall_52
    move-exception v0

    move v1, v2

    goto :goto_2f
.end method

.method public final BlockStatement()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, -0x1

    const v1, 0x7fffffff

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_2_24(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lbsh/Parser;->ClassDeclaration()V

    :goto_d
    return-void

    :cond_e
    invoke-direct {p0, v1}, Lbsh/Parser;->jj_2_25(I)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lbsh/Parser;->MethodDeclaration()V

    goto :goto_d

    :cond_18
    invoke-direct {p0, v1}, Lbsh/Parser;->jj_2_26(I)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lbsh/Parser;->MethodDeclaration()V

    goto :goto_d

    :cond_22
    invoke-direct {p0, v1}, Lbsh/Parser;->jj_2_27(I)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lbsh/Parser;->TypedVariableDeclaration()V

    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_d

    :cond_31
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_28(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lbsh/Parser;->Statement()V

    goto :goto_d

    :cond_3c
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v2, :cond_50

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_44
    sparse-switch v0, :sswitch_data_60

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_50
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_44

    :sswitch_53
    invoke-virtual {p0}, Lbsh/Parser;->ImportDeclaration()V

    goto :goto_d

    :sswitch_57
    invoke-virtual {p0}, Lbsh/Parser;->PackageDeclaration()V

    goto :goto_d

    :sswitch_5b
    invoke-virtual {p0}, Lbsh/Parser;->FormalComment()V

    goto :goto_d

    nop

    :sswitch_data_60
    .sparse-switch
        0x22 -> :sswitch_53
        0x2a -> :sswitch_57
        0x30 -> :sswitch_53
        0x44 -> :sswitch_5b
    .end sparse-switch
.end method

.method public final BooleanLiteral()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, -0x1

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_15

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_9
    sparse-switch v0, :sswitch_data_26

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_15
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_9

    :sswitch_18
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/4 v0, 0x1

    :goto_1e
    return v0

    :sswitch_1f
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/4 v0, 0x0

    goto :goto_1e

    :sswitch_data_26
    .sparse-switch
        0x1a -> :sswitch_1f
        0x37 -> :sswitch_18
    .end sparse-switch
.end method

.method public final BreakStatement()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHReturnStatement;

    const/16 v0, 0x23

    invoke-direct {v3, v0}, Lbsh/BSHReturnStatement;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0xc

    :try_start_12
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_35

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1e
    packed-switch v0, :pswitch_data_4e

    :goto_21
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_3e

    const/4 v1, 0x0

    :try_start_2d
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    const/16 v0, 0xc

    iput v0, v3, Lbsh/BSHReturnStatement;->kind:I
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_4b

    return-void

    :cond_35
    :try_start_35
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1e

    :pswitch_38
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3e

    goto :goto_21

    :catchall_3e
    move-exception v0

    move v1, v2

    :goto_40
    if-eqz v1, :cond_4a

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_4a
    throw v0

    :catchall_4b
    move-exception v0

    goto :goto_40

    nop

    :pswitch_data_4e
    .packed-switch 0x45
        :pswitch_38
    .end packed-switch
.end method

.method public final CastExpression()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHCastExpression;

    const/16 v0, 0x11

    invoke-direct {v3, v0}, Lbsh/BSHCastExpression;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const v0, 0x7fffffff

    :try_start_14
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_13(I)Z

    move-result v0

    if-eqz v0, :cond_33

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Type()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->UnaryExpression()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_2a} :catch_48
    .catchall {:try_start_14 .. :try_end_2a} :catchall_76

    :goto_2a
    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :cond_33
    :try_start_33
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_62

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_3b
    packed-switch v0, :pswitch_data_84

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_48} :catch_48
    .catchall {:try_start_33 .. :try_end_48} :catchall_76

    :catch_48
    move-exception v0

    :try_start_49
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_76

    const/4 v1, 0x0

    :try_start_4f
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_79

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_56

    :catchall_56
    move-exception v0

    :goto_57
    if-eqz v1, :cond_61

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_61
    throw v0

    :cond_62
    :try_start_62
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_3b

    :pswitch_65
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Type()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->UnaryExpressionNotPlusMinus()V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_75} :catch_48
    .catchall {:try_start_62 .. :try_end_75} :catchall_76

    goto :goto_2a

    :catchall_76
    move-exception v0

    move v1, v2

    goto :goto_57

    :cond_79
    :try_start_79
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_80

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_80
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_83
    .catchall {:try_start_79 .. :try_end_83} :catchall_56

    nop

    :pswitch_data_84
    .packed-switch 0x48
        :pswitch_65
    .end packed-switch
.end method

.method public final CastLookahead()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/16 v2, 0x48

    const/4 v1, -0x1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_10(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->PrimitiveType()V

    :goto_10
    return-void

    :cond_11
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_11(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_10

    :cond_2b
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_3f

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_33
    packed-switch v0, :pswitch_data_84

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_3f
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_33

    :pswitch_42
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_61

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_55
    sparse-switch v0, :sswitch_data_8a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_61
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_55

    :sswitch_64
    const/16 v0, 0x57

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_10

    :sswitch_6a
    const/16 v0, 0x56

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_10

    :sswitch_70
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_10

    :sswitch_74
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_10

    :sswitch_7a
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_10

    :sswitch_80
    invoke-virtual {p0}, Lbsh/Parser;->Literal()V

    goto :goto_10

    :pswitch_data_84
    .packed-switch 0x48
        :pswitch_42
    .end packed-switch

    :sswitch_data_8a
    .sparse-switch
        0x1a -> :sswitch_80
        0x28 -> :sswitch_7a
        0x29 -> :sswitch_80
        0x37 -> :sswitch_80
        0x39 -> :sswitch_80
        0x3c -> :sswitch_80
        0x40 -> :sswitch_80
        0x42 -> :sswitch_80
        0x43 -> :sswitch_80
        0x45 -> :sswitch_74
        0x48 -> :sswitch_70
        0x56 -> :sswitch_6a
        0x57 -> :sswitch_64
    .end sparse-switch
.end method

.method public final ClassDeclaration()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x1

    new-instance v4, Lbsh/BSHClassDeclaration;

    invoke-direct {v4, v2}, Lbsh/BSHClassDeclaration;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_12
    invoke-virtual {p0, v0, v1}, Lbsh/Parser;->Modifiers(IZ)Lbsh/Modifiers;

    move-result-object v1

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v6, :cond_47

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1e
    sparse-switch v0, :sswitch_data_c0

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_2b} :catch_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_87

    :catch_2b
    move-exception v0

    move v1, v2

    :goto_2d
    if-eqz v1, :cond_a8

    :try_start_2f
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v4}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_b9

    :goto_34
    :try_start_34
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_af

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception v0

    :goto_3c
    if-eqz v3, :cond_46

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v4, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_46
    throw v0

    :cond_47
    :try_start_47
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1e

    :sswitch_4a
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    :goto_4f
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v5

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v6, :cond_8a

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_5d
    packed-switch v0, :pswitch_data_ca

    :goto_60
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v6, :cond_99

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_68
    packed-switch v0, :pswitch_data_d0

    :goto_6b
    invoke-virtual {p0}, Lbsh/Parser;->Block()V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v6}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_74} :catch_2b
    .catchall {:try_start_47 .. :try_end_74} :catchall_87

    :try_start_74
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iput-object v1, v4, Lbsh/BSHClassDeclaration;->modifiers:Lbsh/Modifiers;

    iget-object v0, v5, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v0, v4, Lbsh/BSHClassDeclaration;->name:Ljava/lang/String;
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_7d} :catch_bc
    .catchall {:try_start_74 .. :try_end_7d} :catchall_3b

    return-void

    :sswitch_7e
    const/16 v0, 0x25

    :try_start_80
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/4 v0, 0x1

    iput-boolean v0, v4, Lbsh/BSHClassDeclaration;->isInterface:Z

    goto :goto_4f

    :catchall_87
    move-exception v0

    move v3, v2

    goto :goto_3c

    :cond_8a
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_5d

    :pswitch_8d
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    const/4 v0, 0x1

    iput-boolean v0, v4, Lbsh/BSHClassDeclaration;->extend:Z

    goto :goto_60

    :cond_99
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_68

    :pswitch_9c
    const/16 v0, 0x21

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->NameList()I

    move-result v0

    iput v0, v4, Lbsh/BSHClassDeclaration;->numInterfaces:I
    :try_end_a7
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_a7} :catch_2b
    .catchall {:try_start_80 .. :try_end_a7} :catchall_87

    goto :goto_6b

    :cond_a8
    :try_start_a8
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3}, Lbsh/JJTParserState;->popNode()Lbsh/Node;
    :try_end_ad
    .catchall {:try_start_a8 .. :try_end_ad} :catchall_b9

    move v3, v1

    goto :goto_34

    :cond_af
    :try_start_af
    instance-of v1, v0, Lbsh/ParseException;

    if-eqz v1, :cond_b6

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_b6
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_b9
    .catchall {:try_start_af .. :try_end_b9} :catchall_3b

    :catchall_b9
    move-exception v0

    move v3, v1

    goto :goto_3c

    :catch_bc
    move-exception v0

    move v1, v3

    goto/16 :goto_2d

    :sswitch_data_c0
    .sparse-switch
        0xd -> :sswitch_4a
        0x25 -> :sswitch_7e
    .end sparse-switch

    :pswitch_data_ca
    .packed-switch 0x19
        :pswitch_8d
    .end packed-switch

    :pswitch_data_d0
    .packed-switch 0x21
        :pswitch_9c
    .end packed-switch
.end method

.method public final ConditionalAndExpression()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, -0x1

    invoke-virtual {p0}, Lbsh/Parser;->InclusiveOrExpression()V

    :goto_5
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_11

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_d
    packed-switch v0, :pswitch_data_66

    return-void

    :cond_11
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_d

    :pswitch_14
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_28

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1c
    packed-switch v0, :pswitch_data_6e

    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_28
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1c

    :pswitch_2b
    const/16 v0, 0x62

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    :goto_31
    invoke-virtual {p0}, Lbsh/Parser;->InclusiveOrExpression()V

    new-instance v2, Lbsh/BSHBinaryExpression;

    const/16 v1, 0xf

    invoke-direct {v2, v1}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v1, 0x1

    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v2}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_44
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v2, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_53

    goto :goto_5

    :catchall_53
    move-exception v0

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v2, v6}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_5e
    throw v0

    :pswitch_5f
    const/16 v0, 0x63

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_31

    :pswitch_data_66
    .packed-switch 0x62
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_6e
    .packed-switch 0x62
        :pswitch_2b
        :pswitch_5f
    .end packed-switch
.end method

.method public final ConditionalExpression()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v4, 0x3

    invoke-virtual {p0}, Lbsh/Parser;->ConditionalOrExpression()V

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_d
    packed-switch v0, :pswitch_data_62

    :goto_10
    return-void

    :cond_11
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_d

    :pswitch_14
    const/16 v0, 0x58

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v2, Lbsh/BSHTernaryExpression;

    const/16 v0, 0xe

    invoke-direct {v2, v0}, Lbsh/BSHTernaryExpression;-><init>(I)V

    const/4 v1, 0x1

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v2}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_31
    invoke-virtual {p0}, Lbsh/Parser;->ConditionalExpression()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_34} :catch_3d
    .catchall {:try_start_31 .. :try_end_34} :catchall_4b

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v2, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    goto :goto_10

    :catch_3d
    move-exception v0

    :try_start_3e
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v2}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    const/4 v1, 0x0

    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_57

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception v0

    if-eqz v1, :cond_56

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v2, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_56
    throw v0

    :cond_57
    :try_start_57
    instance-of v3, v0, Lbsh/ParseException;

    if-eqz v3, :cond_5e

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_5e
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_4b

    nop

    :pswitch_data_62
    .packed-switch 0x58
        :pswitch_14
    .end packed-switch
.end method

.method public final ConditionalOrExpression()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, -0x1

    invoke-virtual {p0}, Lbsh/Parser;->ConditionalAndExpression()V

    :goto_5
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_11

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_d
    packed-switch v0, :pswitch_data_66

    return-void

    :cond_11
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_d

    :pswitch_14
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_28

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1c
    packed-switch v0, :pswitch_data_6e

    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_28
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1c

    :pswitch_2b
    const/16 v0, 0x60

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    :goto_31
    invoke-virtual {p0}, Lbsh/Parser;->ConditionalAndExpression()V

    new-instance v2, Lbsh/BSHBinaryExpression;

    const/16 v1, 0xf

    invoke-direct {v2, v1}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v1, 0x1

    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v2}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_44
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v2, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_53

    goto :goto_5

    :catchall_53
    move-exception v0

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v2, v6}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_5e
    throw v0

    :pswitch_5f
    const/16 v0, 0x61

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_31

    :pswitch_data_66
    .packed-switch 0x60
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_6e
    .packed-switch 0x60
        :pswitch_2b
        :pswitch_5f
    .end packed-switch
.end method

.method public final ContinueStatement()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHReturnStatement;

    const/16 v0, 0x23

    invoke-direct {v3, v0}, Lbsh/BSHReturnStatement;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x13

    :try_start_12
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_35

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1e
    packed-switch v0, :pswitch_data_4e

    :goto_21
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_3e

    const/4 v1, 0x0

    :try_start_2d
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    const/16 v0, 0x13

    iput v0, v3, Lbsh/BSHReturnStatement;->kind:I
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_4b

    return-void

    :cond_35
    :try_start_35
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1e

    :pswitch_38
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3e

    goto :goto_21

    :catchall_3e
    move-exception v0

    move v1, v2

    :goto_40
    if-eqz v1, :cond_4a

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_4a
    throw v0

    :catchall_4b
    move-exception v0

    goto :goto_40

    nop

    :pswitch_data_4e
    .packed-switch 0x45
        :pswitch_38
    .end packed-switch
.end method

.method public final DoStatement()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Lbsh/BSHWhileStatement;

    const/16 v0, 0x1e

    invoke-direct {v4, v0}, Lbsh/BSHWhileStatement;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x15

    :try_start_13
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Statement()V

    const/16 v0, 0x3b

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_36} :catch_3d
    .catchall {:try_start_13 .. :try_end_36} :catchall_6a

    :try_start_36
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    const/4 v0, 0x1

    iput-boolean v0, v4, Lbsh/BSHWhileStatement;->isDoStatement:Z
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_3c} :catch_70
    .catchall {:try_start_36 .. :try_end_3c} :catchall_6d

    return-void

    :catch_3d
    move-exception v0

    move v1, v3

    :goto_3f
    if-eqz v1, :cond_5a

    :try_start_41
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v4}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    move v1, v2

    :goto_47
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_60

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception v0

    :goto_4f
    if-eqz v1, :cond_59

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v4, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_59
    throw v0

    :cond_5a
    :try_start_5a
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    goto :goto_47

    :cond_60
    instance-of v2, v0, Lbsh/ParseException;

    if-eqz v2, :cond_67

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_67
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_6a
    .catchall {:try_start_5a .. :try_end_6a} :catchall_4e

    :catchall_6a
    move-exception v0

    move v1, v3

    goto :goto_4f

    :catchall_6d
    move-exception v0

    move v1, v2

    goto :goto_4f

    :catch_70
    move-exception v0

    move v1, v2

    goto :goto_3f
.end method

.method public final EmptyStatement()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    return-void
.end method

.method public final EnhancedForStatement()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Lbsh/BSHEnhancedForStatement;

    const/16 v0, 0x20

    invoke-direct {v4, v0}, Lbsh/BSHEnhancedForStatement;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/4 v0, 0x4

    :try_start_13
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_30(I)Z

    move-result v0

    if-eqz v0, :cond_47

    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    const/16 v1, 0x59

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Statement()V

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_3f} :catch_5c
    .catchall {:try_start_13 .. :try_end_3f} :catchall_c0

    :try_start_3f
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v0, v4, Lbsh/BSHEnhancedForStatement;->varName:Ljava/lang/String;
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_46} :catch_ac
    .catchall {:try_start_3f .. :try_end_46} :catchall_6c

    :goto_46
    return-void

    :cond_47
    :try_start_47
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_78

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_4f
    packed-switch v0, :pswitch_data_c6

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_5c} :catch_5c
    .catchall {:try_start_47 .. :try_end_5c} :catchall_c0

    :catch_5c
    move-exception v0

    move v1, v3

    :goto_5e
    if-eqz v1, :cond_af

    :try_start_60
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v4}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_c3

    :goto_65
    :try_start_65
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_b6

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception v0

    :goto_6d
    if-eqz v2, :cond_77

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v4, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_77
    throw v0

    :cond_78
    :try_start_78
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_4f

    :pswitch_7b
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Type()V

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    const/16 v1, 0x59

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Statement()V

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_a4} :catch_5c
    .catchall {:try_start_78 .. :try_end_a4} :catchall_c0

    :try_start_a4
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v0, v4, Lbsh/BSHEnhancedForStatement;->varName:Ljava/lang/String;
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_a4 .. :try_end_ab} :catch_ac
    .catchall {:try_start_a4 .. :try_end_ab} :catchall_6c

    goto :goto_46

    :catch_ac
    move-exception v0

    move v1, v2

    goto :goto_5e

    :cond_af
    :try_start_af
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2}, Lbsh/JJTParserState;->popNode()Lbsh/Node;
    :try_end_b4
    .catchall {:try_start_af .. :try_end_b4} :catchall_c3

    move v2, v1

    goto :goto_65

    :cond_b6
    :try_start_b6
    instance-of v1, v0, Lbsh/ParseException;

    if-eqz v1, :cond_bd

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_bd
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_c0
    .catchall {:try_start_b6 .. :try_end_c0} :catchall_6c

    :catchall_c0
    move-exception v0

    move v2, v3

    goto :goto_6d

    :catchall_c3
    move-exception v0

    move v2, v1

    goto :goto_6d

    :pswitch_data_c6
    .packed-switch 0x1e
        :pswitch_7b
    .end packed-switch
.end method

.method public final EqualityExpression()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, -0x1

    invoke-virtual {p0}, Lbsh/Parser;->InstanceOfExpression()V

    :goto_5
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_11

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_d
    sparse-switch v0, :sswitch_data_66

    return-void

    :cond_11
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_d

    :sswitch_14
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_28

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1c
    sparse-switch v0, :sswitch_data_70

    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_28
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1c

    :sswitch_2b
    const/16 v0, 0x5a

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    :goto_31
    invoke-virtual {p0}, Lbsh/Parser;->InstanceOfExpression()V

    new-instance v2, Lbsh/BSHBinaryExpression;

    const/16 v1, 0xf

    invoke-direct {v2, v1}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v1, 0x1

    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v2}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_44
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v2, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_53

    goto :goto_5

    :catchall_53
    move-exception v0

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v2, v6}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_5e
    throw v0

    :sswitch_5f
    const/16 v0, 0x5f

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_31

    :sswitch_data_66
    .sparse-switch
        0x5a -> :sswitch_14
        0x5f -> :sswitch_14
    .end sparse-switch

    :sswitch_data_70
    .sparse-switch
        0x5a -> :sswitch_2b
        0x5f -> :sswitch_5f
    .end sparse-switch
.end method

.method public final ExclusiveOrExpression()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v5, 0x2

    invoke-virtual {p0}, Lbsh/Parser;->AndExpression()V

    :goto_4
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_d
    packed-switch v0, :pswitch_data_48

    return-void

    :cond_11
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_d

    :pswitch_14
    const/16 v0, 0x6e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    invoke-virtual {p0}, Lbsh/Parser;->AndExpression()V

    new-instance v2, Lbsh/BSHBinaryExpression;

    const/16 v1, 0xf

    invoke-direct {v2, v1}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v1, 0x1

    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v2}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_2d
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v2, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_3b
    .catchall {:try_start_2d .. :try_end_3b} :catchall_3c

    goto :goto_4

    :catchall_3c
    move-exception v0

    if-eqz v1, :cond_47

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v2, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_47
    throw v0

    :pswitch_data_48
    .packed-switch 0x6e
        :pswitch_14
    .end packed-switch
.end method

.method public final Expression()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, -0x1

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_8(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lbsh/Parser;->Assignment()V

    :goto_d
    return-void

    :cond_e
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_22

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_16
    sparse-switch v0, :sswitch_data_2a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_22
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_16

    :sswitch_25
    invoke-virtual {p0}, Lbsh/Parser;->ConditionalExpression()V

    goto :goto_d

    nop

    :sswitch_data_2a
    .sparse-switch
        0xb -> :sswitch_25
        0xe -> :sswitch_25
        0x11 -> :sswitch_25
        0x16 -> :sswitch_25
        0x1a -> :sswitch_25
        0x1d -> :sswitch_25
        0x24 -> :sswitch_25
        0x26 -> :sswitch_25
        0x28 -> :sswitch_25
        0x29 -> :sswitch_25
        0x2f -> :sswitch_25
        0x37 -> :sswitch_25
        0x39 -> :sswitch_25
        0x3c -> :sswitch_25
        0x40 -> :sswitch_25
        0x42 -> :sswitch_25
        0x43 -> :sswitch_25
        0x45 -> :sswitch_25
        0x48 -> :sswitch_25
        0x56 -> :sswitch_25
        0x57 -> :sswitch_25
        0x64 -> :sswitch_25
        0x65 -> :sswitch_25
        0x66 -> :sswitch_25
        0x67 -> :sswitch_25
    .end sparse-switch
.end method

.method public final ForInit()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, -0x1

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_31(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lbsh/Parser;->TypedVariableDeclaration()V

    :goto_d
    return-void

    :cond_e
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_22

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_16
    sparse-switch v0, :sswitch_data_2a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_22
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_16

    :sswitch_25
    invoke-virtual {p0}, Lbsh/Parser;->StatementExpressionList()V

    goto :goto_d

    nop

    :sswitch_data_2a
    .sparse-switch
        0xb -> :sswitch_25
        0xe -> :sswitch_25
        0x11 -> :sswitch_25
        0x16 -> :sswitch_25
        0x1a -> :sswitch_25
        0x1d -> :sswitch_25
        0x24 -> :sswitch_25
        0x26 -> :sswitch_25
        0x28 -> :sswitch_25
        0x29 -> :sswitch_25
        0x2f -> :sswitch_25
        0x37 -> :sswitch_25
        0x39 -> :sswitch_25
        0x3c -> :sswitch_25
        0x40 -> :sswitch_25
        0x42 -> :sswitch_25
        0x43 -> :sswitch_25
        0x45 -> :sswitch_25
        0x48 -> :sswitch_25
        0x56 -> :sswitch_25
        0x57 -> :sswitch_25
        0x64 -> :sswitch_25
        0x65 -> :sswitch_25
        0x66 -> :sswitch_25
        0x67 -> :sswitch_25
    .end sparse-switch
.end method

.method public final ForStatement()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHForStatement;

    const/16 v0, 0x1f

    invoke-direct {v3, v0}, Lbsh/BSHForStatement;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x1e

    :try_start_13
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_57

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_23
    sparse-switch v0, :sswitch_data_9c

    :goto_26
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_7b

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_33
    sparse-switch v0, :sswitch_data_12e

    :goto_36
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_88

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_43
    sparse-switch v0, :sswitch_data_194

    :goto_46
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Statement()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_4e} :catch_61
    .catchall {:try_start_13 .. :try_end_4e} :catchall_85

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :cond_57
    :try_start_57
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_23

    :sswitch_5a
    invoke-virtual {p0}, Lbsh/Parser;->ForInit()V

    const/4 v0, 0x1

    iput-boolean v0, v3, Lbsh/BSHForStatement;->hasForInit:Z
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_60} :catch_61
    .catchall {:try_start_57 .. :try_end_60} :catchall_85

    goto :goto_26

    :catch_61
    move-exception v0

    :try_start_62
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_67
    .catchall {:try_start_62 .. :try_end_67} :catchall_85

    const/4 v1, 0x0

    :try_start_68
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_92

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_6f

    :catchall_6f
    move-exception v0

    :goto_70
    if-eqz v1, :cond_7a

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_7a
    throw v0

    :cond_7b
    :try_start_7b
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_33

    :sswitch_7e
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/4 v0, 0x1

    iput-boolean v0, v3, Lbsh/BSHForStatement;->hasExpression:Z

    goto :goto_36

    :catchall_85
    move-exception v0

    move v1, v2

    goto :goto_70

    :cond_88
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_43

    :sswitch_8b
    invoke-virtual {p0}, Lbsh/Parser;->ForUpdate()V

    const/4 v0, 0x1

    iput-boolean v0, v3, Lbsh/BSHForStatement;->hasForUpdate:Z
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_91} :catch_61
    .catchall {:try_start_7b .. :try_end_91} :catchall_85

    goto :goto_46

    :cond_92
    :try_start_92
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_99

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_99
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_9c
    .catchall {:try_start_92 .. :try_end_9c} :catchall_6f

    :sswitch_data_9c
    .sparse-switch
        0xa -> :sswitch_5a
        0xb -> :sswitch_5a
        0xe -> :sswitch_5a
        0x11 -> :sswitch_5a
        0x16 -> :sswitch_5a
        0x1a -> :sswitch_5a
        0x1b -> :sswitch_5a
        0x1d -> :sswitch_5a
        0x24 -> :sswitch_5a
        0x26 -> :sswitch_5a
        0x27 -> :sswitch_5a
        0x28 -> :sswitch_5a
        0x29 -> :sswitch_5a
        0x2b -> :sswitch_5a
        0x2c -> :sswitch_5a
        0x2d -> :sswitch_5a
        0x2f -> :sswitch_5a
        0x30 -> :sswitch_5a
        0x31 -> :sswitch_5a
        0x33 -> :sswitch_5a
        0x34 -> :sswitch_5a
        0x37 -> :sswitch_5a
        0x39 -> :sswitch_5a
        0x3a -> :sswitch_5a
        0x3c -> :sswitch_5a
        0x40 -> :sswitch_5a
        0x42 -> :sswitch_5a
        0x43 -> :sswitch_5a
        0x45 -> :sswitch_5a
        0x48 -> :sswitch_5a
        0x56 -> :sswitch_5a
        0x57 -> :sswitch_5a
        0x64 -> :sswitch_5a
        0x65 -> :sswitch_5a
        0x66 -> :sswitch_5a
        0x67 -> :sswitch_5a
    .end sparse-switch

    :sswitch_data_12e
    .sparse-switch
        0xb -> :sswitch_7e
        0xe -> :sswitch_7e
        0x11 -> :sswitch_7e
        0x16 -> :sswitch_7e
        0x1a -> :sswitch_7e
        0x1d -> :sswitch_7e
        0x24 -> :sswitch_7e
        0x26 -> :sswitch_7e
        0x28 -> :sswitch_7e
        0x29 -> :sswitch_7e
        0x2f -> :sswitch_7e
        0x37 -> :sswitch_7e
        0x39 -> :sswitch_7e
        0x3c -> :sswitch_7e
        0x40 -> :sswitch_7e
        0x42 -> :sswitch_7e
        0x43 -> :sswitch_7e
        0x45 -> :sswitch_7e
        0x48 -> :sswitch_7e
        0x56 -> :sswitch_7e
        0x57 -> :sswitch_7e
        0x64 -> :sswitch_7e
        0x65 -> :sswitch_7e
        0x66 -> :sswitch_7e
        0x67 -> :sswitch_7e
    .end sparse-switch

    :sswitch_data_194
    .sparse-switch
        0xb -> :sswitch_8b
        0xe -> :sswitch_8b
        0x11 -> :sswitch_8b
        0x16 -> :sswitch_8b
        0x1a -> :sswitch_8b
        0x1d -> :sswitch_8b
        0x24 -> :sswitch_8b
        0x26 -> :sswitch_8b
        0x28 -> :sswitch_8b
        0x29 -> :sswitch_8b
        0x2f -> :sswitch_8b
        0x37 -> :sswitch_8b
        0x39 -> :sswitch_8b
        0x3c -> :sswitch_8b
        0x40 -> :sswitch_8b
        0x42 -> :sswitch_8b
        0x43 -> :sswitch_8b
        0x45 -> :sswitch_8b
        0x48 -> :sswitch_8b
        0x56 -> :sswitch_8b
        0x57 -> :sswitch_8b
        0x64 -> :sswitch_8b
        0x65 -> :sswitch_8b
        0x66 -> :sswitch_8b
        0x67 -> :sswitch_8b
    .end sparse-switch
.end method

.method public final ForUpdate()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lbsh/Parser;->StatementExpressionList()V

    return-void
.end method

.method public final FormalComment()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    new-instance v2, Lbsh/BSHFormalComment;

    const/16 v0, 0x1a

    invoke-direct {v2, v0}, Lbsh/BSHFormalComment;-><init>(I)V

    const/4 v1, 0x1

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v2}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x44

    :try_start_12
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    iget-boolean v4, p0, Lbsh/Parser;->retainComments:Z

    invoke-virtual {v3, v2, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v0, v2, Lbsh/BSHFormalComment;->text:Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v0

    if-eqz v1, :cond_33

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    iget-boolean v3, p0, Lbsh/Parser;->retainComments:Z

    invoke-virtual {v1, v2, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_33
    throw v0
.end method

.method public final FormalParameter()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Lbsh/BSHFormalParameter;

    const/16 v0, 0x8

    invoke-direct {v4, v0}, Lbsh/BSHFormalParameter;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/4 v0, 0x2

    :try_start_13
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_5(I)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lbsh/Parser;->Type()V

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_28} :catch_45
    .catchall {:try_start_13 .. :try_end_28} :catchall_8c

    :try_start_28
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v0, v4, Lbsh/BSHFormalParameter;->name:Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2f} :catch_78
    .catchall {:try_start_28 .. :try_end_2f} :catchall_55

    :goto_2f
    return-void

    :cond_30
    :try_start_30
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_61

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_38
    packed-switch v0, :pswitch_data_92

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_45} :catch_45
    .catchall {:try_start_30 .. :try_end_45} :catchall_8c

    :catch_45
    move-exception v0

    move v1, v3

    :goto_47
    if-eqz v1, :cond_7b

    :try_start_49
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v4}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_8f

    :goto_4e
    :try_start_4e
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_82

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_55

    :catchall_55
    move-exception v0

    :goto_56
    if-eqz v2, :cond_60

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v4, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_60
    throw v0

    :cond_61
    :try_start_61
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_38

    :pswitch_64
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_70} :catch_45
    .catchall {:try_start_61 .. :try_end_70} :catchall_8c

    :try_start_70
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v0, v4, Lbsh/BSHFormalParameter;->name:Ljava/lang/String;
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_77} :catch_78
    .catchall {:try_start_70 .. :try_end_77} :catchall_55

    goto :goto_2f

    :catch_78
    move-exception v0

    move v1, v2

    goto :goto_47

    :cond_7b
    :try_start_7b
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2}, Lbsh/JJTParserState;->popNode()Lbsh/Node;
    :try_end_80
    .catchall {:try_start_7b .. :try_end_80} :catchall_8f

    move v2, v1

    goto :goto_4e

    :cond_82
    :try_start_82
    instance-of v1, v0, Lbsh/ParseException;

    if-eqz v1, :cond_89

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_89
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_8c
    .catchall {:try_start_82 .. :try_end_8c} :catchall_55

    :catchall_8c
    move-exception v0

    move v2, v3

    goto :goto_56

    :catchall_8f
    move-exception v0

    move v2, v1

    goto :goto_56

    :pswitch_data_92
    .packed-switch 0x45
        :pswitch_64
    .end packed-switch
.end method

.method public final FormalParameters()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHFormalParameters;

    const/4 v0, 0x7

    invoke-direct {v3, v0}, Lbsh/BSHFormalParameters;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x48

    :try_start_12
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_2e

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1d
    sparse-switch v0, :sswitch_data_74

    :goto_20
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_25} :catch_49
    .catchall {:try_start_12 .. :try_end_25} :catchall_70

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :cond_2e
    :try_start_2e
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1d

    :sswitch_31
    invoke-virtual {p0}, Lbsh/Parser;->FormalParameter()V

    :goto_34
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_63

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_3c
    packed-switch v0, :pswitch_data_9a

    goto :goto_20

    :pswitch_40
    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->FormalParameter()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_48} :catch_49
    .catchall {:try_start_2e .. :try_end_48} :catchall_70

    goto :goto_34

    :catch_49
    move-exception v0

    :try_start_4a
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_70

    const/4 v1, 0x0

    :try_start_50
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_66

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_57

    :catchall_57
    move-exception v0

    :goto_58
    if-eqz v1, :cond_62

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_62
    throw v0

    :cond_63
    :try_start_63
    iget v0, p0, Lbsh/Parser;->jj_ntk:I
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_65} :catch_49
    .catchall {:try_start_63 .. :try_end_65} :catchall_70

    goto :goto_3c

    :cond_66
    :try_start_66
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_6d

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_6d
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_70
    .catchall {:try_start_66 .. :try_end_70} :catchall_57

    :catchall_70
    move-exception v0

    move v1, v2

    goto :goto_58

    nop

    :sswitch_data_74
    .sparse-switch
        0xb -> :sswitch_31
        0xe -> :sswitch_31
        0x11 -> :sswitch_31
        0x16 -> :sswitch_31
        0x1d -> :sswitch_31
        0x24 -> :sswitch_31
        0x26 -> :sswitch_31
        0x2f -> :sswitch_31
        0x45 -> :sswitch_31
    .end sparse-switch

    :pswitch_data_9a
    .packed-switch 0x4f
        :pswitch_40
    .end packed-switch
.end method

.method public final IfStatement()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHIfStatement;

    const/16 v0, 0x1d

    invoke-direct {v3, v0}, Lbsh/BSHIfStatement;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x20

    :try_start_12
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Statement()V

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3a

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_2d} :catch_46
    .catchall {:try_start_12 .. :try_end_2d} :catchall_6a

    move-result v0

    :goto_2e
    packed-switch v0, :pswitch_data_6e

    :goto_31
    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :cond_3a
    :try_start_3a
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_2e

    :pswitch_3d
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Statement()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_45} :catch_46
    .catchall {:try_start_3a .. :try_end_45} :catchall_6a

    goto :goto_31

    :catch_46
    move-exception v0

    :try_start_47
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_6a

    const/4 v1, 0x0

    :try_start_4d
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_60

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_54

    :catchall_54
    move-exception v0

    :goto_55
    if-eqz v1, :cond_5f

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_5f
    throw v0

    :cond_60
    :try_start_60
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_67

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_67
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_6a
    .catchall {:try_start_60 .. :try_end_6a} :catchall_54

    :catchall_6a
    move-exception v0

    move v1, v2

    goto :goto_55

    nop

    :pswitch_data_6e
    .packed-switch 0x17
        :pswitch_3d
    .end packed-switch
.end method

.method public final ImportDeclaration()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x1

    new-instance v5, Lbsh/BSHImportDeclaration;

    const/4 v0, 0x4

    invoke-direct {v5, v0}, Lbsh/BSHImportDeclaration;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v5}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v5}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x3

    :try_start_14
    invoke-direct {p0, v4}, Lbsh/Parser;->jj_2_3(I)Z

    move-result v4

    if-eqz v4, :cond_88

    iget v4, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v4, v6, :cond_52

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v4

    :goto_22
    packed-switch v4, :pswitch_data_d6

    move-object v4, v1

    :goto_26
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v1, v6, :cond_5d

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :goto_36
    packed-switch v1, :pswitch_data_dc

    :goto_39
    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_44} :catch_6c
    .catchall {:try_start_14 .. :try_end_44} :catchall_9d

    :try_start_44
    invoke-virtual {p0, v5}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    if-eqz v4, :cond_4c

    const/4 v1, 0x1

    iput-boolean v1, v5, Lbsh/BSHImportDeclaration;->staticImport:Z

    :cond_4c
    if-eqz v0, :cond_51

    const/4 v0, 0x1

    iput-boolean v0, v5, Lbsh/BSHImportDeclaration;->importPackage:Z
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_51} :catch_bf
    .catchall {:try_start_44 .. :try_end_51} :catchall_7c

    :cond_51
    :goto_51
    return-void

    :cond_52
    :try_start_52
    iget v4, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_22

    :pswitch_55
    const/16 v1, 0x30

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v1

    move-object v4, v1

    goto :goto_26

    :cond_5d
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_36

    :pswitch_60
    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    const/16 v1, 0x68

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_6b} :catch_6c
    .catchall {:try_start_52 .. :try_end_6b} :catchall_9d

    goto :goto_39

    :catch_6c
    move-exception v0

    move v1, v2

    :goto_6e
    if-eqz v1, :cond_c2

    :try_start_70
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v5}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_75
    .catchall {:try_start_70 .. :try_end_75} :catchall_d3

    :goto_75
    :try_start_75
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_c9

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_7c

    :catchall_7c
    move-exception v0

    :goto_7d
    if-eqz v3, :cond_87

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v5, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v5}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_87
    throw v0

    :cond_88
    :try_start_88
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v6, :cond_a0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_90
    packed-switch v0, :pswitch_data_e2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :catchall_9d
    move-exception v0

    move v3, v2

    goto :goto_7d

    :cond_a0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_90

    :pswitch_a3
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v5, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_b8} :catch_6c
    .catchall {:try_start_88 .. :try_end_b8} :catchall_9d

    :try_start_b8
    invoke-virtual {p0, v5}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    const/4 v0, 0x1

    iput-boolean v0, v5, Lbsh/BSHImportDeclaration;->superImport:Z
    :try_end_be
    .catch Ljava/lang/Throwable; {:try_start_b8 .. :try_end_be} :catch_bf
    .catchall {:try_start_b8 .. :try_end_be} :catchall_7c

    goto :goto_51

    :catch_bf
    move-exception v0

    move v1, v3

    goto :goto_6e

    :cond_c2
    :try_start_c2
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3}, Lbsh/JJTParserState;->popNode()Lbsh/Node;
    :try_end_c7
    .catchall {:try_start_c2 .. :try_end_c7} :catchall_d3

    move v3, v1

    goto :goto_75

    :cond_c9
    :try_start_c9
    instance-of v1, v0, Lbsh/ParseException;

    if-eqz v1, :cond_d0

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_d0
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_d3
    .catchall {:try_start_c9 .. :try_end_d3} :catchall_7c

    :catchall_d3
    move-exception v0

    move v3, v1

    goto :goto_7d

    :pswitch_data_d6
    .packed-switch 0x30
        :pswitch_55
    .end packed-switch

    :pswitch_data_dc
    .packed-switch 0x50
        :pswitch_60
    .end packed-switch

    :pswitch_data_e2
    .packed-switch 0x22
        :pswitch_a3
    .end packed-switch
.end method

.method public final InclusiveOrExpression()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, -0x1

    invoke-virtual {p0}, Lbsh/Parser;->ExclusiveOrExpression()V

    :goto_5
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_11

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_d
    packed-switch v0, :pswitch_data_66

    return-void

    :cond_11
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_d

    :pswitch_14
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_28

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1c
    packed-switch v0, :pswitch_data_6e

    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_28
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1c

    :pswitch_2b
    const/16 v0, 0x6c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    :goto_31
    invoke-virtual {p0}, Lbsh/Parser;->ExclusiveOrExpression()V

    new-instance v2, Lbsh/BSHBinaryExpression;

    const/16 v1, 0xf

    invoke-direct {v2, v1}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v1, 0x1

    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v2}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_44
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v2, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_53

    goto :goto_5

    :catchall_53
    move-exception v0

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v2, v6}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_5e
    throw v0

    :pswitch_5f
    const/16 v0, 0x6d

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_31

    :pswitch_data_66
    .packed-switch 0x6c
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_6e
    .packed-switch 0x6c
        :pswitch_2b
        :pswitch_5f
    .end packed-switch
.end method

.method public final InstanceOfExpression()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v5, 0x2

    invoke-virtual {p0}, Lbsh/Parser;->RelationalExpression()V

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_d
    packed-switch v0, :pswitch_data_48

    :goto_10
    return-void

    :cond_11
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_d

    :pswitch_14
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    invoke-virtual {p0}, Lbsh/Parser;->Type()V

    new-instance v2, Lbsh/BSHBinaryExpression;

    const/16 v1, 0xf

    invoke-direct {v2, v1}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v1, 0x1

    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v2}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_2d
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v2, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_3b
    .catchall {:try_start_2d .. :try_end_3b} :catchall_3c

    goto :goto_10

    :catchall_3c
    move-exception v0

    if-eqz v1, :cond_47

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v2, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_47
    throw v0

    :pswitch_data_48
    .packed-switch 0x23
        :pswitch_14
    .end packed-switch
.end method

.method public final LabeledStatement()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Statement()V

    return-void
.end method

.method public final Line()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    iget v2, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v2, v3, :cond_19

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v2

    :goto_b
    packed-switch v2, :pswitch_data_2e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_1(I)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lbsh/Parser;->BlockStatement()V

    move v0, v1

    :goto_18
    return v0

    :cond_19
    iget v2, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_b

    :pswitch_1c
    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const-string v1, "End of File!"

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    goto :goto_18

    :cond_25
    invoke-direct {p0, v3}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1c
    .end packed-switch
.end method

.method public final Literal()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lbsh/BSHLiteral;

    const/16 v0, 0x15

    invoke-direct {v4, v0}, Lbsh/BSHLiteral;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_12
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_43

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1a
    sparse-switch v0, :sswitch_data_1e6

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_27} :catch_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_1de

    :catch_27
    move-exception v0

    move v1, v2

    :goto_29
    if-eqz v1, :cond_1cc

    :try_start_2b
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v4}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_1e2

    :goto_30
    :try_start_30
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1d4

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception v0

    :goto_38
    if-eqz v3, :cond_42

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v4, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_42
    throw v0

    :cond_43
    :try_start_43
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1a

    :sswitch_46
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_52} :catch_27
    .catchall {:try_start_43 .. :try_end_52} :catchall_1de

    :try_start_52
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x6c

    if-eq v1, v5, :cond_69

    const/16 v5, 0x4c

    if-ne v1, v5, :cond_85

    :cond_69
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lbsh/Primitive;

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Lbsh/Primitive;-><init>(J)V

    iput-object v1, v4, Lbsh/BSHLiteral;->value:Ljava/lang/Object;
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_84} :catch_ae
    .catchall {:try_start_52 .. :try_end_84} :catchall_37

    :goto_84
    return-void

    :cond_85
    :try_start_85
    new-instance v1, Lbsh/Primitive;

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v1, v5}, Lbsh/Primitive;-><init>(I)V

    iput-object v1, v4, Lbsh/BSHLiteral;->value:Ljava/lang/Object;
    :try_end_94
    .catch Ljava/lang/NumberFormatException; {:try_start_85 .. :try_end_94} :catch_95
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_94} :catch_ae
    .catchall {:try_start_85 .. :try_end_94} :catchall_37

    goto :goto_84

    :catch_95
    move-exception v1

    :try_start_96
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Error or number too big for integer type: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/Parser;->createParseException(Ljava/lang/String;)Lbsh/ParseException;

    move-result-object v0

    throw v0
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_ae} :catch_ae
    .catchall {:try_start_96 .. :try_end_ae} :catchall_37

    :catch_ae
    move-exception v0

    move v1, v3

    goto/16 :goto_29

    :sswitch_b2
    const/16 v0, 0x40

    :try_start_b4
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_be
    .catch Ljava/lang/Throwable; {:try_start_b4 .. :try_end_be} :catch_27
    .catchall {:try_start_b4 .. :try_end_be} :catchall_1de

    :try_start_be
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x66

    if-eq v1, v5, :cond_d5

    const/16 v5, 0x46

    if-ne v1, v5, :cond_f1

    :cond_d5
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lbsh/Primitive;

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, v0}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {v1, v0}, Lbsh/Primitive;-><init>(F)V

    iput-object v1, v4, Lbsh/BSHLiteral;->value:Ljava/lang/Object;

    goto :goto_84

    :cond_f1
    const/16 v5, 0x64

    if-eq v1, v5, :cond_f9

    const/16 v5, 0x44

    if-ne v1, v5, :cond_104

    :cond_f9
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_104
    new-instance v1, Lbsh/Primitive;

    new-instance v5, Ljava/lang/Double;

    invoke-direct {v5, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Lbsh/Primitive;-><init>(D)V

    iput-object v1, v4, Lbsh/BSHLiteral;->value:Ljava/lang/Object;
    :try_end_114
    .catch Ljava/lang/Throwable; {:try_start_be .. :try_end_114} :catch_ae
    .catchall {:try_start_be .. :try_end_114} :catchall_37

    goto/16 :goto_84

    :sswitch_116
    const/16 v0, 0x42

    :try_start_118
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_122
    .catch Ljava/lang/Throwable; {:try_start_118 .. :try_end_122} :catch_27
    .catchall {:try_start_118 .. :try_end_122} :catchall_1de

    :try_start_122
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V
    :try_end_125
    .catch Ljava/lang/Throwable; {:try_start_122 .. :try_end_125} :catch_ae
    .catchall {:try_start_122 .. :try_end_125} :catchall_37

    :try_start_125
    iget-object v1, v0, Lbsh/Token;->image:Ljava/lang/String;

    const/4 v5, 0x1

    iget-object v6, v0, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lbsh/BSHLiteral;->charSetup(Ljava/lang/String;)V
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_137} :catch_139
    .catch Ljava/lang/Throwable; {:try_start_125 .. :try_end_137} :catch_ae
    .catchall {:try_start_125 .. :try_end_137} :catchall_37

    goto/16 :goto_84

    :catch_139
    move-exception v1

    :try_start_13a
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Error parsing character: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/Parser;->createParseException(Ljava/lang/String;)Lbsh/ParseException;

    move-result-object v0

    throw v0
    :try_end_154
    .catch Ljava/lang/Throwable; {:try_start_13a .. :try_end_154} :catch_ae
    .catchall {:try_start_13a .. :try_end_154} :catchall_37

    :sswitch_154
    const/16 v0, 0x43

    :try_start_156
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_160
    .catch Ljava/lang/Throwable; {:try_start_156 .. :try_end_160} :catch_27
    .catchall {:try_start_156 .. :try_end_160} :catchall_1de

    :try_start_160
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V
    :try_end_163
    .catch Ljava/lang/Throwable; {:try_start_160 .. :try_end_163} :catch_ae
    .catchall {:try_start_160 .. :try_end_163} :catchall_37

    :try_start_163
    iget-object v1, v0, Lbsh/Token;->image:Ljava/lang/String;

    const/4 v5, 0x1

    iget-object v6, v0, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lbsh/BSHLiteral;->stringSetup(Ljava/lang/String;)V
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_175} :catch_177
    .catch Ljava/lang/Throwable; {:try_start_163 .. :try_end_175} :catch_ae
    .catchall {:try_start_163 .. :try_end_175} :catchall_37

    goto/16 :goto_84

    :catch_177
    move-exception v1

    :try_start_178
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Error parsing string: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/Parser;->createParseException(Ljava/lang/String;)Lbsh/ParseException;

    move-result-object v0

    throw v0
    :try_end_192
    .catch Ljava/lang/Throwable; {:try_start_178 .. :try_end_192} :catch_ae
    .catchall {:try_start_178 .. :try_end_192} :catchall_37

    :sswitch_192
    :try_start_192
    invoke-virtual {p0}, Lbsh/Parser;->BooleanLiteral()Z

    move-result v0

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_19c
    .catch Ljava/lang/Throwable; {:try_start_192 .. :try_end_19c} :catch_27
    .catchall {:try_start_192 .. :try_end_19c} :catchall_1de

    :try_start_19c
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    new-instance v1, Lbsh/Primitive;

    invoke-direct {v1, v0}, Lbsh/Primitive;-><init>(Z)V

    iput-object v1, v4, Lbsh/BSHLiteral;->value:Ljava/lang/Object;
    :try_end_1a6
    .catch Ljava/lang/Throwable; {:try_start_19c .. :try_end_1a6} :catch_ae
    .catchall {:try_start_19c .. :try_end_1a6} :catchall_37

    goto/16 :goto_84

    :sswitch_1a8
    :try_start_1a8
    invoke-virtual {p0}, Lbsh/Parser;->NullLiteral()V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_1b1
    .catch Ljava/lang/Throwable; {:try_start_1a8 .. :try_end_1b1} :catch_27
    .catchall {:try_start_1a8 .. :try_end_1b1} :catchall_1de

    :try_start_1b1
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    iput-object v0, v4, Lbsh/BSHLiteral;->value:Ljava/lang/Object;
    :try_end_1b8
    .catch Ljava/lang/Throwable; {:try_start_1b1 .. :try_end_1b8} :catch_ae
    .catchall {:try_start_1b1 .. :try_end_1b8} :catchall_37

    goto/16 :goto_84

    :sswitch_1ba
    :try_start_1ba
    invoke-virtual {p0}, Lbsh/Parser;->VoidLiteral()V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_1c3
    .catch Ljava/lang/Throwable; {:try_start_1ba .. :try_end_1c3} :catch_27
    .catchall {:try_start_1ba .. :try_end_1c3} :catchall_1de

    :try_start_1c3
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    iput-object v0, v4, Lbsh/BSHLiteral;->value:Ljava/lang/Object;
    :try_end_1ca
    .catch Ljava/lang/Throwable; {:try_start_1c3 .. :try_end_1ca} :catch_ae
    .catchall {:try_start_1c3 .. :try_end_1ca} :catchall_37

    goto/16 :goto_84

    :cond_1cc
    :try_start_1cc
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3}, Lbsh/JJTParserState;->popNode()Lbsh/Node;
    :try_end_1d1
    .catchall {:try_start_1cc .. :try_end_1d1} :catchall_1e2

    move v3, v1

    goto/16 :goto_30

    :cond_1d4
    :try_start_1d4
    instance-of v1, v0, Lbsh/ParseException;

    if-eqz v1, :cond_1db

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_1db
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_1de
    .catchall {:try_start_1d4 .. :try_end_1de} :catchall_37

    :catchall_1de
    move-exception v0

    move v3, v2

    goto/16 :goto_38

    :catchall_1e2
    move-exception v0

    move v3, v1

    goto/16 :goto_38

    :sswitch_data_1e6
    .sparse-switch
        0x1a -> :sswitch_192
        0x29 -> :sswitch_1a8
        0x37 -> :sswitch_192
        0x39 -> :sswitch_1ba
        0x3c -> :sswitch_46
        0x40 -> :sswitch_b2
        0x42 -> :sswitch_116
        0x43 -> :sswitch_154
    .end sparse-switch
.end method

.method public final MethodDeclaration()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v5, -0x1

    new-instance v3, Lbsh/BSHMethodDeclaration;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Lbsh/BSHMethodDeclaration;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/4 v0, 0x1

    const/4 v4, 0x0

    :try_start_13
    invoke-virtual {p0, v0, v4}, Lbsh/Parser;->Modifiers(IZ)Lbsh/Modifiers;

    move-result-object v0

    iput-object v0, v3, Lbsh/BSHMethodDeclaration;->modifiers:Lbsh/Modifiers;

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_2(I)Z

    move-result v0

    if-eqz v0, :cond_68

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v0, v3, Lbsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    :goto_2c
    invoke-virtual {p0}, Lbsh/Parser;->FormalParameters()V

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_91

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_37
    packed-switch v0, :pswitch_data_c0

    :goto_3a
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_a0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_42
    sparse-switch v0, :sswitch_data_c6

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_4f} :catch_4f
    .catchall {:try_start_13 .. :try_end_4f} :catchall_7d

    :catch_4f
    move-exception v0

    :try_start_50
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_7d

    :try_start_55
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_b5

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception v0

    :goto_5d
    if-eqz v1, :cond_67

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_67
    throw v0

    :cond_68
    :try_start_68
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_80

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_70
    sparse-switch v0, :sswitch_data_d0

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :catchall_7d
    move-exception v0

    move v1, v2

    goto :goto_5d

    :cond_80
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_70

    :sswitch_83
    invoke-virtual {p0}, Lbsh/Parser;->ReturnType()V

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v0, v3, Lbsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    goto :goto_2c

    :cond_91
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_37

    :pswitch_94
    const/16 v0, 0x36

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->NameList()I

    move-result v0

    iput v0, v3, Lbsh/BSHMethodDeclaration;->numThrows:I

    goto :goto_3a

    :cond_a0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_42

    :sswitch_a3
    invoke-virtual {p0}, Lbsh/Parser;->Block()V
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_a6} :catch_4f
    .catchall {:try_start_68 .. :try_end_a6} :catchall_7d

    :goto_a6
    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :sswitch_af
    const/16 v0, 0x4e

    :try_start_b1
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_b4} :catch_4f
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_7d

    goto :goto_a6

    :cond_b5
    :try_start_b5
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_bc

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_bc
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_bf
    .catchall {:try_start_b5 .. :try_end_bf} :catchall_5c

    nop

    :pswitch_data_c0
    .packed-switch 0x36
        :pswitch_94
    .end packed-switch

    :sswitch_data_c6
    .sparse-switch
        0x4a -> :sswitch_a3
        0x4e -> :sswitch_af
    .end sparse-switch

    :sswitch_data_d0
    .sparse-switch
        0xb -> :sswitch_83
        0xe -> :sswitch_83
        0x11 -> :sswitch_83
        0x16 -> :sswitch_83
        0x1d -> :sswitch_83
        0x24 -> :sswitch_83
        0x26 -> :sswitch_83
        0x2f -> :sswitch_83
        0x39 -> :sswitch_83
        0x45 -> :sswitch_83
    .end sparse-switch
.end method

.method public final MethodInvocation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHMethodInvocation;

    const/16 v0, 0x13

    invoke-direct {v3, v0}, Lbsh/BSHMethodInvocation;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_10
    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    invoke-virtual {p0}, Lbsh/Parser;->Arguments()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_16} :catch_1f
    .catchall {:try_start_10 .. :try_end_16} :catchall_43

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :catch_1f
    move-exception v0

    :try_start_20
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_43

    const/4 v1, 0x0

    :try_start_26
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_39

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v0

    :goto_2e
    if-eqz v1, :cond_38

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_38
    throw v0

    :cond_39
    :try_start_39
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_40

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_40
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_2d

    :catchall_43
    move-exception v0

    move v1, v2

    goto :goto_2e
.end method

.method public final Modifiers(IZ)Lbsh/Modifiers;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, -0x1

    const/4 v0, 0x0

    :cond_2
    :goto_2
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v1, v2, :cond_e

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :goto_a
    sparse-switch v1, :sswitch_data_88

    return-object v0

    :cond_e
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_a

    :sswitch_11
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v1, v2, :cond_25

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :goto_19
    sparse-switch v1, :sswitch_data_b6

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_25
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_19

    :sswitch_28
    const/16 v1, 0x2b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    :goto_2d
    if-nez p2, :cond_2

    if-nez v0, :cond_36

    :try_start_31
    new-instance v0, Lbsh/Modifiers;

    invoke-direct {v0}, Lbsh/Modifiers;-><init>()V

    :cond_36
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lbsh/Parser;->getToken(I)Lbsh/Token;

    move-result-object v1

    iget-object v1, v1, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lbsh/Modifiers;->addModifier(ILjava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/IllegalStateException; {:try_start_31 .. :try_end_40} :catch_41

    goto :goto_2

    :catch_41
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsh/Parser;->createParseException(Ljava/lang/String;)Lbsh/ParseException;

    move-result-object v0

    throw v0

    :sswitch_4b
    const/16 v1, 0x2c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_2d

    :sswitch_51
    const/16 v1, 0x2d

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_2d

    :sswitch_57
    const/16 v1, 0x33

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_2d

    :sswitch_5d
    const/16 v1, 0x1b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_2d

    :sswitch_63
    const/16 v1, 0x27

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_2d

    :sswitch_69
    const/16 v1, 0x34

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_2d

    :sswitch_6f
    const/16 v1, 0x3a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_2d

    :sswitch_75
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_2d

    :sswitch_7b
    const/16 v1, 0x30

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_2d

    :sswitch_81
    const/16 v1, 0x31

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_2d

    nop

    :sswitch_data_88
    .sparse-switch
        0xa -> :sswitch_11
        0x1b -> :sswitch_11
        0x27 -> :sswitch_11
        0x2b -> :sswitch_11
        0x2c -> :sswitch_11
        0x2d -> :sswitch_11
        0x30 -> :sswitch_11
        0x31 -> :sswitch_11
        0x33 -> :sswitch_11
        0x34 -> :sswitch_11
        0x3a -> :sswitch_11
    .end sparse-switch

    :sswitch_data_b6
    .sparse-switch
        0xa -> :sswitch_75
        0x1b -> :sswitch_5d
        0x27 -> :sswitch_63
        0x2b -> :sswitch_28
        0x2c -> :sswitch_4b
        0x2d -> :sswitch_51
        0x30 -> :sswitch_7b
        0x31 -> :sswitch_81
        0x33 -> :sswitch_57
        0x34 -> :sswitch_69
        0x3a -> :sswitch_6f
    .end sparse-switch
.end method

.method public final MultiplicativeExpression()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, -0x1

    invoke-virtual {p0}, Lbsh/Parser;->UnaryExpression()V

    :goto_5
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_11

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_d
    sparse-switch v0, :sswitch_data_6e

    return-void

    :cond_11
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_d

    :sswitch_14
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_28

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1c
    sparse-switch v0, :sswitch_data_7c

    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_28
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1c

    :sswitch_2b
    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    :goto_31
    invoke-virtual {p0}, Lbsh/Parser;->UnaryExpression()V

    new-instance v2, Lbsh/BSHBinaryExpression;

    const/16 v1, 0xf

    invoke-direct {v2, v1}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v1, 0x1

    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v2}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_44
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v2, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_53

    goto :goto_5

    :catchall_53
    move-exception v0

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v2, v6}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_5e
    throw v0

    :sswitch_5f
    const/16 v0, 0x69

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_31

    :sswitch_66
    const/16 v0, 0x6f

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_31

    nop

    :sswitch_data_6e
    .sparse-switch
        0x68 -> :sswitch_14
        0x69 -> :sswitch_14
        0x6f -> :sswitch_14
    .end sparse-switch

    :sswitch_data_7c
    .sparse-switch
        0x68 -> :sswitch_2b
        0x69 -> :sswitch_5f
        0x6f -> :sswitch_66
    .end sparse-switch
.end method

.method public final NameList()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    const/4 v0, 0x1

    :goto_4
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :goto_d
    packed-switch v1, :pswitch_data_20

    return v0

    :cond_11
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_d

    :pswitch_14
    const/16 v1, 0x4f

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    nop

    :pswitch_data_20
    .packed-switch 0x4f
        :pswitch_14
    .end packed-switch
.end method

.method public final NullLiteral()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/16 v0, 0x29

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    return-void
.end method

.method public final PackageDeclaration()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHPackageDeclaration;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Lbsh/BSHPackageDeclaration;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x2a

    :try_start_11
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_17} :catch_20
    .catchall {:try_start_11 .. :try_end_17} :catchall_44

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :catch_20
    move-exception v0

    :try_start_21
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_44

    const/4 v1, 0x0

    :try_start_27
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_3a

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v0

    :goto_2f
    if-eqz v1, :cond_39

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_39
    throw v0

    :cond_3a
    :try_start_3a
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_41

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_41
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_2e

    :catchall_44
    move-exception v0

    move v1, v2

    goto :goto_2f
.end method

.method public final PostfixExpression()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, -0x1

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_12(I)Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-virtual {p0}, Lbsh/Parser;->PrimaryExpression()V

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_22

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_16
    packed-switch v0, :pswitch_data_7e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_22
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_16

    :pswitch_25
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    :goto_2b
    new-instance v3, Lbsh/BSHUnaryExpression;

    const/16 v1, 0x10

    invoke-direct {v3, v1}, Lbsh/BSHUnaryExpression;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_3a
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_53

    const/4 v1, 0x0

    :try_start_41
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v3, Lbsh/BSHUnaryExpression;->kind:I

    const/4 v0, 0x1

    iput-boolean v0, v3, Lbsh/BSHUnaryExpression;->postfix:Z
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_7b

    :goto_4b
    return-void

    :pswitch_4c
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_2b

    :catchall_53
    move-exception v0

    move v1, v2

    :goto_55
    if-eqz v1, :cond_5f

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_5f
    throw v0

    :cond_60
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_74

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_68
    sparse-switch v0, :sswitch_data_86

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_74
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_68

    :sswitch_77
    invoke-virtual {p0}, Lbsh/Parser;->PrimaryExpression()V

    goto :goto_4b

    :catchall_7b
    move-exception v0

    goto :goto_55

    nop

    :pswitch_data_7e
    .packed-switch 0x64
        :pswitch_25
        :pswitch_4c
    .end packed-switch

    :sswitch_data_86
    .sparse-switch
        0xb -> :sswitch_77
        0xe -> :sswitch_77
        0x11 -> :sswitch_77
        0x16 -> :sswitch_77
        0x1a -> :sswitch_77
        0x1d -> :sswitch_77
        0x24 -> :sswitch_77
        0x26 -> :sswitch_77
        0x28 -> :sswitch_77
        0x29 -> :sswitch_77
        0x2f -> :sswitch_77
        0x37 -> :sswitch_77
        0x39 -> :sswitch_77
        0x3c -> :sswitch_77
        0x40 -> :sswitch_77
        0x42 -> :sswitch_77
        0x43 -> :sswitch_77
        0x45 -> :sswitch_77
        0x48 -> :sswitch_77
    .end sparse-switch
.end method

.method public final PreDecrementExpression()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    invoke-virtual {p0}, Lbsh/Parser;->PrimaryExpression()V

    new-instance v3, Lbsh/BSHUnaryExpression;

    const/16 v1, 0x10

    invoke-direct {v3, v1}, Lbsh/BSHUnaryExpression;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_19
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_28

    const/4 v1, 0x0

    :try_start_20
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v3, Lbsh/BSHUnaryExpression;->kind:I
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_35

    return-void

    :catchall_28
    move-exception v0

    move v1, v2

    :goto_2a
    if-eqz v1, :cond_34

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_34
    throw v0

    :catchall_35
    move-exception v0

    goto :goto_2a
.end method

.method public final PreIncrementExpression()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    invoke-virtual {p0}, Lbsh/Parser;->PrimaryExpression()V

    new-instance v3, Lbsh/BSHUnaryExpression;

    const/16 v1, 0x10

    invoke-direct {v3, v1}, Lbsh/BSHUnaryExpression;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_19
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_28

    const/4 v1, 0x0

    :try_start_20
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v3, Lbsh/BSHUnaryExpression;->kind:I
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_35

    return-void

    :catchall_28
    move-exception v0

    move v1, v2

    :goto_2a
    if-eqz v1, :cond_34

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_34
    throw v0

    :catchall_35
    move-exception v0

    goto :goto_2a
.end method

.method public final PrimaryExpression()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHPrimaryExpression;

    const/16 v0, 0x12

    invoke-direct {v3, v0}, Lbsh/BSHPrimaryExpression;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_10
    invoke-virtual {p0}, Lbsh/Parser;->PrimaryPrefix()V

    :goto_13
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1b} :catch_2f
    .catchall {:try_start_10 .. :try_end_1b} :catchall_53

    move-result v0

    :goto_1c
    sparse-switch v0, :sswitch_data_56

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :cond_28
    :try_start_28
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1c

    :sswitch_2b
    invoke-virtual {p0}, Lbsh/Parser;->PrimarySuffix()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2e} :catch_2f
    .catchall {:try_start_28 .. :try_end_2e} :catchall_53

    goto :goto_13

    :catch_2f
    move-exception v0

    :try_start_30
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_53

    const/4 v1, 0x0

    :try_start_36
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_49

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception v0

    :goto_3e
    if-eqz v1, :cond_48

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_48
    throw v0

    :cond_49
    :try_start_49
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_50

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_50
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_53
    .catchall {:try_start_49 .. :try_end_53} :catchall_3d

    :catchall_53
    move-exception v0

    move v1, v2

    goto :goto_3e

    :sswitch_data_56
    .sparse-switch
        0x4a -> :sswitch_2b
        0x4c -> :sswitch_2b
        0x50 -> :sswitch_2b
    .end sparse-switch
.end method

.method public final PrimaryPrefix()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const v2, 0x7fffffff

    const/4 v1, -0x1

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_19

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_c
    sparse-switch v0, :sswitch_data_58

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_2_14(I)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lbsh/Parser;->MethodInvocation()V

    :goto_18
    return-void

    :cond_19
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_c

    :sswitch_1c
    invoke-virtual {p0}, Lbsh/Parser;->Literal()V

    goto :goto_18

    :sswitch_20
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_18

    :sswitch_2e
    invoke-virtual {p0}, Lbsh/Parser;->AllocationExpression()V

    goto :goto_18

    :cond_32
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_2_15(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lbsh/Parser;->Type()V

    goto :goto_18

    :cond_3c
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_50

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_44
    packed-switch v0, :pswitch_data_82

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_50
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_44

    :pswitch_53
    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    goto :goto_18

    nop

    :sswitch_data_58
    .sparse-switch
        0x1a -> :sswitch_1c
        0x28 -> :sswitch_2e
        0x29 -> :sswitch_1c
        0x37 -> :sswitch_1c
        0x39 -> :sswitch_1c
        0x3c -> :sswitch_1c
        0x40 -> :sswitch_1c
        0x42 -> :sswitch_1c
        0x43 -> :sswitch_1c
        0x48 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_82
    .packed-switch 0x45
        :pswitch_53
    .end packed-switch
.end method

.method public final PrimarySuffix()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Lbsh/BSHPrimarySuffix;

    const/16 v0, 0x14

    invoke-direct {v4, v0}, Lbsh/BSHPrimarySuffix;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/4 v0, 0x2

    :try_start_13
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_16(I)Z

    move-result v0

    if-eqz v0, :cond_30

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_29} :catch_45
    .catchall {:try_start_13 .. :try_end_29} :catchall_af

    :try_start_29
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    const/4 v0, 0x0

    iput v0, v4, Lbsh/BSHPrimarySuffix;->operation:I
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2f} :catch_7e
    .catchall {:try_start_29 .. :try_end_2f} :catchall_55

    :goto_2f
    return-void

    :cond_30
    :try_start_30
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_61

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_38
    sparse-switch v0, :sswitch_data_e4

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_45} :catch_45
    .catchall {:try_start_30 .. :try_end_45} :catchall_af

    :catch_45
    move-exception v0

    move v1, v3

    :goto_47
    if-eqz v1, :cond_cd

    :try_start_49
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v4}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_df

    :goto_4e
    :try_start_4e
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_d5

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_55

    :catchall_55
    move-exception v0

    :goto_56
    if-eqz v2, :cond_60

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v4, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_60
    throw v0

    :cond_61
    :try_start_61
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_38

    :sswitch_64
    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_77} :catch_45
    .catchall {:try_start_61 .. :try_end_77} :catchall_af

    :try_start_77
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    const/4 v0, 0x1

    iput v0, v4, Lbsh/BSHPrimarySuffix;->operation:I
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_7d} :catch_7e
    .catchall {:try_start_77 .. :try_end_7d} :catchall_55

    goto :goto_2f

    :catch_7e
    move-exception v0

    move v1, v2

    goto :goto_47

    :sswitch_81
    const/16 v0, 0x50

    :try_start_83
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v1

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_a8

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_94
    packed-switch v0, :pswitch_data_f2

    :goto_97
    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_9d} :catch_45
    .catchall {:try_start_83 .. :try_end_9d} :catchall_af

    :try_start_9d
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    const/4 v0, 0x2

    iput v0, v4, Lbsh/BSHPrimarySuffix;->operation:I

    iget-object v0, v1, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v0, v4, Lbsh/BSHPrimarySuffix;->field:Ljava/lang/String;
    :try_end_a7
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_a7} :catch_7e
    .catchall {:try_start_9d .. :try_end_a7} :catchall_55

    goto :goto_2f

    :cond_a8
    :try_start_a8
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_94

    :pswitch_ab
    invoke-virtual {p0}, Lbsh/Parser;->Arguments()V

    goto :goto_97

    :catchall_af
    move-exception v0

    move v2, v3

    goto :goto_56

    :sswitch_b2
    const/16 v0, 0x4a

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v0, 0x4b

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_c5} :catch_45
    .catchall {:try_start_a8 .. :try_end_c5} :catchall_af

    :try_start_c5
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    const/4 v0, 0x3

    iput v0, v4, Lbsh/BSHPrimarySuffix;->operation:I
    :try_end_cb
    .catch Ljava/lang/Throwable; {:try_start_c5 .. :try_end_cb} :catch_7e
    .catchall {:try_start_c5 .. :try_end_cb} :catchall_55

    goto/16 :goto_2f

    :cond_cd
    :try_start_cd
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2}, Lbsh/JJTParserState;->popNode()Lbsh/Node;
    :try_end_d2
    .catchall {:try_start_cd .. :try_end_d2} :catchall_df

    move v2, v1

    goto/16 :goto_4e

    :cond_d5
    :try_start_d5
    instance-of v1, v0, Lbsh/ParseException;

    if-eqz v1, :cond_dc

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_dc
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_df
    .catchall {:try_start_d5 .. :try_end_df} :catchall_55

    :catchall_df
    move-exception v0

    move v2, v1

    goto/16 :goto_56

    nop

    :sswitch_data_e4
    .sparse-switch
        0x4a -> :sswitch_b2
        0x4c -> :sswitch_64
        0x50 -> :sswitch_81
    .end sparse-switch

    :pswitch_data_f2
    .packed-switch 0x48
        :pswitch_ab
    .end packed-switch
.end method

.method public final PrimitiveType()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/16 v0, 0xb

    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHPrimitiveType;

    invoke-direct {v3, v0}, Lbsh/BSHPrimitiveType;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_12
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v4, :cond_34

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1a
    sparse-switch v0, :sswitch_data_d2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v0

    move v1, v2

    :goto_29
    if-eqz v1, :cond_33

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_33
    throw v0

    :cond_34
    :try_start_34
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1a

    :sswitch_37
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_42
    .catchall {:try_start_34 .. :try_end_42} :catchall_27

    :try_start_42
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    iput-object v0, v3, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_5d

    :goto_49
    return-void

    :sswitch_4a
    const/16 v0, 0x11

    :try_start_4c
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_27

    :try_start_55
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    iput-object v0, v3, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_5d

    goto :goto_49

    :catchall_5d
    move-exception v0

    goto :goto_29

    :sswitch_5f
    const/16 v0, 0xe

    :try_start_61
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_6a
    .catchall {:try_start_61 .. :try_end_6a} :catchall_27

    :try_start_6a
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    iput-object v0, v3, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_5d

    goto :goto_49

    :sswitch_72
    const/16 v0, 0x2f

    :try_start_74
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_7d
    .catchall {:try_start_74 .. :try_end_7d} :catchall_27

    :try_start_7d
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    iput-object v0, v3, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;
    :try_end_84
    .catchall {:try_start_7d .. :try_end_84} :catchall_5d

    goto :goto_49

    :sswitch_85
    const/16 v0, 0x24

    :try_start_87
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_90
    .catchall {:try_start_87 .. :try_end_90} :catchall_27

    :try_start_90
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, v3, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;
    :try_end_97
    .catchall {:try_start_90 .. :try_end_97} :catchall_5d

    goto :goto_49

    :sswitch_98
    const/16 v0, 0x26

    :try_start_9a
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_a3
    .catchall {:try_start_9a .. :try_end_a3} :catchall_27

    :try_start_a3
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    iput-object v0, v3, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;
    :try_end_aa
    .catchall {:try_start_a3 .. :try_end_aa} :catchall_5d

    goto :goto_49

    :sswitch_ab
    const/16 v0, 0x1d

    :try_start_ad
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_b6
    .catchall {:try_start_ad .. :try_end_b6} :catchall_27

    :try_start_b6
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, v3, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;
    :try_end_bd
    .catchall {:try_start_b6 .. :try_end_bd} :catchall_5d

    goto :goto_49

    :sswitch_be
    const/16 v0, 0x16

    :try_start_c0
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_c9
    .catchall {:try_start_c0 .. :try_end_c9} :catchall_27

    :try_start_c9
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    iput-object v0, v3, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;
    :try_end_d0
    .catchall {:try_start_c9 .. :try_end_d0} :catchall_5d

    goto/16 :goto_49

    :sswitch_data_d2
    .sparse-switch
        0xb -> :sswitch_37
        0xe -> :sswitch_5f
        0x11 -> :sswitch_4a
        0x16 -> :sswitch_be
        0x1d -> :sswitch_ab
        0x24 -> :sswitch_85
        0x26 -> :sswitch_98
        0x2f -> :sswitch_72
    .end sparse-switch
.end method

.method public ReInit(Lbsh/ParserTokenManager;)V
    .registers 3

    iput-object p1, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    new-instance v0, Lbsh/Token;

    invoke-direct {v0}, Lbsh/Token;-><init>()V

    iput-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    const/4 v0, -0x1

    iput v0, p0, Lbsh/Parser;->jj_ntk:I

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0}, Lbsh/JJTParserState;->reset()V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0, p1, v1, v1}, Lbsh/JavaCharStream;->ReInit(Ljava/io/InputStream;II)V

    iget-object v0, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    iget-object v1, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0, v1}, Lbsh/ParserTokenManager;->ReInit(Lbsh/JavaCharStream;)V

    new-instance v0, Lbsh/Token;

    invoke-direct {v0}, Lbsh/Token;-><init>()V

    iput-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    const/4 v0, -0x1

    iput v0, p0, Lbsh/Parser;->jj_ntk:I

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0}, Lbsh/JJTParserState;->reset()V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0, p1, v1, v1}, Lbsh/JavaCharStream;->ReInit(Ljava/io/Reader;II)V

    iget-object v0, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    iget-object v1, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0, v1}, Lbsh/ParserTokenManager;->ReInit(Lbsh/JavaCharStream;)V

    new-instance v0, Lbsh/Token;

    invoke-direct {v0}, Lbsh/Token;-><init>()V

    iput-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    const/4 v0, -0x1

    iput v0, p0, Lbsh/Parser;->jj_ntk:I

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0}, Lbsh/JJTParserState;->reset()V

    return-void
.end method

.method public final RelationalExpression()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, -0x1

    invoke-virtual {p0}, Lbsh/Parser;->ShiftExpression()V

    :goto_5
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_11

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_d
    packed-switch v0, :pswitch_data_90

    :pswitch_10
    return-void

    :cond_11
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_d

    :pswitch_14
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_28

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1c
    packed-switch v0, :pswitch_data_ae

    :pswitch_1f
    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_28
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1c

    :pswitch_2b
    const/16 v0, 0x54

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    :goto_31
    invoke-virtual {p0}, Lbsh/Parser;->ShiftExpression()V

    new-instance v2, Lbsh/BSHBinaryExpression;

    const/16 v1, 0xf

    invoke-direct {v2, v1}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v1, 0x1

    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v2}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_44
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v2, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_53

    goto :goto_5

    :catchall_53
    move-exception v0

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v2, v6}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_5e
    throw v0

    :pswitch_5f
    const/16 v0, 0x55

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_31

    :pswitch_66
    const/16 v0, 0x52

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_31

    :pswitch_6d
    const/16 v0, 0x53

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_31

    :pswitch_74
    const/16 v0, 0x5b

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_31

    :pswitch_7b
    const/16 v0, 0x5c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_31

    :pswitch_82
    const/16 v0, 0x5d

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_31

    :pswitch_89
    const/16 v0, 0x5e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_31

    :pswitch_data_90
    .packed-switch 0x52
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_ae
    .packed-switch 0x52
        :pswitch_66
        :pswitch_6d
        :pswitch_2b
        :pswitch_5f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_74
        :pswitch_7b
        :pswitch_82
        :pswitch_89
    .end packed-switch
.end method

.method public final ReturnStatement()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v4, Lbsh/BSHReturnStatement;

    const/16 v0, 0x23

    invoke-direct {v4, v0}, Lbsh/BSHReturnStatement;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x2e

    :try_start_13
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_35

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1f
    sparse-switch v0, :sswitch_data_72

    :goto_22
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_2d} :catch_3c
    .catchall {:try_start_13 .. :try_end_2d} :catchall_69

    :try_start_2d
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    const/16 v0, 0x2e

    iput v0, v4, Lbsh/BSHReturnStatement;->kind:I
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_34} :catch_6f
    .catchall {:try_start_2d .. :try_end_34} :catchall_6c

    return-void

    :cond_35
    :try_start_35
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1f

    :sswitch_38
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_3b} :catch_3c
    .catchall {:try_start_35 .. :try_end_3b} :catchall_69

    goto :goto_22

    :catch_3c
    move-exception v0

    move v1, v2

    :goto_3e
    if-eqz v1, :cond_59

    :try_start_40
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v4}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    move v1, v3

    :goto_46
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_5f

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_4d
    .catchall {:try_start_40 .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception v0

    :goto_4e
    if-eqz v1, :cond_58

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v4, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_58
    throw v0

    :cond_59
    :try_start_59
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    goto :goto_46

    :cond_5f
    instance-of v3, v0, Lbsh/ParseException;

    if-eqz v3, :cond_66

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_66
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_69
    .catchall {:try_start_59 .. :try_end_69} :catchall_4d

    :catchall_69
    move-exception v0

    move v1, v2

    goto :goto_4e

    :catchall_6c
    move-exception v0

    move v1, v3

    goto :goto_4e

    :catch_6f
    move-exception v0

    move v1, v3

    goto :goto_3e

    :sswitch_data_72
    .sparse-switch
        0xb -> :sswitch_38
        0xe -> :sswitch_38
        0x11 -> :sswitch_38
        0x16 -> :sswitch_38
        0x1a -> :sswitch_38
        0x1d -> :sswitch_38
        0x24 -> :sswitch_38
        0x26 -> :sswitch_38
        0x28 -> :sswitch_38
        0x29 -> :sswitch_38
        0x2f -> :sswitch_38
        0x37 -> :sswitch_38
        0x39 -> :sswitch_38
        0x3c -> :sswitch_38
        0x40 -> :sswitch_38
        0x42 -> :sswitch_38
        0x43 -> :sswitch_38
        0x45 -> :sswitch_38
        0x48 -> :sswitch_38
        0x56 -> :sswitch_38
        0x57 -> :sswitch_38
        0x64 -> :sswitch_38
        0x65 -> :sswitch_38
        0x66 -> :sswitch_38
        0x67 -> :sswitch_38
    .end sparse-switch
.end method

.method public final ReturnType()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    new-instance v4, Lbsh/BSHReturnType;

    const/16 v0, 0xa

    invoke-direct {v4, v0}, Lbsh/BSHReturnType;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_12
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_44

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1a
    sparse-switch v0, :sswitch_data_82

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_27} :catch_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_78

    :catch_27
    move-exception v0

    move v1, v2

    :goto_29
    if-eqz v1, :cond_68

    :try_start_2b
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v4}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    move v1, v3

    :goto_31
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_6e

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_38

    :catchall_38
    move-exception v0

    :goto_39
    if-eqz v1, :cond_43

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v4, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_43
    throw v0

    :cond_44
    :try_start_44
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1a

    :sswitch_47
    const/16 v0, 0x39

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_52} :catch_27
    .catchall {:try_start_44 .. :try_end_52} :catchall_78

    :try_start_52
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    const/4 v0, 0x1

    iput-boolean v0, v4, Lbsh/BSHReturnType;->isVoid:Z
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_58} :catch_7e
    .catchall {:try_start_52 .. :try_end_58} :catchall_7b

    :goto_58
    if-eqz v3, :cond_62

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_62
    return-void

    :sswitch_63
    :try_start_63
    invoke-virtual {p0}, Lbsh/Parser;->Type()V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_66} :catch_27
    .catchall {:try_start_63 .. :try_end_66} :catchall_78

    move v3, v2

    goto :goto_58

    :cond_68
    :try_start_68
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    goto :goto_31

    :cond_6e
    instance-of v3, v0, Lbsh/ParseException;

    if-eqz v3, :cond_75

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_75
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_78
    .catchall {:try_start_68 .. :try_end_78} :catchall_38

    :catchall_78
    move-exception v0

    move v1, v2

    goto :goto_39

    :catchall_7b
    move-exception v0

    move v1, v3

    goto :goto_39

    :catch_7e
    move-exception v0

    move v1, v3

    goto :goto_29

    nop

    :sswitch_data_82
    .sparse-switch
        0xb -> :sswitch_63
        0xe -> :sswitch_63
        0x11 -> :sswitch_63
        0x16 -> :sswitch_63
        0x1d -> :sswitch_63
        0x24 -> :sswitch_63
        0x26 -> :sswitch_63
        0x2f -> :sswitch_63
        0x39 -> :sswitch_47
        0x45 -> :sswitch_63
    .end sparse-switch
.end method

.method public final ShiftExpression()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, -0x1

    invoke-virtual {p0}, Lbsh/Parser;->AdditiveExpression()V

    :goto_5
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_11

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_d
    packed-switch v0, :pswitch_data_82

    return-void

    :cond_11
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_d

    :pswitch_14
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v5, :cond_28

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1c
    packed-switch v0, :pswitch_data_92

    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_28
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1c

    :pswitch_2b
    const/16 v0, 0x70

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    :goto_31
    invoke-virtual {p0}, Lbsh/Parser;->AdditiveExpression()V

    new-instance v2, Lbsh/BSHBinaryExpression;

    const/16 v1, 0xf

    invoke-direct {v2, v1}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v1, 0x1

    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v2}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_44
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v2, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_53

    goto :goto_5

    :catchall_53
    move-exception v0

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v2, v6}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v2}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_5e
    throw v0

    :pswitch_5f
    const/16 v0, 0x71

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_31

    :pswitch_66
    const/16 v0, 0x72

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_31

    :pswitch_6d
    const/16 v0, 0x73

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_31

    :pswitch_74
    const/16 v0, 0x74

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_31

    :pswitch_7b
    const/16 v0, 0x75

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_31

    :pswitch_data_82
    .packed-switch 0x70
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_92
    .packed-switch 0x70
        :pswitch_2b
        :pswitch_5f
        :pswitch_66
        :pswitch_6d
        :pswitch_74
        :pswitch_7b
    .end packed-switch
.end method

.method public final Statement()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_22(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lbsh/Parser;->LabeledStatement()V

    :goto_b
    return-void

    :cond_c
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_21

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_14
    sparse-switch v0, :sswitch_data_78

    invoke-virtual {p0}, Lbsh/Parser;->isRegularForStatement()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Lbsh/Parser;->ForStatement()V

    goto :goto_b

    :cond_21
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_14

    :sswitch_24
    invoke-virtual {p0}, Lbsh/Parser;->Block()V

    goto :goto_b

    :sswitch_28
    invoke-virtual {p0}, Lbsh/Parser;->EmptyStatement()V

    goto :goto_b

    :sswitch_2c
    invoke-virtual {p0}, Lbsh/Parser;->StatementExpression()V

    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_b

    :sswitch_35
    invoke-virtual {p0}, Lbsh/Parser;->SwitchStatement()V

    goto :goto_b

    :sswitch_39
    invoke-virtual {p0}, Lbsh/Parser;->IfStatement()V

    goto :goto_b

    :sswitch_3d
    invoke-virtual {p0}, Lbsh/Parser;->WhileStatement()V

    goto :goto_b

    :sswitch_41
    invoke-virtual {p0}, Lbsh/Parser;->DoStatement()V

    goto :goto_b

    :cond_45
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_59

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_4d
    sparse-switch v0, :sswitch_data_f6

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_59
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_4d

    :sswitch_5c
    invoke-virtual {p0}, Lbsh/Parser;->EnhancedForStatement()V

    goto :goto_b

    :sswitch_60
    invoke-virtual {p0}, Lbsh/Parser;->BreakStatement()V

    goto :goto_b

    :sswitch_64
    invoke-virtual {p0}, Lbsh/Parser;->ContinueStatement()V

    goto :goto_b

    :sswitch_68
    invoke-virtual {p0}, Lbsh/Parser;->ReturnStatement()V

    goto :goto_b

    :sswitch_6c
    invoke-virtual {p0}, Lbsh/Parser;->SynchronizedStatement()V

    goto :goto_b

    :sswitch_70
    invoke-virtual {p0}, Lbsh/Parser;->ThrowStatement()V

    goto :goto_b

    :sswitch_74
    invoke-virtual {p0}, Lbsh/Parser;->TryStatement()V

    goto :goto_b

    :sswitch_data_78
    .sparse-switch
        0xb -> :sswitch_2c
        0xe -> :sswitch_2c
        0x11 -> :sswitch_2c
        0x15 -> :sswitch_41
        0x16 -> :sswitch_2c
        0x1a -> :sswitch_2c
        0x1d -> :sswitch_2c
        0x20 -> :sswitch_39
        0x24 -> :sswitch_2c
        0x26 -> :sswitch_2c
        0x28 -> :sswitch_2c
        0x29 -> :sswitch_2c
        0x2f -> :sswitch_2c
        0x32 -> :sswitch_35
        0x37 -> :sswitch_2c
        0x39 -> :sswitch_2c
        0x3b -> :sswitch_3d
        0x3c -> :sswitch_2c
        0x40 -> :sswitch_2c
        0x42 -> :sswitch_2c
        0x43 -> :sswitch_2c
        0x45 -> :sswitch_2c
        0x48 -> :sswitch_2c
        0x4a -> :sswitch_24
        0x4e -> :sswitch_28
        0x56 -> :sswitch_2c
        0x57 -> :sswitch_2c
        0x64 -> :sswitch_2c
        0x65 -> :sswitch_2c
        0x66 -> :sswitch_2c
        0x67 -> :sswitch_2c
    .end sparse-switch

    :sswitch_data_f6
    .sparse-switch
        0xc -> :sswitch_60
        0x13 -> :sswitch_64
        0x1e -> :sswitch_5c
        0x2e -> :sswitch_68
        0x33 -> :sswitch_6c
        0x35 -> :sswitch_70
        0x38 -> :sswitch_74
    .end sparse-switch
.end method

.method public final StatementExpression()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    return-void
.end method

.method public final StatementExpressionList()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHStatementExpressionList;

    const/16 v0, 0x22

    invoke-direct {v3, v0}, Lbsh/BSHStatementExpressionList;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_10
    invoke-virtual {p0}, Lbsh/Parser;->StatementExpression()V

    :goto_13
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1b} :catch_34
    .catchall {:try_start_10 .. :try_end_1b} :catchall_58

    move-result v0

    :goto_1c
    packed-switch v0, :pswitch_data_5c

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :cond_28
    :try_start_28
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1c

    :pswitch_2b
    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->StatementExpression()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_33} :catch_34
    .catchall {:try_start_28 .. :try_end_33} :catchall_58

    goto :goto_13

    :catch_34
    move-exception v0

    :try_start_35
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_58

    const/4 v1, 0x0

    :try_start_3b
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_4e

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_42

    :catchall_42
    move-exception v0

    :goto_43
    if-eqz v1, :cond_4d

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_4d
    throw v0

    :cond_4e
    :try_start_4e
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_55

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_55
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_42

    :catchall_58
    move-exception v0

    move v1, v2

    goto :goto_43

    nop

    :pswitch_data_5c
    .packed-switch 0x4f
        :pswitch_2b
    .end packed-switch
.end method

.method public final SwitchLabel()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    new-instance v4, Lbsh/BSHSwitchLabel;

    const/16 v0, 0x1c

    invoke-direct {v4, v0}, Lbsh/BSHSwitchLabel;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_12
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_44

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1a
    sparse-switch v0, :sswitch_data_90

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_27} :catch_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_8a

    :catch_27
    move-exception v0

    move v1, v2

    :goto_29
    if-eqz v1, :cond_7a

    :try_start_2b
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v4}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    move v1, v3

    :goto_31
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_80

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_38

    :catchall_38
    move-exception v0

    :goto_39
    if-eqz v1, :cond_43

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v4, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_43
    throw v0

    :cond_44
    :try_start_44
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1a

    :sswitch_47
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_54} :catch_27
    .catchall {:try_start_44 .. :try_end_54} :catchall_8a

    move v3, v2

    :goto_55
    if-eqz v3, :cond_5f

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_5f
    return-void

    :sswitch_60
    const/16 v0, 0x14

    :try_start_62
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_70} :catch_27
    .catchall {:try_start_62 .. :try_end_70} :catchall_8a

    :try_start_70
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    const/4 v0, 0x1

    iput-boolean v0, v4, Lbsh/BSHSwitchLabel;->isDefault:Z
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_76} :catch_77
    .catchall {:try_start_70 .. :try_end_76} :catchall_8d

    goto :goto_55

    :catch_77
    move-exception v0

    move v1, v3

    goto :goto_29

    :cond_7a
    :try_start_7a
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    goto :goto_31

    :cond_80
    instance-of v3, v0, Lbsh/ParseException;

    if-eqz v3, :cond_87

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_87
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_8a
    .catchall {:try_start_7a .. :try_end_8a} :catchall_38

    :catchall_8a
    move-exception v0

    move v1, v2

    goto :goto_39

    :catchall_8d
    move-exception v0

    move v1, v3

    goto :goto_39

    :sswitch_data_90
    .sparse-switch
        0xf -> :sswitch_47
        0x14 -> :sswitch_60
    .end sparse-switch
.end method

.method public final SwitchStatement()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHSwitchStatement;

    const/16 v0, 0x1b

    invoke-direct {v3, v0}, Lbsh/BSHSwitchStatement;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x32

    :try_start_12
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x4a

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    :cond_27
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_41

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_30
    sparse-switch v0, :sswitch_data_7a

    const/16 v0, 0x4b

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_38} :catch_52
    .catchall {:try_start_12 .. :try_end_38} :catchall_76

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :cond_41
    :try_start_41
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_30

    :sswitch_44
    invoke-virtual {p0}, Lbsh/Parser;->SwitchLabel()V

    :goto_47
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_29(I)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lbsh/Parser;->BlockStatement()V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_51} :catch_52
    .catchall {:try_start_41 .. :try_end_51} :catchall_76

    goto :goto_47

    :catch_52
    move-exception v0

    :try_start_53
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_76

    const/4 v1, 0x0

    :try_start_59
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_6c

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_60

    :catchall_60
    move-exception v0

    :goto_61
    if-eqz v1, :cond_6b

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_6b
    throw v0

    :cond_6c
    :try_start_6c
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_73

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_73
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_76
    .catchall {:try_start_6c .. :try_end_76} :catchall_60

    :catchall_76
    move-exception v0

    move v1, v2

    goto :goto_61

    nop

    :sswitch_data_7a
    .sparse-switch
        0xf -> :sswitch_44
        0x14 -> :sswitch_44
    .end sparse-switch
.end method

.method public final SynchronizedStatement()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Lbsh/BSHBlock;

    const/16 v0, 0x19

    invoke-direct {v4, v0}, Lbsh/BSHBlock;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x33

    :try_start_13
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Block()V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_2c} :catch_33
    .catchall {:try_start_13 .. :try_end_2c} :catchall_60

    :try_start_2c
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    const/4 v0, 0x1

    iput-boolean v0, v4, Lbsh/BSHBlock;->isSynchronized:Z
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_32} :catch_66
    .catchall {:try_start_2c .. :try_end_32} :catchall_63

    return-void

    :catch_33
    move-exception v0

    move v1, v3

    :goto_35
    if-eqz v1, :cond_50

    :try_start_37
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v4}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    move v1, v2

    :goto_3d
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_56

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v0

    :goto_45
    if-eqz v1, :cond_4f

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v4, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_4f
    throw v0

    :cond_50
    :try_start_50
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    goto :goto_3d

    :cond_56
    instance-of v2, v0, Lbsh/ParseException;

    if-eqz v2, :cond_5d

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_5d
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_60
    .catchall {:try_start_50 .. :try_end_60} :catchall_44

    :catchall_60
    move-exception v0

    move v1, v3

    goto :goto_45

    :catchall_63
    move-exception v0

    move v1, v2

    goto :goto_45

    :catch_66
    move-exception v0

    move v1, v2

    goto :goto_35
.end method

.method public final ThrowStatement()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHThrowStatement;

    const/16 v0, 0x24

    invoke-direct {v3, v0}, Lbsh/BSHThrowStatement;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x35

    :try_start_12
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_1d} :catch_26
    .catchall {:try_start_12 .. :try_end_1d} :catchall_4a

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :catch_26
    move-exception v0

    :try_start_27
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_4a

    const/4 v1, 0x0

    :try_start_2d
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_40

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_34

    :catchall_34
    move-exception v0

    :goto_35
    if-eqz v1, :cond_3f

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_3f
    throw v0

    :cond_40
    :try_start_40
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_47

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_47
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_34

    :catchall_4a
    move-exception v0

    move v1, v2

    goto :goto_35
.end method

.method public final TryStatement()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v4, Lbsh/BSHTryStatement;

    const/16 v0, 0x25

    invoke-direct {v4, v0}, Lbsh/BSHTryStatement;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x38

    :try_start_14
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Block()V

    move v0, v3

    :goto_1b
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v1, v5, :cond_5e

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :goto_23
    packed-switch v1, :pswitch_data_a0

    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v1, v5, :cond_78

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :goto_2e
    packed-switch v1, :pswitch_data_a6

    :goto_31
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_37} :catch_9c
    .catchall {:try_start_14 .. :try_end_37} :catchall_96

    :try_start_37
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    if-nez v0, :cond_95

    invoke-virtual {p0}, Lbsh/Parser;->generateParseException()Lbsh/ParseException;

    move-result-object v0

    throw v0
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_41} :catch_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_99

    :catch_41
    move-exception v0

    move v1, v3

    :goto_43
    if-eqz v1, :cond_85

    :try_start_45
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v4}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    move v1, v3

    :goto_4b
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_8b

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception v0

    :goto_53
    if-eqz v1, :cond_5d

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v4, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_5d
    throw v0

    :cond_5e
    :try_start_5e
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_23

    :pswitch_61
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->FormalParameter()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Block()V

    move v0, v2

    goto :goto_1b

    :cond_78
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_2e

    :pswitch_7b
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Block()V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_83} :catch_9c
    .catchall {:try_start_5e .. :try_end_83} :catchall_96

    move v0, v2

    goto :goto_31

    :cond_85
    :try_start_85
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    goto :goto_4b

    :cond_8b
    instance-of v3, v0, Lbsh/ParseException;

    if-eqz v3, :cond_92

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_92
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_95
    .catchall {:try_start_85 .. :try_end_95} :catchall_52

    :cond_95
    return-void

    :catchall_96
    move-exception v0

    move v1, v2

    goto :goto_53

    :catchall_99
    move-exception v0

    move v1, v3

    goto :goto_53

    :catch_9c
    move-exception v0

    move v1, v2

    goto :goto_43

    nop

    :pswitch_data_a0
    .packed-switch 0x10
        :pswitch_61
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x1c
        :pswitch_7b
    .end packed-switch
.end method

.method public final Type()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHType;

    const/16 v0, 0x9

    invoke-direct {v3, v0}, Lbsh/BSHType;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_11
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_40

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_19
    sparse-switch v0, :sswitch_data_76

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_26} :catch_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_5b

    :catch_26
    move-exception v0

    :try_start_27
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_5b

    const/4 v1, 0x0

    :try_start_2d
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_62

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_34

    :catchall_34
    move-exception v0

    :goto_35
    if-eqz v1, :cond_3f

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_3f
    throw v0

    :cond_40
    :try_start_40
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_19

    :sswitch_43
    invoke-virtual {p0}, Lbsh/Parser;->PrimitiveType()V

    :goto_46
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_6(I)Z

    move-result v0

    if-eqz v0, :cond_6c

    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {v3}, Lbsh/BSHType;->addArrayDimension()V

    goto :goto_46

    :catchall_5b
    move-exception v0

    move v1, v2

    goto :goto_35

    :sswitch_5e
    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_61} :catch_26
    .catchall {:try_start_40 .. :try_end_61} :catchall_5b

    goto :goto_46

    :cond_62
    :try_start_62
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_69

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_69
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_34

    :cond_6c
    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    nop

    :sswitch_data_76
    .sparse-switch
        0xb -> :sswitch_43
        0xe -> :sswitch_43
        0x11 -> :sswitch_43
        0x16 -> :sswitch_43
        0x1d -> :sswitch_43
        0x24 -> :sswitch_43
        0x26 -> :sswitch_43
        0x2f -> :sswitch_43
        0x45 -> :sswitch_5e
    .end sparse-switch
.end method

.method public final TypedVariableDeclaration()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lbsh/BSHTypedVariableDeclaration;

    const/16 v0, 0x21

    invoke-direct {v4, v0}, Lbsh/BSHTypedVariableDeclaration;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_13
    invoke-virtual {p0, v0, v1}, Lbsh/Parser;->Modifiers(IZ)Lbsh/Modifiers;

    move-result-object v1

    invoke-virtual {p0}, Lbsh/Parser;->Type()V

    invoke-virtual {p0}, Lbsh/Parser;->VariableDeclarator()V

    :goto_1d
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_35

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_26
    packed-switch v0, :pswitch_data_78

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_2f} :catch_41
    .catchall {:try_start_13 .. :try_end_2f} :catchall_6e

    :try_start_2f
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iput-object v1, v4, Lbsh/BSHTypedVariableDeclaration;->modifiers:Lbsh/Modifiers;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_34} :catch_74
    .catchall {:try_start_2f .. :try_end_34} :catchall_71

    return-void

    :cond_35
    :try_start_35
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_26

    :pswitch_38
    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->VariableDeclarator()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_40} :catch_41
    .catchall {:try_start_35 .. :try_end_40} :catchall_6e

    goto :goto_1d

    :catch_41
    move-exception v0

    move v1, v2

    :goto_43
    if-eqz v1, :cond_5e

    :try_start_45
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v4}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    move v1, v3

    :goto_4b
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_64

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception v0

    :goto_53
    if-eqz v1, :cond_5d

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v4, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_5d
    throw v0

    :cond_5e
    :try_start_5e
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    goto :goto_4b

    :cond_64
    instance-of v3, v0, Lbsh/ParseException;

    if-eqz v3, :cond_6b

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_6b
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_6e
    .catchall {:try_start_5e .. :try_end_6e} :catchall_52

    :catchall_6e
    move-exception v0

    move v1, v2

    goto :goto_53

    :catchall_71
    move-exception v0

    move v1, v3

    goto :goto_53

    :catch_74
    move-exception v0

    move v1, v3

    goto :goto_43

    nop

    :pswitch_data_78
    .packed-switch 0x4f
        :pswitch_38
    .end packed-switch
.end method

.method public final UnaryExpression()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_16

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_a
    sparse-switch v0, :sswitch_data_7a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_16
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_a

    :sswitch_19
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_2d

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_21
    packed-switch v0, :pswitch_data_e0

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_2d
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_21

    :pswitch_30
    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    :goto_36
    invoke-virtual {p0}, Lbsh/Parser;->UnaryExpression()V

    new-instance v3, Lbsh/BSHUnaryExpression;

    const/16 v1, 0x10

    invoke-direct {v3, v1}, Lbsh/BSHUnaryExpression;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_48
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_5e

    const/4 v1, 0x0

    :try_start_4f
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v3, Lbsh/BSHUnaryExpression;->kind:I
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_77

    :goto_56
    return-void

    :pswitch_57
    const/16 v0, 0x67

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_36

    :catchall_5e
    move-exception v0

    move v1, v2

    :goto_60
    if-eqz v1, :cond_6a

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_6a
    throw v0

    :sswitch_6b
    invoke-virtual {p0}, Lbsh/Parser;->PreIncrementExpression()V

    goto :goto_56

    :sswitch_6f
    invoke-virtual {p0}, Lbsh/Parser;->PreDecrementExpression()V

    goto :goto_56

    :sswitch_73
    invoke-virtual {p0}, Lbsh/Parser;->UnaryExpressionNotPlusMinus()V

    goto :goto_56

    :catchall_77
    move-exception v0

    goto :goto_60

    nop

    :sswitch_data_7a
    .sparse-switch
        0xb -> :sswitch_73
        0xe -> :sswitch_73
        0x11 -> :sswitch_73
        0x16 -> :sswitch_73
        0x1a -> :sswitch_73
        0x1d -> :sswitch_73
        0x24 -> :sswitch_73
        0x26 -> :sswitch_73
        0x28 -> :sswitch_73
        0x29 -> :sswitch_73
        0x2f -> :sswitch_73
        0x37 -> :sswitch_73
        0x39 -> :sswitch_73
        0x3c -> :sswitch_73
        0x40 -> :sswitch_73
        0x42 -> :sswitch_73
        0x43 -> :sswitch_73
        0x45 -> :sswitch_73
        0x48 -> :sswitch_73
        0x56 -> :sswitch_73
        0x57 -> :sswitch_73
        0x64 -> :sswitch_6b
        0x65 -> :sswitch_6f
        0x66 -> :sswitch_19
        0x67 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_e0
    .packed-switch 0x66
        :pswitch_30
        :pswitch_57
    .end packed-switch
.end method

.method public final UnaryExpressionNotPlusMinus()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_1a

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_a
    packed-switch v0, :pswitch_data_8c

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_9(I)Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-virtual {p0}, Lbsh/Parser;->CastExpression()V

    :goto_19
    return-void

    :cond_1a
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_a

    :pswitch_1d
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_31

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_25
    packed-switch v0, :pswitch_data_94

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_31
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_25

    :pswitch_34
    const/16 v0, 0x57

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    :goto_3a
    invoke-virtual {p0}, Lbsh/Parser;->UnaryExpression()V

    new-instance v3, Lbsh/BSHUnaryExpression;

    const/16 v1, 0x10

    invoke-direct {v3, v1}, Lbsh/BSHUnaryExpression;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    :try_start_4c
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V
    :try_end_52
    .catchall {:try_start_4c .. :try_end_52} :catchall_89

    const/4 v1, 0x0

    :try_start_53
    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v3, Lbsh/BSHUnaryExpression;->kind:I
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_5b

    goto :goto_19

    :catchall_5b
    move-exception v0

    :goto_5c
    if-eqz v1, :cond_66

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_66
    throw v0

    :pswitch_67
    const/16 v0, 0x56

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    goto :goto_3a

    :cond_6e
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_82

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_76
    sparse-switch v0, :sswitch_data_9c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_82
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_76

    :sswitch_85
    invoke-virtual {p0}, Lbsh/Parser;->PostfixExpression()V

    goto :goto_19

    :catchall_89
    move-exception v0

    move v1, v2

    goto :goto_5c

    :pswitch_data_8c
    .packed-switch 0x56
        :pswitch_1d
        :pswitch_1d
    .end packed-switch

    :pswitch_data_94
    .packed-switch 0x56
        :pswitch_67
        :pswitch_34
    .end packed-switch

    :sswitch_data_9c
    .sparse-switch
        0xb -> :sswitch_85
        0xe -> :sswitch_85
        0x11 -> :sswitch_85
        0x16 -> :sswitch_85
        0x1a -> :sswitch_85
        0x1d -> :sswitch_85
        0x24 -> :sswitch_85
        0x26 -> :sswitch_85
        0x28 -> :sswitch_85
        0x29 -> :sswitch_85
        0x2f -> :sswitch_85
        0x37 -> :sswitch_85
        0x39 -> :sswitch_85
        0x3c -> :sswitch_85
        0x40 -> :sswitch_85
        0x42 -> :sswitch_85
        0x43 -> :sswitch_85
        0x45 -> :sswitch_85
        0x48 -> :sswitch_85
    .end sparse-switch
.end method

.method public final VariableDeclarator()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v4, Lbsh/BSHVariableDeclarator;

    const/4 v0, 0x5

    invoke-direct {v4, v0}, Lbsh/BSHVariableDeclarator;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v4}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x45

    :try_start_12
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v1

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_30

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_1f
    packed-switch v0, :pswitch_data_72

    :goto_22
    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_28} :catch_3c
    .catchall {:try_start_12 .. :try_end_28} :catchall_69

    :try_start_28
    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    iget-object v0, v1, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v0, v4, Lbsh/BSHVariableDeclarator;->name:Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2f} :catch_6f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_6c

    return-void

    :cond_30
    :try_start_30
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_1f

    :pswitch_33
    const/16 v0, 0x51

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->VariableInitializer()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_3b} :catch_3c
    .catchall {:try_start_30 .. :try_end_3b} :catchall_69

    goto :goto_22

    :catch_3c
    move-exception v0

    move v1, v2

    :goto_3e
    if-eqz v1, :cond_59

    :try_start_40
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v4}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    move v1, v3

    :goto_46
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_5f

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_4d
    .catchall {:try_start_40 .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception v0

    :goto_4e
    if-eqz v1, :cond_58

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v4, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v4}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_58
    throw v0

    :cond_59
    :try_start_59
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    goto :goto_46

    :cond_5f
    instance-of v3, v0, Lbsh/ParseException;

    if-eqz v3, :cond_66

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_66
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_69
    .catchall {:try_start_59 .. :try_end_69} :catchall_4d

    :catchall_69
    move-exception v0

    move v1, v2

    goto :goto_4e

    :catchall_6c
    move-exception v0

    move v1, v3

    goto :goto_4e

    :catch_6f
    move-exception v0

    move v1, v3

    goto :goto_3e

    :pswitch_data_72
    .packed-switch 0x51
        :pswitch_33
    .end packed-switch
.end method

.method public final VariableInitializer()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v1, -0x1

    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_15

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :goto_9
    sparse-switch v0, :sswitch_data_20

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_15
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    goto :goto_9

    :sswitch_18
    invoke-virtual {p0}, Lbsh/Parser;->ArrayInitializer()V

    :goto_1b
    return-void

    :sswitch_1c
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    goto :goto_1b

    :sswitch_data_20
    .sparse-switch
        0xb -> :sswitch_1c
        0xe -> :sswitch_1c
        0x11 -> :sswitch_1c
        0x16 -> :sswitch_1c
        0x1a -> :sswitch_1c
        0x1d -> :sswitch_1c
        0x24 -> :sswitch_1c
        0x26 -> :sswitch_1c
        0x28 -> :sswitch_1c
        0x29 -> :sswitch_1c
        0x2f -> :sswitch_1c
        0x37 -> :sswitch_1c
        0x39 -> :sswitch_1c
        0x3c -> :sswitch_1c
        0x40 -> :sswitch_1c
        0x42 -> :sswitch_1c
        0x43 -> :sswitch_1c
        0x45 -> :sswitch_1c
        0x48 -> :sswitch_1c
        0x4a -> :sswitch_18
        0x56 -> :sswitch_1c
        0x57 -> :sswitch_1c
        0x64 -> :sswitch_1c
        0x65 -> :sswitch_1c
        0x66 -> :sswitch_1c
        0x67 -> :sswitch_1c
    .end sparse-switch
.end method

.method public final VoidLiteral()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/16 v0, 0x39

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    return-void
.end method

.method public final WhileStatement()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v3, Lbsh/BSHWhileStatement;

    const/16 v0, 0x1e

    invoke-direct {v3, v0}, Lbsh/BSHWhileStatement;-><init>(I)V

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/16 v0, 0x3b

    :try_start_12
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Statement()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_25} :catch_2e
    .catchall {:try_start_12 .. :try_end_25} :catchall_52

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    return-void

    :catch_2e
    move-exception v0

    :try_start_2f
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_52

    const/4 v1, 0x0

    :try_start_35
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_48

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v0

    :goto_3d
    if-eqz v1, :cond_47

    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v3, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    invoke-virtual {p0, v3}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_47
    throw v0

    :cond_48
    :try_start_48
    instance-of v4, v0, Lbsh/ParseException;

    if-eqz v4, :cond_4f

    check-cast v0, Lbsh/ParseException;

    throw v0

    :cond_4f
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_52
    .catchall {:try_start_48 .. :try_end_52} :catchall_3c

    :catchall_52
    move-exception v0

    move v1, v2

    goto :goto_3d
.end method

.method createParseException(Ljava/lang/String;)Lbsh/ParseException;
    .registers 7

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget v1, v0, Lbsh/Token;->beginLine:I

    iget v2, v0, Lbsh/Token;->beginColumn:I

    iget v3, v0, Lbsh/Token;->kind:I

    if-nez v3, :cond_3c

    sget-object v0, Lbsh/ParserConstants;->tokenImage:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    :goto_f
    new-instance v0, Lbsh/ParseException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Parse error at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ", column "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/ParseException;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_3c
    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    goto :goto_f
.end method

.method public final disable_tracing()V
    .registers 1

    return-void
.end method

.method public final enable_tracing()V
    .registers 1

    return-void
.end method

.method public generateParseException()Lbsh/ParseException;
    .registers 7

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget-object v0, v0, Lbsh/Token;->next:Lbsh/Token;

    iget v1, v0, Lbsh/Token;->beginLine:I

    iget v2, v0, Lbsh/Token;->beginColumn:I

    iget v3, v0, Lbsh/Token;->kind:I

    if-nez v3, :cond_3e

    sget-object v0, Lbsh/ParserConstants;->tokenImage:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    :goto_11
    new-instance v3, Lbsh/ParseException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Parse error at line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, ", column "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".  Encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lbsh/ParseException;-><init>(Ljava/lang/String;)V

    return-object v3

    :cond_3e
    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    goto :goto_11
.end method

.method public final getNextToken()Lbsh/Token;
    .registers 3

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget-object v0, v0, Lbsh/Token;->next:Lbsh/Token;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget-object v0, v0, Lbsh/Token;->next:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    :goto_c
    const/4 v0, -0x1

    iput v0, p0, Lbsh/Parser;->jj_ntk:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    return-object v0

    :cond_12
    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    invoke-virtual {v1}, Lbsh/ParserTokenManager;->getNextToken()Lbsh/Token;

    move-result-object v1

    iput-object v1, v0, Lbsh/Token;->next:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    goto :goto_c
.end method

.method public final getToken(I)Lbsh/Token;
    .registers 5

    iget-boolean v0, p0, Lbsh/Parser;->lookingAhead:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    :goto_6
    const/4 v1, 0x0

    move-object v2, v0

    :goto_8
    if-lt v1, p1, :cond_e

    return-object v2

    :cond_b
    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    goto :goto_6

    :cond_e
    iget-object v0, v2, Lbsh/Token;->next:Lbsh/Token;

    if-eqz v0, :cond_18

    iget-object v0, v2, Lbsh/Token;->next:Lbsh/Token;

    :goto_14
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_8

    :cond_18
    iget-object v0, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    invoke-virtual {v0}, Lbsh/ParserTokenManager;->getNextToken()Lbsh/Token;

    move-result-object v0

    iput-object v0, v2, Lbsh/Token;->next:Lbsh/Token;

    goto :goto_14
.end method

.method isRegularForStatement()Z
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v3}, Lbsh/Parser;->getToken(I)Lbsh/Token;

    move-result-object v0

    iget v0, v0, Lbsh/Token;->kind:I

    const/16 v4, 0x1e

    if-eq v0, v4, :cond_f

    move v0, v2

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x3

    invoke-virtual {p0, v1}, Lbsh/Parser;->getToken(I)Lbsh/Token;

    move-result-object v1

    iget v1, v1, Lbsh/Token;->kind:I

    const/16 v4, 0x48

    if-eq v1, v4, :cond_1c

    move v0, v2

    goto :goto_e

    :cond_1c
    :goto_1c
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Lbsh/Parser;->getToken(I)Lbsh/Token;

    move-result-object v0

    iget v0, v0, Lbsh/Token;->kind:I

    sparse-switch v0, :sswitch_data_30

    move v0, v1

    goto :goto_1c

    :sswitch_29
    move v0, v2

    goto :goto_e

    :sswitch_2b
    move v0, v3

    goto :goto_e

    :sswitch_2d
    move v0, v2

    goto :goto_e

    nop

    :sswitch_data_30
    .sparse-switch
        0x0 -> :sswitch_2d
        0x4e -> :sswitch_2b
        0x59 -> :sswitch_29
    .end sparse-switch
.end method

.method jjtreeCloseNodeScope(Lbsh/Node;)V
    .registers 3

    check-cast p1, Lbsh/SimpleNode;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/Parser;->getToken(I)Lbsh/Token;

    move-result-object v0

    iput-object v0, p1, Lbsh/SimpleNode;->lastToken:Lbsh/Token;

    return-void
.end method

.method jjtreeOpenNodeScope(Lbsh/Node;)V
    .registers 3

    check-cast p1, Lbsh/SimpleNode;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbsh/Parser;->getToken(I)Lbsh/Token;

    move-result-object v0

    iput-object v0, p1, Lbsh/SimpleNode;->firstToken:Lbsh/Token;

    return-void
.end method

.method public popNode()Lbsh/SimpleNode;
    .registers 2

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0}, Lbsh/JJTParserState;->nodeArity()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method reInitInput(Ljava/io/Reader;)V
    .registers 2

    invoke-virtual {p0, p1}, Lbsh/Parser;->ReInit(Ljava/io/Reader;)V

    return-void
.end method

.method reInitTokenInput(Ljava/io/Reader;)V
    .registers 5

    iget-object v0, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    iget-object v1, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->getEndLine()I

    move-result v1

    iget-object v2, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v2}, Lbsh/JavaCharStream;->getEndColumn()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lbsh/JavaCharStream;->ReInit(Ljava/io/Reader;II)V

    return-void
.end method

.method public setRetainComments(Z)V
    .registers 2

    iput-boolean p1, p0, Lbsh/Parser;->retainComments:Z

    return-void
.end method
