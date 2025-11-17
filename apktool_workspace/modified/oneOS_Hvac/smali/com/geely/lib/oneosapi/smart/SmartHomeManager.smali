.class public Lcom/geely/lib/oneosapi/smart/SmartHomeManager;
.super Ljava/lang/Object;
.source "SmartHomeManager.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/common/ServiceBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/smart/SmartHomeManager$BaseSmartHomeAPICallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartHomeManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/geely/lib/oneosapi/smart/ISmartApi;


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
    iput-object p1, p0, Lcom/geely/lib/oneosapi/smart/SmartHomeManager;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {p2}, Lcom/geely/lib/oneosapi/smart/ISmartApi$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/smart/ISmartApi;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/smart/SmartHomeManager;->mService:Lcom/geely/lib/oneosapi/smart/ISmartApi;

    return-void
.end method

.method private isServiceAlive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/smart/SmartHomeManager;->mService:Lcom/geely/lib/oneosapi/smart/ISmartApi;

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
.method public controlACTemp(Ljava/lang/String;Ljava/lang/String;IILcom/geely/lib/oneosapi/smart/SmartHomeManager$BaseSmartHomeAPICallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "location",
            "setType",
            "targetTemp",
            "adjustTemp",
            "callback"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/smart/SmartHomeManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/smart/SmartHomeManager;->mService:Lcom/geely/lib/oneosapi/smart/ISmartApi;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/geely/lib/oneosapi/smart/ISmartApi;->controlACTemp(Ljava/lang/String;Ljava/lang/String;IILcom/geely/lib/oneosapi/smart/IResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "SmartHomeManager"

    const-string p2, "controlACTemp: service is not alive"

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public controlDeviceMode(Ljava/lang/String;IILcom/geely/lib/oneosapi/smart/SmartHomeManager$BaseSmartHomeAPICallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "location",
            "deviceType",
            "mode",
            "callback"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/smart/SmartHomeManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/smart/SmartHomeManager;->mService:Lcom/geely/lib/oneosapi/smart/ISmartApi;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/geely/lib/oneosapi/smart/ISmartApi;->controlDeviceMode(Ljava/lang/String;IILcom/geely/lib/oneosapi/smart/IResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "SmartHomeManager"

    const-string p2, "controlDeviceMode: service is not alive"

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public controlDeviceSpeed(Ljava/lang/String;IILcom/geely/lib/oneosapi/smart/SmartHomeManager$BaseSmartHomeAPICallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "location",
            "deviceType",
            "speed",
            "callback"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/smart/SmartHomeManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/smart/SmartHomeManager;->mService:Lcom/geely/lib/oneosapi/smart/ISmartApi;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/geely/lib/oneosapi/smart/ISmartApi;->controlDeviceSpeed(Ljava/lang/String;IILcom/geely/lib/oneosapi/smart/IResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "SmartHomeManager"

    const-string p2, "controlDeviceSpeed: service is not alive"

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public controlDeviceSpeedNew(Ljava/lang/String;ILjava/lang/String;IILcom/geely/lib/oneosapi/smart/IResultCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "location",
            "deviceType",
            "setType",
            "speed",
            "adjustSpeed",
            "callback"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/smart/SmartHomeManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/smart/SmartHomeManager;->mService:Lcom/geely/lib/oneosapi/smart/ISmartApi;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/geely/lib/oneosapi/smart/ISmartApi;->controlDeviceSpeedNew(Ljava/lang/String;ILjava/lang/String;IILcom/geely/lib/oneosapi/smart/IResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "SmartHomeManager"

    const-string p2, "controlDeviceSpeedNew: service is not alive"

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public controlDeviceSwitch(Ljava/lang/String;IZLcom/geely/lib/oneosapi/smart/SmartHomeManager$BaseSmartHomeAPICallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "location",
            "deviceType",
            "isOpen",
            "callback"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/smart/SmartHomeManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/smart/SmartHomeManager;->mService:Lcom/geely/lib/oneosapi/smart/ISmartApi;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/geely/lib/oneosapi/smart/ISmartApi;->controlDeviceSwitch(Ljava/lang/String;IZLcom/geely/lib/oneosapi/smart/IResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "SmartHomeManager"

    const-string p2, "controlDeviceSwitch: service is not alive"

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public controlSceneMode(ZLjava/lang/String;Lcom/geely/lib/oneosapi/smart/SmartHomeManager$BaseSmartHomeAPICallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "isOpen",
            "sceneName",
            "callback"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/smart/SmartHomeManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/smart/SmartHomeManager;->mService:Lcom/geely/lib/oneosapi/smart/ISmartApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/geely/lib/oneosapi/smart/ISmartApi;->controlSceneMode(ZLjava/lang/String;Lcom/geely/lib/oneosapi/smart/IResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "SmartHomeManager"

    const-string p2, "controlSceneMode: service is not alive"

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getAllSceneList(Lcom/geely/lib/oneosapi/smart/api/scene/IGetSceneListCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/smart/SmartHomeManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/smart/SmartHomeManager;->mService:Lcom/geely/lib/oneosapi/smart/ISmartApi;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/smart/ISmartApi;->getAllSceneList(Lcom/geely/lib/oneosapi/smart/scene/IGetSceneListCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string p1, "SmartHomeManager"

    const-string v0, "getAllSceneList: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public registerSceneChangeListener(Lcom/geely/lib/oneosapi/smart/api/scene/ISceneChangeCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/smart/SmartHomeManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/smart/SmartHomeManager;->mService:Lcom/geely/lib/oneosapi/smart/ISmartApi;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/smart/ISmartApi;->registerSceneChangeListener(Lcom/geely/lib/oneosapi/smart/scene/ISceneChangeCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string p1, "SmartHomeManager"

    const-string v0, "registerSceneChangeListener: service is not alive"

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

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcom/geely/lib/oneosapi/smart/ISmartApi$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/smart/ISmartApi;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/smart/SmartHomeManager;->mService:Lcom/geely/lib/oneosapi/smart/ISmartApi;

    :cond_0
    return-void
.end method

.method public unregisterSceneChangeListener(Lcom/geely/lib/oneosapi/smart/api/scene/ISceneChangeCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/smart/SmartHomeManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/smart/SmartHomeManager;->mService:Lcom/geely/lib/oneosapi/smart/ISmartApi;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/smart/ISmartApi;->unregisterSceneChangeListener(Lcom/geely/lib/oneosapi/smart/scene/ISceneChangeCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string p1, "SmartHomeManager"

    const-string v0, "unregisterSceneChangeListener: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
