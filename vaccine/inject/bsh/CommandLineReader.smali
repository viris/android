.class Lbsh/CommandLineReader;
.super Ljava/io/FilterReader;


# static fields
.field static final lastCharNL:I = 0x1

.field static final normal:I = 0x0

.field static final sentSemi:I = 0x2


# instance fields
.field state:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    const/4 v0, 0x1

    iput v0, p0, Lbsh/CommandLineReader;->state:I

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lbsh/CommandLineReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lbsh/CommandLineReader;-><init>(Ljava/io/Reader;)V

    :goto_c
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    goto :goto_c
.end method


# virtual methods
.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0xa

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget v0, p0, Lbsh/CommandLineReader;->state:I

    if-ne v0, v4, :cond_c

    iput v3, p0, Lbsh/CommandLineReader;->state:I

    move v0, v1

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lbsh/CommandLineReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_c

    if-ne v0, v1, :cond_24

    iget v1, p0, Lbsh/CommandLineReader;->state:I

    if-ne v1, v3, :cond_21

    const/16 v0, 0x3b

    iput v4, p0, Lbsh/CommandLineReader;->state:I

    goto :goto_b

    :cond_21
    iput v3, p0, Lbsh/CommandLineReader;->state:I

    goto :goto_b

    :cond_24
    const/4 v1, 0x0

    iput v1, p0, Lbsh/CommandLineReader;->state:I

    goto :goto_b
.end method

.method public read([CII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0}, Lbsh/CommandLineReader;->read()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    int-to-char v0, v1

    aput-char v0, p1, p2

    const/4 v0, 0x1

    goto :goto_7
.end method
