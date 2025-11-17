.class public Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;
.super Ljava/lang/Object;
.source "StatusBarPublicManager.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/common/ServiceBaseManager;


# static fields
.field public static final DARK:I = 0x2

.field public static final DEFAULT:I = 0x0

.field public static final LIGHT:I = 0x1

.field private static final STATUS_BAR_MODE:Ljava/lang/String; = "StatusBarMode"

.field private static final TAG:Ljava/lang/String; = "StatusBarPublicManager"


# instance fields
.field private mService:Lcom/geely/lib/oneosapi/systemui/IStatusBarService;


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
    invoke-static {p2}, Lcom/geely/lib/oneosapi/systemui/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/systemui/IStatusBarService;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->mService:Lcom/geely/lib/oneosapi/systemui/IStatusBarService;

    return-void
.end method

.method private closeDialogByName(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialogName"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeDialogByName--dialogName."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarPublicManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->mService:Lcom/geely/lib/oneosapi/systemui/IStatusBarService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/systemui/IStatusBarService;->closeDialogByName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "closeDialogByName: service is not alive"

    .line 9
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private isServiceAlive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->mService:Lcom/geely/lib/oneosapi/systemui/IStatusBarService;

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

.method private setLeftTempStateVisibility(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "leftTempStateContents",
            "visibility"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLeftTempStateMediaVisibility leftTempStateContents : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " visibility :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarPublicManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->mService:Lcom/geely/lib/oneosapi/systemui/IStatusBarService;

    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/systemui/IStatusBarService;->setLeftTempStateVisibility(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "setPsdStatusVisibility: service is not alive"

    .line 9
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private showDialogByName(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialogName"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialogName."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarPublicManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->mService:Lcom/geely/lib/oneosapi/systemui/IStatusBarService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/systemui/IStatusBarService;->showDialogByName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "showDialogByName: service is not alive"

    .line 9
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public closeAccessPointDialog()V
    .locals 1

    const-string v0, "AccessPoint"

    .line 1
    invoke-direct {p0, v0}, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->closeDialogByName(Ljava/lang/String;)V

    return-void
.end method

.method public closeBluetoothDialog()V
    .locals 1

    const-string v0, "Bluetooth"

    .line 1
    invoke-direct {p0, v0}, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->closeDialogByName(Ljava/lang/String;)V

    return-void
.end method

.method public closeWifiDialog()V
    .locals 1

    const-string v0, "Wifi"

    .line 1
    invoke-direct {p0, v0}, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->closeDialogByName(Ljava/lang/String;)V

    return-void
.end method

.method public getPsdStatusBarVisibility()I
    .locals 2

    const-string v0, "StatusBarPublicManager"

    const-string v1, "getPsdStatusBarVisibility"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->isServiceAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->mService:Lcom/geely/lib/oneosapi/systemui/IStatusBarService;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/systemui/IStatusBarService;->getPsdStatusBarVisibility()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v1, "getPsdStatusBarVisibility: service is not alive"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getStatusBarWindowMode()Landroid/os/Bundle;
    .locals 2

    const-string v0, "StatusBarPublicManager"

    const-string v1, "getStatusBarWindowMode  "

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->isServiceAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->mService:Lcom/geely/lib/oneosapi/systemui/IStatusBarService;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/systemui/IStatusBarService;->getStatusBarWindowMode()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v1, "getStatusBarWindowMode: service is not alive"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public registerStatusBarModeChangeListener(Lcom/geely/lib/oneosapi/systemui/listener/IStatusBarModeChangeListener;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "pkg"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerStatusBarModeChangeListener pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarPublicManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerStatusBarModeChangeListener mService "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->mService:Lcom/geely/lib/oneosapi/systemui/IStatusBarService;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->mService:Lcom/geely/lib/oneosapi/systemui/IStatusBarService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->mService:Lcom/geely/lib/oneosapi/systemui/IStatusBarService;

    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/systemui/IStatusBarService;->registerStatusBarModeChangeListener(Lcom/geely/lib/oneosapi/systemui/listener/IStatusBarModeChangeListener;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCsdActivity(Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "csdActitvity"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCsdActivity csdActitvity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarPublicManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->mService:Lcom/geely/lib/oneosapi/systemui/IStatusBarService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/systemui/IStatusBarService;->setCsdActivity(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "setCsdActivity: service is not alive"

    .line 9
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setLeftTempStateMediaVisibility(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    const-string v0, "music"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->setLeftTempStateVisibility(Ljava/lang/String;I)V

    return-void
.end method

.method public setPsdActivity(Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "psdAcitvity"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPsdActivity psdAcitvity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarPublicManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->mService:Lcom/geely/lib/oneosapi/systemui/IStatusBarService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/systemui/IStatusBarService;->setPsdActivity(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "setPsdActivity: service is not alive"

    .line 9
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setPsdStatusVisibility(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPsdStatusVisibility visibility"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarPublicManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->mService:Lcom/geely/lib/oneosapi/systemui/IStatusBarService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/systemui/IStatusBarService;->setPsdStatusVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "setPsdStatusVisibility: service is not alive"

    .line 9
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 1
    invoke-static {p1}, Lcom/geely/lib/oneosapi/systemui/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/systemui/IStatusBarService;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->mService:Lcom/geely/lib/oneosapi/systemui/IStatusBarService;

    return-void
.end method

.method public showAccessPointDialog()V
    .locals 1

    const-string v0, "AccessPoint"

    .line 1
    invoke-direct {p0, v0}, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->showDialogByName(Ljava/lang/String;)V

    return-void
.end method

.method public showBluetoothDialog()V
    .locals 1

    const-string v0, "Bluetooth"

    .line 1
    invoke-direct {p0, v0}, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->showDialogByName(Ljava/lang/String;)V

    return-void
.end method

.method public showCsdBluetoothDialogInPsd()V
    .locals 1

    const-string v0, "CsdBluetoothInPsd"

    .line 1
    invoke-direct {p0, v0}, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->showDialogByName(Ljava/lang/String;)V

    return-void
.end method

.method public showPsdBluetoothDialog()V
    .locals 1

    const-string v0, "PsdBluetooth"

    .line 1
    invoke-direct {p0, v0}, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->showDialogByName(Ljava/lang/String;)V

    return-void
.end method

.method public showWifiDialog()V
    .locals 1

    const-string v0, "Wifi"

    .line 1
    invoke-direct {p0, v0}, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->showDialogByName(Ljava/lang/String;)V

    return-void
.end method

.method public unRegisterStatusBarModeChangeListener(Lcom/geely/lib/oneosapi/systemui/listener/IStatusBarModeChangeListener;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "pkg"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unRegisterStatusBarModeChangeListener pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarPublicManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterStatusBarModeChangeListener mService "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->mService:Lcom/geely/lib/oneosapi/systemui/IStatusBarService;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->mService:Lcom/geely/lib/oneosapi/systemui/IStatusBarService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;->mService:Lcom/geely/lib/oneosapi/systemui/IStatusBarService;

    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/systemui/IStatusBarService;->unRegisterStatusBarModeChangeListener(Lcom/geely/lib/oneosapi/systemui/listener/IStatusBarModeChangeListener;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
