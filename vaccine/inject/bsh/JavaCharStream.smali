.class public Lbsh/JavaCharStream;
.super Ljava/lang/Object;


# static fields
.field public static final staticFlag:Z


# instance fields
.field available:I

.field protected bufcolumn:[I

.field protected buffer:[C

.field protected bufline:[I

.field public bufpos:I

.field bufsize:I

.field protected column:I

.field protected inBuf:I

.field protected inputStream:Ljava/io/Reader;

.field protected line:I

.field protected maxNextCharInd:I

.field protected nextCharBuf:[C

.field protected nextCharInd:I

.field protected prevCharIsCR:Z

.field protected prevCharIsLF:Z

.field tokenBegin:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    const/4 v1, 0x1

    const/16 v0, 0x1000

    invoke-direct {p0, p1, v1, v1, v0}, Lbsh/JavaCharStream;-><init>(Ljava/io/InputStream;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .registers 5

    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lbsh/JavaCharStream;-><init>(Ljava/io/InputStream;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;III)V
    .registers 7

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x1000

    invoke-direct {p0, v0, p2, p3, v1}, Lbsh/JavaCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4

    const/4 v1, 0x1

    const/16 v0, 0x1000

    invoke-direct {p0, p1, v1, v1, v0}, Lbsh/JavaCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;II)V
    .registers 5

    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lbsh/JavaCharStream;-><init>(Ljava/io/Reader;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;III)V
    .registers 8

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lbsh/JavaCharStream;->bufpos:I

    iput v1, p0, Lbsh/JavaCharStream;->column:I

    const/4 v0, 0x1

    iput v0, p0, Lbsh/JavaCharStream;->line:I

    iput-boolean v1, p0, Lbsh/JavaCharStream;->prevCharIsCR:Z

    iput-boolean v1, p0, Lbsh/JavaCharStream;->prevCharIsLF:Z

    iput v1, p0, Lbsh/JavaCharStream;->maxNextCharInd:I

    iput v2, p0, Lbsh/JavaCharStream;->nextCharInd:I

    iput v1, p0, Lbsh/JavaCharStream;->inBuf:I

    iput-object p1, p0, Lbsh/JavaCharStream;->inputStream:Ljava/io/Reader;

    iput p2, p0, Lbsh/JavaCharStream;->line:I

    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Lbsh/JavaCharStream;->column:I

    iput p4, p0, Lbsh/JavaCharStream;->bufsize:I

    iput p4, p0, Lbsh/JavaCharStream;->available:I

    new-array v0, p4, [C

    iput-object v0, p0, Lbsh/JavaCharStream;->buffer:[C

    new-array v0, p4, [I

    iput-object v0, p0, Lbsh/JavaCharStream;->bufline:[I

    new-array v0, p4, [I

    iput-object v0, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    const/16 v0, 0x1000

    new-array v0, v0, [C

    iput-object v0, p0, Lbsh/JavaCharStream;->nextCharBuf:[C

    return-void
.end method

.method static final hexval(C)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sparse-switch p0, :sswitch_data_32

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :sswitch_9
    const/4 v0, 0x0

    :goto_a
    return v0

    :sswitch_b
    const/4 v0, 0x1

    goto :goto_a

    :sswitch_d
    const/4 v0, 0x2

    goto :goto_a

    :sswitch_f
    const/4 v0, 0x3

    goto :goto_a

    :sswitch_11
    const/4 v0, 0x4

    goto :goto_a

    :sswitch_13
    const/4 v0, 0x5

    goto :goto_a

    :sswitch_15
    const/4 v0, 0x6

    goto :goto_a

    :sswitch_17
    const/4 v0, 0x7

    goto :goto_a

    :sswitch_19
    const/16 v0, 0x8

    goto :goto_a

    :sswitch_1c
    const/16 v0, 0x9

    goto :goto_a

    :sswitch_1f
    const/16 v0, 0xa

    goto :goto_a

    :sswitch_22
    const/16 v0, 0xb

    goto :goto_a

    :sswitch_25
    const/16 v0, 0xc

    goto :goto_a

    :sswitch_28
    const/16 v0, 0xd

    goto :goto_a

    :sswitch_2b
    const/16 v0, 0xe

    goto :goto_a

    :sswitch_2e
    const/16 v0, 0xf

    goto :goto_a

    nop

    :sswitch_data_32
    .sparse-switch
        0x30 -> :sswitch_9
        0x31 -> :sswitch_b
        0x32 -> :sswitch_d
        0x33 -> :sswitch_f
        0x34 -> :sswitch_11
        0x35 -> :sswitch_13
        0x36 -> :sswitch_15
        0x37 -> :sswitch_17
        0x38 -> :sswitch_19
        0x39 -> :sswitch_1c
        0x41 -> :sswitch_1f
        0x42 -> :sswitch_22
        0x43 -> :sswitch_25
        0x44 -> :sswitch_28
        0x45 -> :sswitch_2b
        0x46 -> :sswitch_2e
        0x61 -> :sswitch_1f
        0x62 -> :sswitch_22
        0x63 -> :sswitch_25
        0x64 -> :sswitch_28
        0x65 -> :sswitch_2b
        0x66 -> :sswitch_2e
    .end sparse-switch
.end method


# virtual methods
.method protected AdjustBuffSize()V
    .registers 5

    const/16 v3, 0x800

    const/4 v2, 0x0

    iget v0, p0, Lbsh/JavaCharStream;->available:I

    iget v1, p0, Lbsh/JavaCharStream;->bufsize:I

    if-ne v0, v1, :cond_18

    iget v0, p0, Lbsh/JavaCharStream;->tokenBegin:I

    if-le v0, v3, :cond_14

    iput v2, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v0, p0, Lbsh/JavaCharStream;->tokenBegin:I

    iput v0, p0, Lbsh/JavaCharStream;->available:I

    :goto_13
    return-void

    :cond_14
    invoke-virtual {p0, v2}, Lbsh/JavaCharStream;->ExpandBuff(Z)V

    goto :goto_13

    :cond_18
    iget v0, p0, Lbsh/JavaCharStream;->available:I

    iget v1, p0, Lbsh/JavaCharStream;->tokenBegin:I

    if-le v0, v1, :cond_23

    iget v0, p0, Lbsh/JavaCharStream;->bufsize:I

    iput v0, p0, Lbsh/JavaCharStream;->available:I

    goto :goto_13

    :cond_23
    iget v0, p0, Lbsh/JavaCharStream;->tokenBegin:I

    iget v1, p0, Lbsh/JavaCharStream;->available:I

    sub-int/2addr v0, v1

    if-ge v0, v3, :cond_2f

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbsh/JavaCharStream;->ExpandBuff(Z)V

    goto :goto_13

    :cond_2f
    iget v0, p0, Lbsh/JavaCharStream;->tokenBegin:I

    iput v0, p0, Lbsh/JavaCharStream;->available:I

    goto :goto_13
.end method

.method public BeginToken()C
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Lbsh/JavaCharStream;->inBuf:I

    if-lez v0, :cond_22

    iget v0, p0, Lbsh/JavaCharStream;->inBuf:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbsh/JavaCharStream;->inBuf:I

    iget v0, p0, Lbsh/JavaCharStream;->bufpos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v1, p0, Lbsh/JavaCharStream;->bufsize:I

    if-ne v0, v1, :cond_17

    iput v2, p0, Lbsh/JavaCharStream;->bufpos:I

    :cond_17
    iget v0, p0, Lbsh/JavaCharStream;->bufpos:I

    iput v0, p0, Lbsh/JavaCharStream;->tokenBegin:I

    iget-object v0, p0, Lbsh/JavaCharStream;->buffer:[C

    iget v1, p0, Lbsh/JavaCharStream;->bufpos:I

    aget-char v0, v0, v1

    :goto_21
    return v0

    :cond_22
    iput v2, p0, Lbsh/JavaCharStream;->tokenBegin:I

    const/4 v0, -0x1

    iput v0, p0, Lbsh/JavaCharStream;->bufpos:I

    invoke-virtual {p0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    goto :goto_21
.end method

.method public Done()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/JavaCharStream;->nextCharBuf:[C

    iput-object v0, p0, Lbsh/JavaCharStream;->buffer:[C

    iput-object v0, p0, Lbsh/JavaCharStream;->bufline:[I

    iput-object v0, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    return-void
.end method

.method protected ExpandBuff(Z)V
    .registers 11

    const/4 v8, 0x0

    iget v0, p0, Lbsh/JavaCharStream;->bufsize:I

    add-int/lit16 v0, v0, 0x800

    new-array v0, v0, [C

    iget v1, p0, Lbsh/JavaCharStream;->bufsize:I

    add-int/lit16 v1, v1, 0x800

    new-array v1, v1, [I

    iget v2, p0, Lbsh/JavaCharStream;->bufsize:I

    add-int/lit16 v2, v2, 0x800

    new-array v2, v2, [I

    if-eqz p1, :cond_7e

    :try_start_15
    iget-object v3, p0, Lbsh/JavaCharStream;->buffer:[C

    iget v4, p0, Lbsh/JavaCharStream;->tokenBegin:I

    const/4 v5, 0x0

    iget v6, p0, Lbsh/JavaCharStream;->bufsize:I

    iget v7, p0, Lbsh/JavaCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lbsh/JavaCharStream;->buffer:[C

    const/4 v4, 0x0

    iget v5, p0, Lbsh/JavaCharStream;->bufsize:I

    iget v6, p0, Lbsh/JavaCharStream;->tokenBegin:I

    sub-int/2addr v5, v6

    iget v6, p0, Lbsh/JavaCharStream;->bufpos:I

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lbsh/JavaCharStream;->buffer:[C

    iget-object v0, p0, Lbsh/JavaCharStream;->bufline:[I

    iget v3, p0, Lbsh/JavaCharStream;->tokenBegin:I

    const/4 v4, 0x0

    iget v5, p0, Lbsh/JavaCharStream;->bufsize:I

    iget v6, p0, Lbsh/JavaCharStream;->tokenBegin:I

    sub-int/2addr v5, v6

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lbsh/JavaCharStream;->bufline:[I

    const/4 v3, 0x0

    iget v4, p0, Lbsh/JavaCharStream;->bufsize:I

    iget v5, p0, Lbsh/JavaCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lbsh/JavaCharStream;->bufpos:I

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lbsh/JavaCharStream;->bufline:[I

    iget-object v0, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    iget v1, p0, Lbsh/JavaCharStream;->tokenBegin:I

    const/4 v3, 0x0

    iget v4, p0, Lbsh/JavaCharStream;->bufsize:I

    iget v5, p0, Lbsh/JavaCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    const/4 v1, 0x0

    iget v3, p0, Lbsh/JavaCharStream;->bufsize:I

    iget v4, p0, Lbsh/JavaCharStream;->tokenBegin:I

    sub-int/2addr v3, v4

    iget v4, p0, Lbsh/JavaCharStream;->bufpos:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    iget v0, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v1, p0, Lbsh/JavaCharStream;->bufsize:I

    iget v2, p0, Lbsh/JavaCharStream;->tokenBegin:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/JavaCharStream;->bufpos:I
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_73} :catch_b3

    :goto_73
    iget v0, p0, Lbsh/JavaCharStream;->bufsize:I

    add-int/lit16 v0, v0, 0x800

    iput v0, p0, Lbsh/JavaCharStream;->bufsize:I

    iput v0, p0, Lbsh/JavaCharStream;->available:I

    iput v8, p0, Lbsh/JavaCharStream;->tokenBegin:I

    return-void

    :cond_7e
    :try_start_7e
    iget-object v3, p0, Lbsh/JavaCharStream;->buffer:[C

    iget v4, p0, Lbsh/JavaCharStream;->tokenBegin:I

    const/4 v5, 0x0

    iget v6, p0, Lbsh/JavaCharStream;->bufsize:I

    iget v7, p0, Lbsh/JavaCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lbsh/JavaCharStream;->buffer:[C

    iget-object v0, p0, Lbsh/JavaCharStream;->bufline:[I

    iget v3, p0, Lbsh/JavaCharStream;->tokenBegin:I

    const/4 v4, 0x0

    iget v5, p0, Lbsh/JavaCharStream;->bufsize:I

    iget v6, p0, Lbsh/JavaCharStream;->tokenBegin:I

    sub-int/2addr v5, v6

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lbsh/JavaCharStream;->bufline:[I

    iget-object v0, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    iget v1, p0, Lbsh/JavaCharStream;->tokenBegin:I

    const/4 v3, 0x0

    iget v4, p0, Lbsh/JavaCharStream;->bufsize:I

    iget v5, p0, Lbsh/JavaCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    iget v0, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v1, p0, Lbsh/JavaCharStream;->tokenBegin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lbsh/JavaCharStream;->bufpos:I
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_b2} :catch_b3

    goto :goto_73

    :catch_b3
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected FillBuff()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget v0, p0, Lbsh/JavaCharStream;->maxNextCharInd:I

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_b

    iput v4, p0, Lbsh/JavaCharStream;->nextCharInd:I

    iput v4, p0, Lbsh/JavaCharStream;->maxNextCharInd:I

    :cond_b
    :try_start_b
    iget-object v0, p0, Lbsh/JavaCharStream;->inputStream:Ljava/io/Reader;

    iget-object v1, p0, Lbsh/JavaCharStream;->nextCharBuf:[C

    iget v2, p0, Lbsh/JavaCharStream;->maxNextCharInd:I

    iget v3, p0, Lbsh/JavaCharStream;->maxNextCharInd:I

    rsub-int v3, v3, 0x1000

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_36

    iget-object v0, p0, Lbsh/JavaCharStream;->inputStream:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_27} :catch_27

    :catch_27
    move-exception v0

    iget v1, p0, Lbsh/JavaCharStream;->bufpos:I

    if-eqz v1, :cond_3c

    iget v1, p0, Lbsh/JavaCharStream;->bufpos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbsh/JavaCharStream;->bufpos:I

    invoke-virtual {p0, v4}, Lbsh/JavaCharStream;->backup(I)V

    :goto_35
    throw v0

    :cond_36
    :try_start_36
    iget v1, p0, Lbsh/JavaCharStream;->maxNextCharInd:I

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/JavaCharStream;->maxNextCharInd:I
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3b} :catch_27

    return-void

    :cond_3c
    iget-object v1, p0, Lbsh/JavaCharStream;->bufline:[I

    iget v2, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v3, p0, Lbsh/JavaCharStream;->line:I

    aput v3, v1, v2

    iget-object v1, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    iget v2, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v3, p0, Lbsh/JavaCharStream;->column:I

    aput v3, v1, v2

    goto :goto_35
.end method

.method public GetImage()Ljava/lang/String;
    .registers 7

    iget v0, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v1, p0, Lbsh/JavaCharStream;->tokenBegin:I

    if-lt v0, v1, :cond_17

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lbsh/JavaCharStream;->buffer:[C

    iget v2, p0, Lbsh/JavaCharStream;->tokenBegin:I

    iget v3, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v4, p0, Lbsh/JavaCharStream;->tokenBegin:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    :goto_16
    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lbsh/JavaCharStream;->buffer:[C

    iget v3, p0, Lbsh/JavaCharStream;->tokenBegin:I

    iget v4, p0, Lbsh/JavaCharStream;->bufsize:I

    iget v5, p0, Lbsh/JavaCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lbsh/JavaCharStream;->buffer:[C

    const/4 v3, 0x0

    iget v4, p0, Lbsh/JavaCharStream;->bufpos:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method public GetSuffix(I)[C
    .registers 7

    const/4 v4, 0x0

    new-array v0, p1, [C

    iget v1, p0, Lbsh/JavaCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    if-lt v1, p1, :cond_14

    iget-object v1, p0, Lbsh/JavaCharStream;->buffer:[C

    iget v2, p0, Lbsh/JavaCharStream;->bufpos:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_13
    return-object v0

    :cond_14
    iget-object v1, p0, Lbsh/JavaCharStream;->buffer:[C

    iget v2, p0, Lbsh/JavaCharStream;->bufsize:I

    iget v3, p0, Lbsh/JavaCharStream;->bufpos:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    iget v3, p0, Lbsh/JavaCharStream;->bufpos:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lbsh/JavaCharStream;->buffer:[C

    iget v2, p0, Lbsh/JavaCharStream;->bufpos:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lbsh/JavaCharStream;->bufpos:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_13
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .registers 4

    const/4 v1, 0x1

    const/16 v0, 0x1000

    invoke-virtual {p0, p1, v1, v1, v0}, Lbsh/JavaCharStream;->ReInit(Ljava/io/InputStream;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;II)V
    .registers 5

    const/16 v0, 0x1000

    invoke-virtual {p0, p1, p2, p3, v0}, Lbsh/JavaCharStream;->ReInit(Ljava/io/InputStream;III)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;III)V
    .registers 7

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x1000

    invoke-virtual {p0, v0, p2, p3, v1}, Lbsh/JavaCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .registers 4

    const/4 v1, 0x1

    const/16 v0, 0x1000

    invoke-virtual {p0, p1, v1, v1, v0}, Lbsh/JavaCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;II)V
    .registers 5

    const/16 v0, 0x1000

    invoke-virtual {p0, p1, p2, p3, v0}, Lbsh/JavaCharStream;->ReInit(Ljava/io/Reader;III)V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;III)V
    .registers 7

    const/4 v1, 0x0

    iput-object p1, p0, Lbsh/JavaCharStream;->inputStream:Ljava/io/Reader;

    iput p2, p0, Lbsh/JavaCharStream;->line:I

    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Lbsh/JavaCharStream;->column:I

    iget-object v0, p0, Lbsh/JavaCharStream;->buffer:[C

    if-eqz v0, :cond_12

    iget-object v0, p0, Lbsh/JavaCharStream;->buffer:[C

    array-length v0, v0

    if-eq p4, v0, :cond_28

    :cond_12
    iput p4, p0, Lbsh/JavaCharStream;->bufsize:I

    iput p4, p0, Lbsh/JavaCharStream;->available:I

    new-array v0, p4, [C

    iput-object v0, p0, Lbsh/JavaCharStream;->buffer:[C

    new-array v0, p4, [I

    iput-object v0, p0, Lbsh/JavaCharStream;->bufline:[I

    new-array v0, p4, [I

    iput-object v0, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    const/16 v0, 0x1000

    new-array v0, v0, [C

    iput-object v0, p0, Lbsh/JavaCharStream;->nextCharBuf:[C

    :cond_28
    iput-boolean v1, p0, Lbsh/JavaCharStream;->prevCharIsCR:Z

    iput-boolean v1, p0, Lbsh/JavaCharStream;->prevCharIsLF:Z

    iput v1, p0, Lbsh/JavaCharStream;->maxNextCharInd:I

    iput v1, p0, Lbsh/JavaCharStream;->inBuf:I

    iput v1, p0, Lbsh/JavaCharStream;->tokenBegin:I

    const/4 v0, -0x1

    iput v0, p0, Lbsh/JavaCharStream;->bufpos:I

    iput v0, p0, Lbsh/JavaCharStream;->nextCharInd:I

    return-void
.end method

.method protected ReadByte()C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lbsh/JavaCharStream;->nextCharInd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/JavaCharStream;->nextCharInd:I

    iget v1, p0, Lbsh/JavaCharStream;->maxNextCharInd:I

    if-lt v0, v1, :cond_d

    invoke-virtual {p0}, Lbsh/JavaCharStream;->FillBuff()V

    :cond_d
    iget-object v0, p0, Lbsh/JavaCharStream;->nextCharBuf:[C

    iget v1, p0, Lbsh/JavaCharStream;->nextCharInd:I

    aget-char v0, v0, v1

    return v0
.end method

.method protected UpdateLineColumn(C)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lbsh/JavaCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/JavaCharStream;->column:I

    iget-boolean v0, p0, Lbsh/JavaCharStream;->prevCharIsLF:Z

    if-eqz v0, :cond_2a

    iput-boolean v2, p0, Lbsh/JavaCharStream;->prevCharIsLF:Z

    iget v0, p0, Lbsh/JavaCharStream;->line:I

    iput v1, p0, Lbsh/JavaCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/JavaCharStream;->line:I

    :cond_16
    :goto_16
    packed-switch p1, :pswitch_data_58

    :goto_19
    :pswitch_19
    iget-object v0, p0, Lbsh/JavaCharStream;->bufline:[I

    iget v1, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v2, p0, Lbsh/JavaCharStream;->line:I

    aput v2, v0, v1

    iget-object v0, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    iget v1, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v2, p0, Lbsh/JavaCharStream;->column:I

    aput v2, v0, v1

    return-void

    :cond_2a
    iget-boolean v0, p0, Lbsh/JavaCharStream;->prevCharIsCR:Z

    if-eqz v0, :cond_16

    iput-boolean v2, p0, Lbsh/JavaCharStream;->prevCharIsCR:Z

    const/16 v0, 0xa

    if-ne p1, v0, :cond_37

    iput-boolean v1, p0, Lbsh/JavaCharStream;->prevCharIsLF:Z

    goto :goto_16

    :cond_37
    iget v0, p0, Lbsh/JavaCharStream;->line:I

    iput v1, p0, Lbsh/JavaCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/JavaCharStream;->line:I

    goto :goto_16

    :pswitch_40
    iput-boolean v1, p0, Lbsh/JavaCharStream;->prevCharIsCR:Z

    goto :goto_19

    :pswitch_43
    iput-boolean v1, p0, Lbsh/JavaCharStream;->prevCharIsLF:Z

    goto :goto_19

    :pswitch_46
    iget v0, p0, Lbsh/JavaCharStream;->column:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbsh/JavaCharStream;->column:I

    iget v0, p0, Lbsh/JavaCharStream;->column:I

    iget v1, p0, Lbsh/JavaCharStream;->column:I

    and-int/lit8 v1, v1, 0x7

    rsub-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/JavaCharStream;->column:I

    goto :goto_19

    :pswitch_data_58
    .packed-switch 0x9
        :pswitch_46
        :pswitch_43
        :pswitch_19
        :pswitch_19
        :pswitch_40
    .end packed-switch
.end method

.method public adjustBeginLineColumn(II)V
    .registers 11

    const/4 v1, 0x0

    iget v3, p0, Lbsh/JavaCharStream;->tokenBegin:I

    iget v0, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v2, p0, Lbsh/JavaCharStream;->tokenBegin:I

    if-lt v0, v2, :cond_4c

    iget v0, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v2, p0, Lbsh/JavaCharStream;->tokenBegin:I

    sub-int/2addr v0, v2

    iget v2, p0, Lbsh/JavaCharStream;->inBuf:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    :goto_13
    move v5, v1

    move v2, v1

    :goto_15
    if-ge v2, v0, :cond_2b

    iget-object v4, p0, Lbsh/JavaCharStream;->bufline:[I

    iget v1, p0, Lbsh/JavaCharStream;->bufsize:I

    rem-int v1, v3, v1

    aget v4, v4, v1

    iget-object v6, p0, Lbsh/JavaCharStream;->bufline:[I

    add-int/lit8 v3, v3, 0x1

    iget v7, p0, Lbsh/JavaCharStream;->bufsize:I

    rem-int v7, v3, v7

    aget v6, v6, v7

    if-eq v4, v6, :cond_5a

    :cond_2b
    if-ge v2, v0, :cond_3e

    iget-object v6, p0, Lbsh/JavaCharStream;->bufline:[I

    add-int/lit8 v4, p1, 0x1

    aput p1, v6, v1

    iget-object v6, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    add-int/2addr v5, p2

    aput v5, v6, v1

    move v5, v4

    move v4, v3

    :goto_3a
    add-int/lit8 v3, v2, 0x1

    if-lt v2, v0, :cond_71

    :cond_3e
    move v0, v1

    iget-object v1, p0, Lbsh/JavaCharStream;->bufline:[I

    aget v1, v1, v0

    iput v1, p0, Lbsh/JavaCharStream;->line:I

    iget-object v1, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    aget v0, v1, v0

    iput v0, p0, Lbsh/JavaCharStream;->column:I

    return-void

    :cond_4c
    iget v0, p0, Lbsh/JavaCharStream;->bufsize:I

    iget v2, p0, Lbsh/JavaCharStream;->tokenBegin:I

    sub-int/2addr v0, v2

    iget v2, p0, Lbsh/JavaCharStream;->bufpos:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lbsh/JavaCharStream;->inBuf:I

    add-int/2addr v0, v2

    goto :goto_13

    :cond_5a
    iget-object v4, p0, Lbsh/JavaCharStream;->bufline:[I

    aput p1, v4, v1

    iget-object v4, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    aget v4, v4, v7

    add-int/2addr v4, v5

    iget-object v6, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    aget v6, v6, v1

    sub-int/2addr v4, v6

    iget-object v6, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    add-int/2addr v5, p2

    aput v5, v6, v1

    add-int/lit8 v2, v2, 0x1

    move v5, v4

    goto :goto_15

    :cond_71
    iget-object v2, p0, Lbsh/JavaCharStream;->bufline:[I

    iget v1, p0, Lbsh/JavaCharStream;->bufsize:I

    rem-int v1, v4, v1

    aget v6, v2, v1

    iget-object v7, p0, Lbsh/JavaCharStream;->bufline:[I

    add-int/lit8 v2, v4, 0x1

    iget v4, p0, Lbsh/JavaCharStream;->bufsize:I

    rem-int v4, v2, v4

    aget v4, v7, v4

    if-eq v6, v4, :cond_8f

    iget-object v6, p0, Lbsh/JavaCharStream;->bufline:[I

    add-int/lit8 v4, v5, 0x1

    aput v5, v6, v1

    move v5, v4

    move v4, v2

    move v2, v3

    goto :goto_3a

    :cond_8f
    iget-object v4, p0, Lbsh/JavaCharStream;->bufline:[I

    aput v5, v4, v1

    move v4, v2

    move v2, v3

    goto :goto_3a
.end method

.method public backup(I)V
    .registers 4

    iget v0, p0, Lbsh/JavaCharStream;->inBuf:I

    add-int/2addr v0, p1

    iput v0, p0, Lbsh/JavaCharStream;->inBuf:I

    iget v0, p0, Lbsh/JavaCharStream;->bufpos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lbsh/JavaCharStream;->bufpos:I

    if-gez v0, :cond_13

    iget v0, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v1, p0, Lbsh/JavaCharStream;->bufsize:I

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/JavaCharStream;->bufpos:I

    :cond_13
    return-void
.end method

.method public getBeginColumn()I
    .registers 3

    iget-object v0, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    iget v1, p0, Lbsh/JavaCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getBeginLine()I
    .registers 3

    iget-object v0, p0, Lbsh/JavaCharStream;->bufline:[I

    iget v1, p0, Lbsh/JavaCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getColumn()I
    .registers 3

    iget-object v0, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    iget v1, p0, Lbsh/JavaCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndColumn()I
    .registers 3

    iget-object v0, p0, Lbsh/JavaCharStream;->bufcolumn:[I

    iget v1, p0, Lbsh/JavaCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndLine()I
    .registers 3

    iget-object v0, p0, Lbsh/JavaCharStream;->bufline:[I

    iget v1, p0, Lbsh/JavaCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getLine()I
    .registers 3

    iget-object v0, p0, Lbsh/JavaCharStream;->bufline:[I

    iget v1, p0, Lbsh/JavaCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public readChar()C
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x75

    const/4 v1, 0x1

    const/16 v3, 0x5c

    iget v0, p0, Lbsh/JavaCharStream;->inBuf:I

    if-lez v0, :cond_23

    iget v0, p0, Lbsh/JavaCharStream;->inBuf:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbsh/JavaCharStream;->inBuf:I

    iget v0, p0, Lbsh/JavaCharStream;->bufpos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v1, p0, Lbsh/JavaCharStream;->bufsize:I

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x0

    iput v0, p0, Lbsh/JavaCharStream;->bufpos:I

    :cond_1c
    iget-object v0, p0, Lbsh/JavaCharStream;->buffer:[C

    iget v1, p0, Lbsh/JavaCharStream;->bufpos:I

    aget-char v0, v0, v1

    :goto_22
    return v0

    :cond_23
    iget v0, p0, Lbsh/JavaCharStream;->bufpos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v2, p0, Lbsh/JavaCharStream;->available:I

    if-ne v0, v2, :cond_30

    invoke-virtual {p0}, Lbsh/JavaCharStream;->AdjustBuffSize()V

    :cond_30
    iget-object v2, p0, Lbsh/JavaCharStream;->buffer:[C

    iget v4, p0, Lbsh/JavaCharStream;->bufpos:I

    invoke-virtual {p0}, Lbsh/JavaCharStream;->ReadByte()C

    move-result v0

    aput-char v0, v2, v4

    if-ne v0, v3, :cond_100

    invoke-virtual {p0, v0}, Lbsh/JavaCharStream;->UpdateLineColumn(C)V

    move v0, v1

    :goto_40
    iget v2, p0, Lbsh/JavaCharStream;->bufpos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbsh/JavaCharStream;->bufpos:I

    iget v4, p0, Lbsh/JavaCharStream;->available:I

    if-ne v2, v4, :cond_4d

    invoke-virtual {p0}, Lbsh/JavaCharStream;->AdjustBuffSize()V

    :cond_4d
    :try_start_4d
    iget-object v2, p0, Lbsh/JavaCharStream;->buffer:[C

    iget v4, p0, Lbsh/JavaCharStream;->bufpos:I

    invoke-virtual {p0}, Lbsh/JavaCharStream;->ReadByte()C

    move-result v5

    aput-char v5, v2, v4

    if-eq v5, v3, :cond_bc

    invoke-virtual {p0, v5}, Lbsh/JavaCharStream;->UpdateLineColumn(C)V

    if-ne v5, v6, :cond_ad

    and-int/lit8 v2, v0, 0x1

    if-ne v2, v1, :cond_ad

    iget v2, p0, Lbsh/JavaCharStream;->bufpos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lbsh/JavaCharStream;->bufpos:I

    if-gez v2, :cond_70

    iget v2, p0, Lbsh/JavaCharStream;->bufsize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lbsh/JavaCharStream;->bufpos:I
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_70} :catch_b3

    :cond_70
    :goto_70
    :try_start_70
    invoke-virtual {p0}, Lbsh/JavaCharStream;->ReadByte()C

    move-result v2

    if-eq v2, v6, :cond_c3

    iget-object v4, p0, Lbsh/JavaCharStream;->buffer:[C

    iget v5, p0, Lbsh/JavaCharStream;->bufpos:I

    invoke-static {v2}, Lbsh/JavaCharStream;->hexval(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0xc

    invoke-virtual {p0}, Lbsh/JavaCharStream;->ReadByte()C

    move-result v6

    invoke-static {v6}, Lbsh/JavaCharStream;->hexval(C)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v2, v6

    invoke-virtual {p0}, Lbsh/JavaCharStream;->ReadByte()C

    move-result v6

    invoke-static {v6}, Lbsh/JavaCharStream;->hexval(C)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v2, v6

    invoke-virtual {p0}, Lbsh/JavaCharStream;->ReadByte()C

    move-result v6

    invoke-static {v6}, Lbsh/JavaCharStream;->hexval(C)I

    move-result v6

    or-int/2addr v2, v6

    int-to-char v2, v2

    aput-char v2, v4, v5

    iget v4, p0, Lbsh/JavaCharStream;->column:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lbsh/JavaCharStream;->column:I
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_a8} :catch_ca

    if-ne v0, v1, :cond_f8

    move v0, v2

    goto/16 :goto_22

    :cond_ad
    :try_start_ad
    invoke-virtual {p0, v0}, Lbsh/JavaCharStream;->backup(I)V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b3

    move v0, v3

    goto/16 :goto_22

    :catch_b3
    move-exception v2

    if-le v0, v1, :cond_b9

    invoke-virtual {p0, v0}, Lbsh/JavaCharStream;->backup(I)V

    :cond_b9
    move v0, v3

    goto/16 :goto_22

    :cond_bc
    invoke-virtual {p0, v5}, Lbsh/JavaCharStream;->UpdateLineColumn(C)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_40

    :cond_c3
    :try_start_c3
    iget v2, p0, Lbsh/JavaCharStream;->column:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbsh/JavaCharStream;->column:I
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c9} :catch_ca

    goto :goto_70

    :catch_ca
    move-exception v0

    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid escape character at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lbsh/JavaCharStream;->line:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lbsh/JavaCharStream;->column:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f8
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lbsh/JavaCharStream;->backup(I)V

    move v0, v3

    goto/16 :goto_22

    :cond_100
    invoke-virtual {p0, v0}, Lbsh/JavaCharStream;->UpdateLineColumn(C)V

    goto/16 :goto_22
.end method
