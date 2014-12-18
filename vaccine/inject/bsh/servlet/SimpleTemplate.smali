.class public Lbsh/servlet/SimpleTemplate;
.super Ljava/lang/Object;


# static fields
.field static NO_TEMPLATE:Ljava/lang/String;

.field static cacheTemplates:Z

.field static templateData:Ljava/util/Map;


# instance fields
.field buff:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "NO_TEMPLATE"

    sput-object v0, Lbsh/servlet/SimpleTemplate;->NO_TEMPLATE:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lbsh/servlet/SimpleTemplate;->templateData:Ljava/util/Map;

    const/4 v0, 0x1

    sput-boolean v0, Lbsh/servlet/SimpleTemplate;->cacheTemplates:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lbsh/servlet/SimpleTemplate;->getStringFromStream(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbsh/servlet/SimpleTemplate;->init(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lbsh/servlet/SimpleTemplate;->init(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lbsh/servlet/SimpleTemplate;->getStringFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbsh/servlet/SimpleTemplate;->init(Ljava/lang/String;)V

    return-void
.end method

.method public static getStringFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lbsh/servlet/SimpleTemplate;->getStringFromStream(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringFromStream(Ljava/io/Reader;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_15

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_15
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a
.end method

.method public static getTemplate(Ljava/lang/String;)Lbsh/servlet/SimpleTemplate;
    .registers 5

    const/4 v1, 0x0

    sget-object v0, Lbsh/servlet/SimpleTemplate;->templateData:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_f

    sget-boolean v2, Lbsh/servlet/SimpleTemplate;->cacheTemplates:Z

    if-nez v2, :cond_2c

    :cond_f
    :try_start_f
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lbsh/servlet/SimpleTemplate;->getStringFromStream(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lbsh/servlet/SimpleTemplate;->templateData:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1d} :catch_22

    move-object v2, v0

    :goto_1e
    if-nez v2, :cond_36

    move-object v0, v1

    :goto_21
    return-object v0

    :catch_22
    move-exception v2

    sget-object v2, Lbsh/servlet/SimpleTemplate;->templateData:Ljava/util/Map;

    sget-object v3, Lbsh/servlet/SimpleTemplate;->NO_TEMPLATE:Ljava/lang/String;

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    goto :goto_1e

    :cond_2c
    sget-object v2, Lbsh/servlet/SimpleTemplate;->NO_TEMPLATE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    move-object v0, v1

    goto :goto_21

    :cond_36
    new-instance v0, Lbsh/servlet/SimpleTemplate;

    invoke-direct {v0, v2}, Lbsh/servlet/SimpleTemplate;-><init>(Ljava/lang/String;)V

    goto :goto_21

    :cond_3c
    move-object v2, v0

    goto :goto_1e
.end method

.method private init(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbsh/servlet/SimpleTemplate;->buff:Ljava/lang/StringBuffer;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const/4 v2, 0x2

    aget-object v2, p0, v2

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lbsh/servlet/SimpleTemplate;->getStringFromStream(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lbsh/servlet/SimpleTemplate;

    invoke-direct {v3, v0}, Lbsh/servlet/SimpleTemplate;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Lbsh/servlet/SimpleTemplate;->replace(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Lbsh/servlet/SimpleTemplate;->write(Ljava/io/PrintStream;)V

    return-void
.end method

.method public static setCacheTemplates(Z)V
    .registers 1

    sput-boolean p0, Lbsh/servlet/SimpleTemplate;->cacheTemplates:Z

    return-void
.end method


# virtual methods
.method findTemplate(Ljava/lang/String;)[I
    .registers 13

    const/4 v3, 0x0

    const/4 v10, -0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lbsh/servlet/SimpleTemplate;->buff:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    move v1, v3

    :goto_e
    if-lt v1, v6, :cond_11

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    const-string v2, "<!--"

    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v10, :cond_10

    const-string v1, "-->"

    invoke-virtual {v5, v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v10, :cond_10

    const-string v2, "-->"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int v4, v1, v2

    const-string v1, "TEMPLATE-"

    invoke-virtual {v5, v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v10, :cond_33

    move v1, v4

    goto :goto_e

    :cond_33
    if-le v1, v4, :cond_37

    move v1, v4

    goto :goto_e

    :cond_37
    const-string v2, "TEMPLATE-"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    move v1, v2

    :goto_3f
    if-lt v1, v6, :cond_56

    :cond_41
    if-ge v1, v6, :cond_10

    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v7, v0, v3

    const/4 v1, 0x1

    aput v4, v0, v1

    goto :goto_10

    :cond_56
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-eq v8, v9, :cond_41

    const/16 v9, 0x9

    if-eq v8, v9, :cond_41

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_41

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :cond_69
    move v1, v4

    goto :goto_e
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    :goto_0
    invoke-virtual {p0, p1}, Lbsh/servlet/SimpleTemplate;->findTemplate(Ljava/lang/String;)[I

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lbsh/servlet/SimpleTemplate;->buff:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v1, v2, v0, p2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbsh/servlet/SimpleTemplate;->buff:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/PrintStream;)V
    .registers 3

    invoke-virtual {p0}, Lbsh/servlet/SimpleTemplate;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public write(Ljava/io/PrintWriter;)V
    .registers 3

    invoke-virtual {p0}, Lbsh/servlet/SimpleTemplate;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
