.class public Lcom/geely/lib/oneosapi/systemui/ControlBoardManager;
.super Ljava/lang/Object;
.source "ControlBoardManager.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/common/ServiceBaseManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "ControlBoardManager"


# instance fields
.field private mService:Lcom/geely/lib/oneosapi/systemui/IControlBoardDialogService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mContext",
            "binder"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/geely/lib/oneosapi/systemui/IControlBoardDialogService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/systemui/IControlBoardDialogService;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/systemui/ControlBoardManager;->mService:Lcom/geely/lib/oneosapi/systemui/IControlBoardDialogService;

    return-void
.end method

.method private isServiceAlive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/systemui/ControlBoardManager;->mService:Lcom/geely/lib/oneosapi/systemui/IControlBoardDialogService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
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

    .line 1
    invoke-static {p1}, Lcom/geely/lib/oneosapi/systemui/IControlBoardDialogService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/systemui/IControlBoardDialogService;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/systemui/ControlBoardManager;->mService:Lcom/geely/lib/oneosapi/systemui/IControlBoardDialogService;

    return-void
.end method

.method public showMirrorDialog()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/systemui/ControlBoardManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/systemui/ControlBoardManager;->mService:Lcom/geely/lib/oneosapi/systemui/IControlBoardDialogService;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/systemui/IControlBoardDialogService;->showMirrorDialog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v0, "ControlBoardManager"

    const-string v1, "showMirrorDialog: service is not alive"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public showVolumeDialog()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/systemui/ControlBoardManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/systemui/ControlBoardManager;->mService:Lcom/geely/lib/oneosapi/systemui/IControlBoardDialogService;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/systemui/IControlBoardDialogService;->showVolumeDialog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v0, "ControlBoardManager"

    const-string v1, "showVolumeDialog: service is not alive"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
