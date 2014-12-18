.class public Lxyzkwjbl/viris/service/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6e7c7513fa6ca904L


# instance fields
.field public command:Ljava/lang/String;

.field public payload:Ljava/lang/String;

.field public watch:Lxyzkwjbl/viris/service/TransactionUnit;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lxyzkwjbl/viris/service/Request;->command:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lxyzkwjbl/viris/service/Request;->payload:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lxyzkwjbl/viris/service/Request;->watch:Lxyzkwjbl/viris/service/TransactionUnit;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "payload"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lxyzkwjbl/viris/service/Request;->command:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lxyzkwjbl/viris/service/Request;->payload:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lxyzkwjbl/viris/service/Request;->watch:Lxyzkwjbl/viris/service/TransactionUnit;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lxyzkwjbl/viris/service/TransactionUnit;)V
    .registers 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "payload"    # Ljava/lang/String;
    .param p3, "watch"    # Lxyzkwjbl/viris/service/TransactionUnit;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lxyzkwjbl/viris/service/Request;->command:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lxyzkwjbl/viris/service/Request;->payload:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lxyzkwjbl/viris/service/Request;->watch:Lxyzkwjbl/viris/service/TransactionUnit;

    .line 30
    return-void
.end method
