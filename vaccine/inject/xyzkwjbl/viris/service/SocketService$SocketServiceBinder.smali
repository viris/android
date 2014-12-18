.class public Lxyzkwjbl/viris/service/SocketService$SocketServiceBinder;
.super Landroid/os/Binder;
.source "SocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyzkwjbl/viris/service/SocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SocketServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lxyzkwjbl/viris/service/SocketService;


# direct methods
.method public constructor <init>(Lxyzkwjbl/viris/service/SocketService;)V
    .registers 2

    .prologue
    .line 149
    iput-object p1, p0, Lxyzkwjbl/viris/service/SocketService$SocketServiceBinder;->this$0:Lxyzkwjbl/viris/service/SocketService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lxyzkwjbl/viris/service/SocketService;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lxyzkwjbl/viris/service/SocketService$SocketServiceBinder;->this$0:Lxyzkwjbl/viris/service/SocketService;

    return-object v0
.end method
