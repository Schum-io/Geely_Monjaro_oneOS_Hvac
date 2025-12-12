.class public Lcom/geely/lib/cloud/trilateral/TrilateralManager;
.super Ljava/lang/Object;
.source "TrilateralManager.java"

# interfaces
.implements Lcom/geely/lib/cloud/common/ServiceBaseManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "TrilateralManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/geely/lib/cloud/trilateral/ITrilateral;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "binder"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/geely/lib/cloud/trilateral/TrilateralManager;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {p2}, Lcom/geely/lib/cloud/trilateral/ITrilateral$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/trilateral/ITrilateral;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/trilateral/TrilateralManager;->mService:Lcom/geely/lib/cloud/trilateral/ITrilateral;

    return-void
.end method


# virtual methods
.method public getAutoUnboundAccount(Lcom/geely/lib/cloud/trilateral/bean/ThirdTypeParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "thirdTypeParam",
            "callback"
        }
    .end annotation

    const-string v0, "TrilateralManager"

    const-string v1, "getAutoUnboundAccount"

    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/trilateral/TrilateralManager;->mService:Lcom/geely/lib/cloud/trilateral/ITrilateral;

    if-eqz v1, :cond_0

    .line 121
    new-instance v0, Lcom/geely/lib/cloud/trilateral/TrilateralManager$4;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/trilateral/TrilateralManager$4;-><init>(Lcom/geely/lib/cloud/trilateral/TrilateralManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/trilateral/ITrilateral;->getAutoUnboundAccount(Lcom/geely/lib/cloud/trilateral/bean/ThirdTypeParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 138
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 141
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getBindingAccount(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    const-string v0, "TrilateralManager"

    const-string v1, "getTaiBindingAccount"

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/trilateral/TrilateralManager;->mService:Lcom/geely/lib/cloud/trilateral/ITrilateral;

    if-eqz v1, :cond_0

    .line 65
    new-instance v0, Lcom/geely/lib/cloud/trilateral/TrilateralManager$2;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/trilateral/TrilateralManager$2;-><init>(Lcom/geely/lib/cloud/trilateral/TrilateralManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/trilateral/ITrilateral;->getTaiBindingAccount(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 82
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getTaiLoginQrcode(Lcom/geely/lib/cloud/trilateral/bean/TerminalIdParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "terminalIdParam",
            "callback"
        }
    .end annotation

    const-string v0, "TrilateralManager"

    const-string v1, "getTaiLoginQrcode"

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/trilateral/TrilateralManager;->mService:Lcom/geely/lib/cloud/trilateral/ITrilateral;

    if-eqz v1, :cond_0

    .line 37
    new-instance v0, Lcom/geely/lib/cloud/trilateral/TrilateralManager$1;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/trilateral/TrilateralManager$1;-><init>(Lcom/geely/lib/cloud/trilateral/TrilateralManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/trilateral/ITrilateral;->getTaiLoginQrcode(Lcom/geely/lib/cloud/trilateral/bean/TerminalIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 54
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getTaiUnboundAccount(Lcom/geely/lib/cloud/trilateral/bean/ThirdTypeParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "thirdTypeParam",
            "callback"
        }
    .end annotation

    const-string v0, "TrilateralManager"

    const-string v1, "getTaiUnboundAccount"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/trilateral/TrilateralManager;->mService:Lcom/geely/lib/cloud/trilateral/ITrilateral;

    if-eqz v1, :cond_0

    .line 93
    new-instance v0, Lcom/geely/lib/cloud/trilateral/TrilateralManager$3;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/trilateral/TrilateralManager$3;-><init>(Lcom/geely/lib/cloud/trilateral/TrilateralManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/trilateral/ITrilateral;->getTaiUnboundAccount(Lcom/geely/lib/cloud/trilateral/bean/ThirdTypeParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 110
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 113
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setService(Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binder"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 29
    invoke-static {p1}, Lcom/geely/lib/cloud/trilateral/ITrilateral$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/trilateral/ITrilateral;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/trilateral/TrilateralManager;->mService:Lcom/geely/lib/cloud/trilateral/ITrilateral;

    :cond_0
    return-void
.end method
