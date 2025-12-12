.class public Lcom/geely/lib/oneosapi/launcher/LauncherManager;
.super Ljava/lang/Object;
.source "LauncherManager.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/common/ServiceBaseManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "ShortcutManager"


# instance fields
.field private mService:Lcom/geely/lib/oneosapi/launcher/ILauncherService;


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
    invoke-static {p2}, Lcom/geely/lib/oneosapi/launcher/ILauncherService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/launcher/ILauncherService;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->mService:Lcom/geely/lib/oneosapi/launcher/ILauncherService;

    return-void
.end method

.method private isServiceAlive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->mService:Lcom/geely/lib/oneosapi/launcher/ILauncherService;

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
.method public closeApplets(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appletsKey"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->mService:Lcom/geely/lib/oneosapi/launcher/ILauncherService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->closeApplets(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "ShortcutManager"

    const-string v0, "closeApplets: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public hvacMassageDisplay(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isShow",
            "isMain"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->mService:Lcom/geely/lib/oneosapi/launcher/ILauncherService;

    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->hvacMassageDisplay(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "ShortcutManager"

    const-string p2, "hvacMassageDisplay: service is not alive"

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public isWidgetsShowing(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPsd"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->mService:Lcom/geely/lib/oneosapi/launcher/ILauncherService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->isWidgetsShowing(Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "ShortcutManager"

    const-string v0, "isWidgetsShowing: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public mediaSourceListDisplay(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "show",
            "isPsd"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->mService:Lcom/geely/lib/oneosapi/launcher/ILauncherService;

    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->mediaSourceListDisplay(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "ShortcutManager"

    const-string p2, "mediaSourceListDisplay: service is not alive"

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public openApplets(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appletsKey"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->mService:Lcom/geely/lib/oneosapi/launcher/ILauncherService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->openApplets(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "ShortcutManager"

    const-string v0, "openApplets: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public registerEnterOrExitHomePageChangeListener(Lcom/geely/lib/oneosapi/launcher/listener/IEnterOrExitHomePageChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->mService:Lcom/geely/lib/oneosapi/launcher/ILauncherService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->registerEnterOrExitHomePageChangeListener(Lcom/geely/lib/oneosapi/launcher/listener/IEnterOrExitHomePageChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "ShortcutManager"

    const-string v0, "unRegisterWeatherWidgetListener: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public registerLauncherPageSwitchListener(Lcom/geely/lib/oneosapi/launcher/listener/ILauncherPageSwitchListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->mService:Lcom/geely/lib/oneosapi/launcher/ILauncherService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->registerLauncherPageSwitchListener(Lcom/geely/lib/oneosapi/launcher/listener/ILauncherPageSwitchListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "ShortcutManager"

    const-string v0, "registerLauncherPageSwitchListener: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public registerMapWidgetListener(Lcom/geely/lib/oneosapi/launcher/listener/IMapWidgetChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->mService:Lcom/geely/lib/oneosapi/launcher/ILauncherService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->registerMapWidgetListener(Lcom/geely/lib/oneosapi/launcher/listener/IMapWidgetChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "ShortcutManager"

    const-string v0, "registerMapWidgetListener: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public registerWeatherWidgetListener(Lcom/geely/lib/oneosapi/launcher/listener/IWeatherWidgetChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->mService:Lcom/geely/lib/oneosapi/launcher/ILauncherService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->registerWeatherWidgetListener(Lcom/geely/lib/oneosapi/launcher/listener/IWeatherWidgetChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "ShortcutManager"

    const-string v0, "registerWeatherWidgetListener: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public registerWidgetListDisplayChangeListener(Lcom/geely/lib/oneosapi/launcher/listener/IWidgetListDisplayChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->mService:Lcom/geely/lib/oneosapi/launcher/ILauncherService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->registerWidgetListDisplayChangeListener(Lcom/geely/lib/oneosapi/launcher/listener/IWidgetListDisplayChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "ShortcutManager"

    const-string v0, "registerWidgetListDisplayChangeListener: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public selectWidgetMap(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classname"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->mService:Lcom/geely/lib/oneosapi/launcher/ILauncherService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->selectWidgetMap(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "ShortcutManager"

    const-string v0, "selectWidgetMap: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
    invoke-static {p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/launcher/ILauncherService;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->mService:Lcom/geely/lib/oneosapi/launcher/ILauncherService;

    return-void
.end method

.method public showPsdMediaControlWidget(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isShow"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->mService:Lcom/geely/lib/oneosapi/launcher/ILauncherService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->showPsdMediaControlWidget(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "ShortcutManager"

    const-string v0, "showPsdMediaControlWidget: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startGlobalSearch(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyWord"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->mService:Lcom/geely/lib/oneosapi/launcher/ILauncherService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->startGlobalSearch(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "ShortcutManager"

    const-string v0, "startGlobalSearch: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public togglePsdWidget()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->mService:Lcom/geely/lib/oneosapi/launcher/ILauncherService;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->togglePsdWidget()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v0, "ShortcutManager"

    const-string v1, "togglePsdWidget: service is not alive"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public toggleWidget()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->mService:Lcom/geely/lib/oneosapi/launcher/ILauncherService;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->toggleWidget()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v0, "ShortcutManager"

    const-string v1, "toggleWidget: service is not alive"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public unRegisterEnterOrExitHomePageChangeListener(Lcom/geely/lib/oneosapi/launcher/listener/IEnterOrExitHomePageChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->mService:Lcom/geely/lib/oneosapi/launcher/ILauncherService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->unRegisterEnterOrExitHomePageChangeListener(Lcom/geely/lib/oneosapi/launcher/listener/IEnterOrExitHomePageChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "ShortcutManager"

    const-string v0, "unRegisterWeatherWidgetListener: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public unRegisterLauncherPageSwitchListener(Lcom/geely/lib/oneosapi/launcher/listener/ILauncherPageSwitchListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->mService:Lcom/geely/lib/oneosapi/launcher/ILauncherService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->unRegisterLauncherPageSwitchListener(Lcom/geely/lib/oneosapi/launcher/listener/ILauncherPageSwitchListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "ShortcutManager"

    const-string v0, "unRegisterLauncherPageSwitchListener: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public unRegisterMapWidgetListener(Lcom/geely/lib/oneosapi/launcher/listener/IMapWidgetChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->mService:Lcom/geely/lib/oneosapi/launcher/ILauncherService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->unRegisterMapWidgetListener(Lcom/geely/lib/oneosapi/launcher/listener/IMapWidgetChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "ShortcutManager"

    const-string v0, "unRegisterMapWidgetListener: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public unRegisterWeatherWidgetListener(Lcom/geely/lib/oneosapi/launcher/listener/IWeatherWidgetChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->mService:Lcom/geely/lib/oneosapi/launcher/ILauncherService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->unRegisterWeatherWidgetListener(Lcom/geely/lib/oneosapi/launcher/listener/IWeatherWidgetChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "ShortcutManager"

    const-string v0, "unRegisterWeatherWidgetListener: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public unRegisterWidgetListDisplayChangeListener(Lcom/geely/lib/oneosapi/launcher/listener/IWidgetListDisplayChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/launcher/LauncherManager;->mService:Lcom/geely/lib/oneosapi/launcher/ILauncherService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/launcher/ILauncherService;->unRegisterWidgetListDisplayChangeListener(Lcom/geely/lib/oneosapi/launcher/listener/IWidgetListDisplayChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "ShortcutManager"

    const-string v0, "unRegisterWidgetListDisplayChangeListener: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
