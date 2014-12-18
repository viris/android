.class public Lxyzkwjbl/viris/service/TransactionUnit;
.super Ljava/lang/Object;
.source "TransactionUnit.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4576c03d39666727L


# instance fields
.field public bshName:Ljava/lang/String;

.field public fieldType:Ljava/lang/String;

.field public origName:Ljava/lang/String;

.field public transient ovalue:Ljava/lang/Object;

.field public shortName:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "bshName"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;
    .param p3, "origName"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "ovalue"    # Ljava/lang/Object;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "fieldType"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lxyzkwjbl/viris/service/TransactionUnit;->bshName:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lxyzkwjbl/viris/service/TransactionUnit;->shortName:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lxyzkwjbl/viris/service/TransactionUnit;->origName:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lxyzkwjbl/viris/service/TransactionUnit;->value:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lxyzkwjbl/viris/service/TransactionUnit;->ovalue:Ljava/lang/Object;

    .line 28
    iput-object p6, p0, Lxyzkwjbl/viris/service/TransactionUnit;->type:Ljava/lang/String;

    .line 29
    iput-object p7, p0, Lxyzkwjbl/viris/service/TransactionUnit;->fieldType:Ljava/lang/String;

    .line 30
    return-void
.end method
