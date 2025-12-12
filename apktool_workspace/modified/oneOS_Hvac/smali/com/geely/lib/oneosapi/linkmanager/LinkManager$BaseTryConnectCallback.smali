.class public abstract Lcom/geely/lib/oneosapi/linkmanager/LinkManager$BaseTryConnectCallback;
.super Lcom/geely/lib/oneosapi/linkmanager/ITryConnectCallback$Stub;
.source "LinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/linkmanager/LinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseTryConnectCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/linkmanager/ITryConnectCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public denied()V
    .locals 2

    const-string v0, "LinkManager"

    const-string v1, "denied: "

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public permitted()V
    .locals 2

    const-string v0, "LinkManager"

    const-string v1, "permitted: "

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
