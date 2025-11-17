.class public Lcom/geely/lib/oneosapi/OneOSApiManager;
.super Ljava/lang/Object;
.source "OneOSApiManager.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/listener/ServiceConnectionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "OneOSApiManager"

.field private static volatile sInstance:Lcom/geely/lib/oneosapi/OneOSApiManager;


# instance fields
.field private mAppStoreManager:Lcom/geely/lib/oneosapi/appstore/AppStoreManager;

.field private volatile mCameraManager:Lcom/geely/lib/oneosapi/camera/CameraManager;

.field private final mContext:Landroid/content/Context;

.field private mControlBoardManager:Lcom/geely/lib/oneosapi/systemui/ControlBoardManager;

.field private mDeviceManager:Lcom/geely/lib/oneosapi/device/DeviceManager;

.field private mDockBarManager:Lcom/geely/lib/oneosapi/systemui/DockBarManager;

.field private mGestureManager:Lcom/geely/lib/oneosapi/gesture/GestureManager;

.field private mKeyInputManager:Lcom/geely/lib/oneosapi/input/KeyInputManager;

.field private mLauncherManager:Lcom/geely/lib/oneosapi/launcher/LauncherManager;

.field private mLinkManager:Lcom/geely/lib/oneosapi/linkmanager/LinkManager;

.field private mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

.field private mMqttManager:Lcom/geely/lib/oneosapi/mqtt/MqttManager;

.field private volatile mNaviManager:Lcom/geely/lib/oneosapi/navi/NaviManager;

.field private volatile mOtaManager:Lcom/geely/lib/oneosapi/ota/OtaManager;

.field private mPaymentManager:Lcom/geely/lib/oneosapi/payment/PaymentManager;

.field private mPhoneManager:Lcom/geely/lib/oneosapi/phone/PhoneManager;

.field private mRecommendationManager:Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;

.field private mSceneModeManager:Lcom/geely/lib/oneosapi/scenemode/SceneModeManager;

.field private mScheduleManager:Lcom/geely/lib/oneosapi/schedule/ScheduleManager;

.field private final mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

.field private mShortcutManager:Lcom/geely/lib/oneosapi/launcher/ShortcutManager;

.field private mSmartHomeManager:Lcom/geely/lib/oneosapi/smart/SmartHomeManager;

.field private mStatusBarPublicManager:Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;

.field private mThemeManager:Lcom/geely/lib/oneosapi/theme/ThemeManager;

.field private mUserManager:Lcom/geely/lib/oneosapi/user/UserManager;

.field private mVimsManager:Lcom/geely/lib/oneosapi/vims/VimsManager;

.field private volatile mVrManager:Lcom/geely/lib/oneosapi/vr/VrManager;

.field private mWeatherManager:Lcom/geely/lib/oneosapi/weather/WeatherManager;

.field private mWechatManager:Lcom/geely/lib/oneosapi/wechat/WeChatManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mContext:Landroid/content/Context;

    .line 3
    new-instance v0, Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-direct {v0, p1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    .line 5
    invoke-virtual {v0, p0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->registerServiceConnectionListener(Lcom/geely/lib/oneosapi/listener/ServiceConnectionListener;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/geely/lib/oneosapi/OneOSApiManager;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/OneOSApiManager;->sInstance:Lcom/geely/lib/oneosapi/OneOSApiManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/geely/lib/oneosapi/OneOSApiManager;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/geely/lib/oneosapi/OneOSApiManager;->sInstance:Lcom/geely/lib/oneosapi/OneOSApiManager;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/geely/lib/oneosapi/OneOSApiManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/geely/lib/oneosapi/OneOSApiManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/geely/lib/oneosapi/OneOSApiManager;->sInstance:Lcom/geely/lib/oneosapi/OneOSApiManager;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 8
    :cond_1
    :goto_0
    sget-object p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->sInstance:Lcom/geely/lib/oneosapi/OneOSApiManager;

    return-object p0
.end method

.method private updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "manager",
            "serviceType"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p2}, Lcom/geely/lib/oneosapi/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/geely/lib/oneosapi/common/ServiceBaseManager;->setService(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public addService(ILandroid/os/IBinder;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "binder"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addService() called with: type = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], binder = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneOSApiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isServiceBound"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object v0

    .line 6
    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/IServiceManager;->addService(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAppStoreManager()Lcom/geely/lib/oneosapi/appstore/AppStoreManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mAppStoreManager:Lcom/geely/lib/oneosapi/appstore/AppStoreManager;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAppStoreManager: mServiceConnectionManager.isServiceBound(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneOSApiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object v0

    const/16 v1, 0x1d

    .line 7
    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    new-instance v1, Lcom/geely/lib/oneosapi/appstore/AppStoreManager;

    invoke-direct {v1, v0}, Lcom/geely/lib/oneosapi/appstore/AppStoreManager;-><init>(Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mAppStoreManager:Lcom/geely/lib/oneosapi/appstore/AppStoreManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    .line 19
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mAppStoreManager:Lcom/geely/lib/oneosapi/appstore/AppStoreManager;

    return-object v0
.end method

.method public getCameraManager()Lcom/geely/lib/oneosapi/camera/CameraManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mCameraManager:Lcom/geely/lib/oneosapi/camera/CameraManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/geely/lib/oneosapi/OneOSApiManager;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mCameraManager:Lcom/geely/lib/oneosapi/camera/CameraManager;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 7
    :try_start_1
    iget-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object v1

    const/16 v2, 0x11

    .line 8
    invoke-interface {v1, v2}, Lcom/geely/lib/oneosapi/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    new-instance v2, Lcom/geely/lib/oneosapi/camera/CameraManager;

    invoke-direct {v2, v1}, Lcom/geely/lib/oneosapi/camera/CameraManager;-><init>(Landroid/os/IBinder;)V

    iput-object v2, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mCameraManager:Lcom/geely/lib/oneosapi/camera/CameraManager;

    goto :goto_0

    :catch_0
    move-exception v1

    .line 14
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    .line 15
    monitor-exit v0

    return-object v1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 22
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mCameraManager:Lcom/geely/lib/oneosapi/camera/CameraManager;

    return-object v0
.end method

.method public getControlBoardManager()Lcom/geely/lib/oneosapi/systemui/ControlBoardManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mControlBoardManager:Lcom/geely/lib/oneosapi/systemui/ControlBoardManager;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isServiceBound."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneOSApiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object v0

    const/16 v1, 0xc

    .line 7
    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    new-instance v1, Lcom/geely/lib/oneosapi/systemui/ControlBoardManager;

    iget-object v2, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/oneosapi/systemui/ControlBoardManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mControlBoardManager:Lcom/geely/lib/oneosapi/systemui/ControlBoardManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    .line 19
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mControlBoardManager:Lcom/geely/lib/oneosapi/systemui/ControlBoardManager;

    return-object v0
.end method

.method public getDeviceManager()Lcom/geely/lib/oneosapi/device/DeviceManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mDeviceManager:Lcom/geely/lib/oneosapi/device/DeviceManager;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    new-instance v1, Lcom/geely/lib/oneosapi/device/DeviceManager;

    iget-object v2, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/oneosapi/device/DeviceManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mDeviceManager:Lcom/geely/lib/oneosapi/device/DeviceManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    .line 20
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mDeviceManager:Lcom/geely/lib/oneosapi/device/DeviceManager;

    return-object v0
.end method

.method public getDockBarManager()Lcom/geely/lib/oneosapi/systemui/DockBarManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mDockBarManager:Lcom/geely/lib/oneosapi/systemui/DockBarManager;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getThemeManager: mServiceConnectionManager.isServiceBound(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneOSApiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object v0

    const/16 v1, 0x15

    .line 7
    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    new-instance v1, Lcom/geely/lib/oneosapi/systemui/DockBarManager;

    iget-object v2, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/oneosapi/systemui/DockBarManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mDockBarManager:Lcom/geely/lib/oneosapi/systemui/DockBarManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    .line 19
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mDockBarManager:Lcom/geely/lib/oneosapi/systemui/DockBarManager;

    return-object v0
.end method

.method public getGestureManager()Lcom/geely/lib/oneosapi/gesture/GestureManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mGestureManager:Lcom/geely/lib/oneosapi/gesture/GestureManager;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x17

    .line 7
    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/geely/lib/oneosapi/gesture/GestureManager;

    iget-object v2, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/oneosapi/gesture/GestureManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mGestureManager:Lcom/geely/lib/oneosapi/gesture/GestureManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    .line 16
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mGestureManager:Lcom/geely/lib/oneosapi/gesture/GestureManager;

    return-object v0
.end method

.method public getKeyInputManager()Lcom/geely/lib/oneosapi/input/KeyInputManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mKeyInputManager:Lcom/geely/lib/oneosapi/input/KeyInputManager;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object v0

    const/16 v1, 0x8

    .line 6
    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    new-instance v1, Lcom/geely/lib/oneosapi/input/KeyInputManager;

    iget-object v2, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/oneosapi/input/KeyInputManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mKeyInputManager:Lcom/geely/lib/oneosapi/input/KeyInputManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    .line 18
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mKeyInputManager:Lcom/geely/lib/oneosapi/input/KeyInputManager;

    return-object v0
.end method

.method public getLauncherManager()Lcom/geely/lib/oneosapi/launcher/LauncherManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mLauncherManager:Lcom/geely/lib/oneosapi/launcher/LauncherManager;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getThemeManager: mServiceConnectionManager.isServiceBound(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneOSApiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object v0

    const/16 v1, 0x16

    .line 7
    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    new-instance v1, Lcom/geely/lib/oneosapi/launcher/LauncherManager;

    iget-object v2, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/oneosapi/launcher/LauncherManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mLauncherManager:Lcom/geely/lib/oneosapi/launcher/LauncherManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    .line 19
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mLauncherManager:Lcom/geely/lib/oneosapi/launcher/LauncherManager;

    return-object v0
.end method

.method public getLinkManager()Lcom/geely/lib/oneosapi/linkmanager/LinkManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mLinkManager:Lcom/geely/lib/oneosapi/linkmanager/LinkManager;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object v0

    const/16 v1, 0x13

    .line 6
    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    new-instance v1, Lcom/geely/lib/oneosapi/linkmanager/LinkManager;

    iget-object v2, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/oneosapi/linkmanager/LinkManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mLinkManager:Lcom/geely/lib/oneosapi/linkmanager/LinkManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    .line 19
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mLinkManager:Lcom/geely/lib/oneosapi/linkmanager/LinkManager;

    return-object v0
.end method

.method public getMediaCenterManager()Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object v0

    const/4 v1, 0x3

    .line 6
    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    iget-object v2, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    .line 18
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    return-object v0
.end method

.method public getNaviManager()Lcom/geely/lib/oneosapi/navi/NaviManager;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mNaviManager:Lcom/geely/lib/oneosapi/navi/NaviManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/geely/lib/oneosapi/OneOSApiManager;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mNaviManager:Lcom/geely/lib/oneosapi/navi/NaviManager;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 7
    :try_start_1
    iget-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 9
    invoke-interface {v1, v2}, Lcom/geely/lib/oneosapi/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v1

    .line 10
    new-instance v2, Lcom/geely/lib/oneosapi/navi/NaviManager;

    iget-object v3, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/geely/lib/oneosapi/navi/NaviManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v2, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mNaviManager:Lcom/geely/lib/oneosapi/navi/NaviManager;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 13
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    .line 14
    monitor-exit v0

    return-object v1

    .line 18
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 20
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mNaviManager:Lcom/geely/lib/oneosapi/navi/NaviManager;

    return-object v0
.end method

.method public getOtaManager()Lcom/geely/lib/oneosapi/ota/OtaManager;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mOtaManager:Lcom/geely/lib/oneosapi/ota/OtaManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/geely/lib/oneosapi/OneOSApiManager;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mOtaManager:Lcom/geely/lib/oneosapi/ota/OtaManager;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 7
    :try_start_1
    iget-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object v1

    const/16 v2, 0x1c

    .line 8
    invoke-interface {v1, v2}, Lcom/geely/lib/oneosapi/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    new-instance v2, Lcom/geely/lib/oneosapi/ota/OtaManager;

    iget-object v3, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/geely/lib/oneosapi/ota/OtaManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v2, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mOtaManager:Lcom/geely/lib/oneosapi/ota/OtaManager;

    goto :goto_0

    :catch_0
    move-exception v1

    .line 14
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    .line 15
    monitor-exit v0

    return-object v1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 22
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mOtaManager:Lcom/geely/lib/oneosapi/ota/OtaManager;

    return-object v0
.end method

.method public getPaymentManager()Lcom/geely/lib/oneosapi/payment/PaymentManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mPaymentManager:Lcom/geely/lib/oneosapi/payment/PaymentManager;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPaymentManager: mServiceConnectionManager.isServiceBound(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneOSApiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object v0

    const/16 v1, 0x18

    .line 7
    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    new-instance v1, Lcom/geely/lib/oneosapi/payment/PaymentManager;

    iget-object v2, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/oneosapi/payment/PaymentManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mPaymentManager:Lcom/geely/lib/oneosapi/payment/PaymentManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    .line 19
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mPaymentManager:Lcom/geely/lib/oneosapi/payment/PaymentManager;

    return-object v0
.end method

.method public getPhoneManager()Lcom/geely/lib/oneosapi/phone/PhoneManager;
    .locals 4

    const-string v0, "OneOSApiManager"

    .line 1
    iget-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mPhoneManager:Lcom/geely/lib/oneosapi/phone/PhoneManager;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneManager serviceManager."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xe

    .line 7
    invoke-interface {v1, v2}, Lcom/geely/lib/oneosapi/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneManager phoneService."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    new-instance v0, Lcom/geely/lib/oneosapi/phone/PhoneManager;

    iget-object v2, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/geely/lib/oneosapi/phone/PhoneManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mPhoneManager:Lcom/geely/lib/oneosapi/phone/PhoneManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    .line 20
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mPhoneManager:Lcom/geely/lib/oneosapi/phone/PhoneManager;

    return-object v0
.end method

.method public getRecommendationManager()Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mRecommendationManager:Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object v0

    const/16 v1, 0xa

    .line 6
    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    new-instance v1, Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;

    iget-object v2, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mRecommendationManager:Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    .line 18
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mRecommendationManager:Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;

    return-object v0
.end method

.method public getSceneModeManager()Lcom/geely/lib/oneosapi/scenemode/SceneModeManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mSceneModeManager:Lcom/geely/lib/oneosapi/scenemode/SceneModeManager;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isServiceBound."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneOSApiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object v0

    const/16 v1, 0xd

    .line 7
    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    new-instance v1, Lcom/geely/lib/oneosapi/scenemode/SceneModeManager;

    iget-object v2, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/oneosapi/scenemode/SceneModeManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mSceneModeManager:Lcom/geely/lib/oneosapi/scenemode/SceneModeManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    .line 19
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mSceneModeManager:Lcom/geely/lib/oneosapi/scenemode/SceneModeManager;

    return-object v0
.end method

.method public getScheduleManager()Lcom/geely/lib/oneosapi/schedule/ScheduleManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mScheduleManager:Lcom/geely/lib/oneosapi/schedule/ScheduleManager;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object v0

    const/4 v1, 0x6

    .line 6
    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    new-instance v1, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;

    iget-object v2, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/oneosapi/schedule/ScheduleManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mScheduleManager:Lcom/geely/lib/oneosapi/schedule/ScheduleManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    .line 18
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mScheduleManager:Lcom/geely/lib/oneosapi/schedule/ScheduleManager;

    return-object v0
.end method

.method public getShortcutManager()Lcom/geely/lib/oneosapi/launcher/ShortcutManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mShortcutManager:Lcom/geely/lib/oneosapi/launcher/ShortcutManager;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getThemeManager: mServiceConnectionManager.isServiceBound(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneOSApiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object v0

    const/16 v1, 0x14

    .line 7
    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    new-instance v1, Lcom/geely/lib/oneosapi/launcher/ShortcutManager;

    iget-object v2, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/oneosapi/launcher/ShortcutManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mShortcutManager:Lcom/geely/lib/oneosapi/launcher/ShortcutManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    .line 19
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mShortcutManager:Lcom/geely/lib/oneosapi/launcher/ShortcutManager;

    return-object v0
.end method

.method public getSmartHomeManager()Lcom/geely/lib/oneosapi/smart/SmartHomeManager;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mSmartHomeManager:Lcom/geely/lib/oneosapi/smart/SmartHomeManager;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    const-string v1, "OneOSApiManager"

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object v0

    const/16 v2, 0xf

    .line 6
    invoke-interface {v0, v2}, Lcom/geely/lib/oneosapi/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    new-instance v1, Lcom/geely/lib/oneosapi/smart/SmartHomeManager;

    iget-object v2, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/oneosapi/smart/SmartHomeManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mSmartHomeManager:Lcom/geely/lib/oneosapi/smart/SmartHomeManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmartHomeManager():exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "getSmartHomeManager():isNotServiceBound"

    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mSmartHomeManager:Lcom/geely/lib/oneosapi/smart/SmartHomeManager;

    return-object v0
.end method

.method public getStatusBarPublicManager()Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mStatusBarPublicManager:Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isServiceBound."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneOSApiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object v0

    const/16 v1, 0xb

    .line 7
    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    new-instance v1, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;

    iget-object v2, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mStatusBarPublicManager:Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    .line 19
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mStatusBarPublicManager:Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;

    return-object v0
.end method

.method public getThemeManager()Lcom/geely/lib/oneosapi/theme/ThemeManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mThemeManager:Lcom/geely/lib/oneosapi/theme/ThemeManager;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getThemeManager: mServiceConnectionManager.isServiceBound(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneOSApiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object v0

    const/16 v1, 0x12

    .line 7
    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    new-instance v1, Lcom/geely/lib/oneosapi/theme/ThemeManager;

    iget-object v2, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/oneosapi/theme/ThemeManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mThemeManager:Lcom/geely/lib/oneosapi/theme/ThemeManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    .line 19
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mThemeManager:Lcom/geely/lib/oneosapi/theme/ThemeManager;

    return-object v0
.end method

.method public getUserManager()Lcom/geely/lib/oneosapi/user/UserManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mUserManager:Lcom/geely/lib/oneosapi/user/UserManager;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object v0

    const/4 v1, 0x7

    .line 6
    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    new-instance v1, Lcom/geely/lib/oneosapi/user/UserManager;

    iget-object v2, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/oneosapi/user/UserManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mUserManager:Lcom/geely/lib/oneosapi/user/UserManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    .line 18
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mUserManager:Lcom/geely/lib/oneosapi/user/UserManager;

    return-object v0
.end method

.method public getVimsManager()Lcom/geely/lib/oneosapi/vims/VimsManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mVimsManager:Lcom/geely/lib/oneosapi/vims/VimsManager;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object v0

    const/4 v1, 0x5

    .line 6
    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    new-instance v1, Lcom/geely/lib/oneosapi/vims/VimsManager;

    iget-object v2, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/oneosapi/vims/VimsManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mVimsManager:Lcom/geely/lib/oneosapi/vims/VimsManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    .line 18
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mVimsManager:Lcom/geely/lib/oneosapi/vims/VimsManager;

    return-object v0
.end method

.method public getVrManager()Lcom/geely/lib/oneosapi/vr/VrManager;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mVrManager:Lcom/geely/lib/oneosapi/vr/VrManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/geely/lib/oneosapi/OneOSApiManager;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mVrManager:Lcom/geely/lib/oneosapi/vr/VrManager;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 7
    :try_start_1
    iget-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object v1

    const/4 v2, 0x2

    .line 8
    invoke-interface {v1, v2}, Lcom/geely/lib/oneosapi/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    new-instance v2, Lcom/geely/lib/oneosapi/vr/VrManager;

    iget-object v3, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/geely/lib/oneosapi/vr/VrManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v2, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mVrManager:Lcom/geely/lib/oneosapi/vr/VrManager;

    goto :goto_0

    :catch_0
    move-exception v1

    .line 14
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    .line 15
    monitor-exit v0

    return-object v1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 22
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mVrManager:Lcom/geely/lib/oneosapi/vr/VrManager;

    return-object v0
.end method

.method public getWeatherManager()Lcom/geely/lib/oneosapi/weather/WeatherManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mWeatherManager:Lcom/geely/lib/oneosapi/weather/WeatherManager;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object v0

    const/4 v1, 0x4

    .line 6
    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    new-instance v1, Lcom/geely/lib/oneosapi/weather/WeatherManager;

    iget-object v2, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/oneosapi/weather/WeatherManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mWeatherManager:Lcom/geely/lib/oneosapi/weather/WeatherManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    .line 18
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mWeatherManager:Lcom/geely/lib/oneosapi/weather/WeatherManager;

    return-object v0
.end method

.method public getWechatManager()Lcom/geely/lib/oneosapi/wechat/WeChatManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mWechatManager:Lcom/geely/lib/oneosapi/wechat/WeChatManager;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWechatManager: mServiceConnectionManager.isServiceBound(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneOSApiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/oneosapi/IServiceManager;

    move-result-object v0

    const/16 v1, 0x1b

    .line 7
    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    new-instance v1, Lcom/geely/lib/oneosapi/wechat/WeChatManager;

    invoke-direct {v1, v0}, Lcom/geely/lib/oneosapi/wechat/WeChatManager;-><init>(Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mWechatManager:Lcom/geely/lib/oneosapi/wechat/WeChatManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    .line 19
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mWechatManager:Lcom/geely/lib/oneosapi/wechat/WeChatManager;

    return-object v0
.end method

.method public init()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->connect()V

    return-void
.end method

.method public init(Lcom/geely/lib/oneosapi/listener/ApiConnectCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callBack"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0, p1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->connect(Lcom/geely/lib/oneosapi/listener/ApiConnectCallBack;)V

    return-void
.end method

.method public onServiceBinderUpdated(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binderType"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBinderUpdate  binderType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneOSApiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 82
    :pswitch_1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mAppStoreManager:Lcom/geely/lib/oneosapi/appstore/AppStoreManager;

    invoke-direct {p0, v0, p1}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    goto/16 :goto_0

    .line 83
    :pswitch_2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mOtaManager:Lcom/geely/lib/oneosapi/ota/OtaManager;

    invoke-direct {p0, v0, p1}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    goto/16 :goto_0

    .line 84
    :pswitch_3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mWechatManager:Lcom/geely/lib/oneosapi/wechat/WeChatManager;

    invoke-direct {p0, v0, p1}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    goto/16 :goto_0

    .line 85
    :pswitch_4
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mPaymentManager:Lcom/geely/lib/oneosapi/payment/PaymentManager;

    invoke-direct {p0, v0, p1}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    goto/16 :goto_0

    .line 86
    :pswitch_5
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mGestureManager:Lcom/geely/lib/oneosapi/gesture/GestureManager;

    invoke-direct {p0, v0, p1}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    goto/16 :goto_0

    .line 87
    :pswitch_6
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mLauncherManager:Lcom/geely/lib/oneosapi/launcher/LauncherManager;

    invoke-direct {p0, v0, p1}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    goto/16 :goto_0

    .line 88
    :pswitch_7
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mDockBarManager:Lcom/geely/lib/oneosapi/systemui/DockBarManager;

    invoke-direct {p0, v0, p1}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    goto/16 :goto_0

    .line 89
    :pswitch_8
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mShortcutManager:Lcom/geely/lib/oneosapi/launcher/ShortcutManager;

    invoke-direct {p0, v0, p1}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    goto/16 :goto_0

    .line 90
    :pswitch_9
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mLinkManager:Lcom/geely/lib/oneosapi/linkmanager/LinkManager;

    invoke-direct {p0, v0, p1}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    goto/16 :goto_0

    .line 91
    :pswitch_a
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mThemeManager:Lcom/geely/lib/oneosapi/theme/ThemeManager;

    invoke-direct {p0, v0, p1}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    goto/16 :goto_0

    .line 92
    :pswitch_b
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mCameraManager:Lcom/geely/lib/oneosapi/camera/CameraManager;

    invoke-direct {p0, v0, p1}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    goto/16 :goto_0

    .line 93
    :pswitch_c
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mMqttManager:Lcom/geely/lib/oneosapi/mqtt/MqttManager;

    invoke-direct {p0, v0, p1}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    goto :goto_0

    .line 94
    :pswitch_d
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mSmartHomeManager:Lcom/geely/lib/oneosapi/smart/SmartHomeManager;

    invoke-direct {p0, v0, p1}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    goto :goto_0

    .line 95
    :pswitch_e
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mPhoneManager:Lcom/geely/lib/oneosapi/phone/PhoneManager;

    invoke-direct {p0, v0, p1}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    goto :goto_0

    .line 96
    :pswitch_f
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mSceneModeManager:Lcom/geely/lib/oneosapi/scenemode/SceneModeManager;

    invoke-direct {p0, v0, p1}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    goto :goto_0

    .line 97
    :pswitch_10
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mControlBoardManager:Lcom/geely/lib/oneosapi/systemui/ControlBoardManager;

    invoke-direct {p0, v0, p1}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    goto :goto_0

    .line 103
    :pswitch_11
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mStatusBarPublicManager:Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;

    invoke-direct {p0, v0, p1}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    goto :goto_0

    .line 104
    :pswitch_12
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mRecommendationManager:Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;

    invoke-direct {p0, v0, p1}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    goto :goto_0

    .line 105
    :pswitch_13
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mKeyInputManager:Lcom/geely/lib/oneosapi/input/KeyInputManager;

    invoke-direct {p0, v0, p1}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    goto :goto_0

    .line 106
    :pswitch_14
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mUserManager:Lcom/geely/lib/oneosapi/user/UserManager;

    invoke-direct {p0, v0, p1}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    goto :goto_0

    .line 107
    :pswitch_15
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mScheduleManager:Lcom/geely/lib/oneosapi/schedule/ScheduleManager;

    invoke-direct {p0, v0, p1}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    goto :goto_0

    .line 108
    :pswitch_16
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mVimsManager:Lcom/geely/lib/oneosapi/vims/VimsManager;

    invoke-direct {p0, v0, p1}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    goto :goto_0

    .line 109
    :pswitch_17
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mWeatherManager:Lcom/geely/lib/oneosapi/weather/WeatherManager;

    invoke-direct {p0, v0, p1}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    goto :goto_0

    .line 110
    :pswitch_18
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-direct {p0, v0, p1}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    goto :goto_0

    .line 111
    :pswitch_19
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mVrManager:Lcom/geely/lib/oneosapi/vr/VrManager;

    invoke-direct {p0, v0, p1}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    goto :goto_0

    .line 112
    :pswitch_1a
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mNaviManager:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-direct {p0, v0, p1}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    goto :goto_0

    .line 113
    :pswitch_1b
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mDeviceManager:Lcom/geely/lib/oneosapi/device/DeviceManager;

    invoke-direct {p0, v0, p1}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onServiceConnectionChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connectionState"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBinderStateChanged  binderState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneOSApiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mDeviceManager:Lcom/geely/lib/oneosapi/device/DeviceManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    .line 4
    iget-object p1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mNaviManager:Lcom/geely/lib/oneosapi/navi/NaviManager;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    .line 5
    iget-object p1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mVrManager:Lcom/geely/lib/oneosapi/vr/VrManager;

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    .line 6
    iget-object p1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    .line 7
    iget-object p1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mWeatherManager:Lcom/geely/lib/oneosapi/weather/WeatherManager;

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    .line 8
    iget-object p1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mVimsManager:Lcom/geely/lib/oneosapi/vims/VimsManager;

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    .line 9
    iget-object p1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mScheduleManager:Lcom/geely/lib/oneosapi/schedule/ScheduleManager;

    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    .line 10
    iget-object p1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mUserManager:Lcom/geely/lib/oneosapi/user/UserManager;

    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    .line 11
    iget-object p1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mKeyInputManager:Lcom/geely/lib/oneosapi/input/KeyInputManager;

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    .line 12
    iget-object p1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mRecommendationManager:Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    .line 13
    iget-object p1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mControlBoardManager:Lcom/geely/lib/oneosapi/systemui/ControlBoardManager;

    const/16 v0, 0xc

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    .line 14
    iget-object p1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mSceneModeManager:Lcom/geely/lib/oneosapi/scenemode/SceneModeManager;

    const/16 v0, 0xd

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    .line 15
    iget-object p1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mStatusBarPublicManager:Lcom/geely/lib/oneosapi/systemui/StatusBarPublicManager;

    const/16 v0, 0xb

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    .line 16
    iget-object p1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mPhoneManager:Lcom/geely/lib/oneosapi/phone/PhoneManager;

    const/16 v0, 0xe

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    .line 17
    iget-object p1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mSmartHomeManager:Lcom/geely/lib/oneosapi/smart/SmartHomeManager;

    const/16 v0, 0xf

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    .line 18
    iget-object p1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mMqttManager:Lcom/geely/lib/oneosapi/mqtt/MqttManager;

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    .line 19
    iget-object p1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mCameraManager:Lcom/geely/lib/oneosapi/camera/CameraManager;

    const/16 v0, 0x11

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    .line 20
    iget-object p1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mThemeManager:Lcom/geely/lib/oneosapi/theme/ThemeManager;

    const/16 v0, 0x12

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    .line 21
    iget-object p1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mLinkManager:Lcom/geely/lib/oneosapi/linkmanager/LinkManager;

    const/16 v0, 0x13

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    .line 22
    iget-object p1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mShortcutManager:Lcom/geely/lib/oneosapi/launcher/ShortcutManager;

    const/16 v0, 0x14

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    .line 23
    iget-object p1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mDockBarManager:Lcom/geely/lib/oneosapi/systemui/DockBarManager;

    const/16 v0, 0x15

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    .line 24
    iget-object p1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mLauncherManager:Lcom/geely/lib/oneosapi/launcher/LauncherManager;

    const/16 v0, 0x16

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    .line 25
    iget-object p1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mGestureManager:Lcom/geely/lib/oneosapi/gesture/GestureManager;

    const/16 v0, 0x17

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    .line 26
    iget-object p1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mPaymentManager:Lcom/geely/lib/oneosapi/payment/PaymentManager;

    const/16 v0, 0x18

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    .line 27
    iget-object p1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mWechatManager:Lcom/geely/lib/oneosapi/wechat/WeChatManager;

    const/16 v0, 0x1b

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    .line 28
    iget-object p1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mOtaManager:Lcom/geely/lib/oneosapi/ota/OtaManager;

    const/16 v0, 0x1c

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    .line 29
    iget-object p1, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mAppStoreManager:Lcom/geely/lib/oneosapi/appstore/AppStoreManager;

    const/16 v0, 0x1d

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->updateServiceBinder(Lcom/geely/lib/oneosapi/common/ServiceBaseManager;I)V

    :cond_0
    return-void
.end method

.method public registerServiceConnectionListener(Lcom/geely/lib/oneosapi/listener/ServiceConnectionListener;)V
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
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0, p1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->registerServiceConnectionListener(Lcom/geely/lib/oneosapi/listener/ServiceConnectionListener;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->release()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mDeviceManager:Lcom/geely/lib/oneosapi/device/DeviceManager;

    .line 4
    iput-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mNaviManager:Lcom/geely/lib/oneosapi/navi/NaviManager;

    .line 5
    iput-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mVrManager:Lcom/geely/lib/oneosapi/vr/VrManager;

    .line 6
    iput-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mOtaManager:Lcom/geely/lib/oneosapi/ota/OtaManager;

    .line 7
    iput-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    .line 8
    iput-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mWeatherManager:Lcom/geely/lib/oneosapi/weather/WeatherManager;

    .line 9
    iput-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mVimsManager:Lcom/geely/lib/oneosapi/vims/VimsManager;

    .line 10
    iput-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mScheduleManager:Lcom/geely/lib/oneosapi/schedule/ScheduleManager;

    .line 11
    iput-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mUserManager:Lcom/geely/lib/oneosapi/user/UserManager;

    .line 12
    iput-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mRecommendationManager:Lcom/geely/lib/oneosapi/recommendation/RecommendationManager;

    .line 13
    iput-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mSmartHomeManager:Lcom/geely/lib/oneosapi/smart/SmartHomeManager;

    .line 14
    iput-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mMqttManager:Lcom/geely/lib/oneosapi/mqtt/MqttManager;

    .line 15
    iput-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mCameraManager:Lcom/geely/lib/oneosapi/camera/CameraManager;

    .line 16
    iput-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mLinkManager:Lcom/geely/lib/oneosapi/linkmanager/LinkManager;

    .line 17
    iput-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mShortcutManager:Lcom/geely/lib/oneosapi/launcher/ShortcutManager;

    .line 18
    iput-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mDockBarManager:Lcom/geely/lib/oneosapi/systemui/DockBarManager;

    .line 19
    iput-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mLauncherManager:Lcom/geely/lib/oneosapi/launcher/LauncherManager;

    .line 20
    iput-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mPaymentManager:Lcom/geely/lib/oneosapi/payment/PaymentManager;

    .line 21
    iput-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mWechatManager:Lcom/geely/lib/oneosapi/wechat/WeChatManager;

    return-void
.end method

.method public unregisterServiceConnectionListener(Lcom/geely/lib/oneosapi/listener/ServiceConnectionListener;)V
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
    iget-object v0, p0, Lcom/geely/lib/oneosapi/OneOSApiManager;->mServiceConnectionManager:Lcom/geely/lib/oneosapi/ServiceConnectionManager;

    invoke-virtual {v0, p1}, Lcom/geely/lib/oneosapi/ServiceConnectionManager;->unregisterServiceConnectionListener(Lcom/geely/lib/oneosapi/listener/ServiceConnectionListener;)V

    return-void
.end method
