.class public Lcom/geely/lib/cloud/CloudApiManager;
.super Ljava/lang/Object;
.source "CloudApiManager.java"

# interfaces
.implements Lcom/geely/lib/cloud/listener/ServiceConnectionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudApiManager"

.field private static volatile sInstance:Lcom/geely/lib/cloud/CloudApiManager;


# instance fields
.field private mAppStoreManager:Lcom/geely/lib/cloud/appstore/AppStoreManager;

.field private mAppUtilManager:Lcom/geely/lib/cloud/apputil/AppUtilManager;

.field private mAssistantManager:Lcom/geely/lib/cloud/assistant/AssistantManager;

.field private final mContext:Landroid/content/Context;

.field private mDeviceManager:Lcom/geely/lib/cloud/device/DeviceManager;

.field private mDownloadManager:Lcom/geely/lib/cloud/download/DownloadManager;

.field private mEngineManager:Lcom/geely/lib/cloud/engine/EngineManager;

.field private mFeedbackManager:Lcom/geely/lib/cloud/feedback/FeedbackManager;

.field private mFilmHallManager:Lcom/geely/lib/cloud/filmhall/FilmHallManager;

.field private mFurnitureManager:Lcom/geely/lib/cloud/furniture/FurnitureManager;

.field private mMaintainManager:Lcom/geely/lib/cloud/maintain/MaintainManager;

.field private mMemberCenterManager:Lcom/geely/lib/cloud/membercenter/MemberCenterManager;

.field private mPaymentManager:Lcom/geely/lib/cloud/payment/PaymentManager;

.field private mResourceManager:Lcom/geely/lib/cloud/resource/ResourceManager;

.field private mScheduleManager:Lcom/geely/lib/cloud/schedule/ScheduleManager;

.field private final mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

.field private mThemeStoreManager:Lcom/geely/lib/cloud/themestore/ThemeStoreManager;

.field private mTrilateralManager:Lcom/geely/lib/cloud/trilateral/TrilateralManager;

.field private mUserCenterManager:Lcom/geely/lib/cloud/usercenter/UserCenterManager;

.field private mWallpaperManager:Lcom/geely/lib/cloud/wallpaper/WallpaperManager;

.field private mWeatherManager:Lcom/geely/lib/cloud/weather/WeatherManager;


# direct methods
.method static constructor <clinit>()V
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

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mContext:Landroid/content/Context;

    .line 128
    new-instance v0, Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-direct {v0, p1}, Lcom/geely/lib/cloud/ServiceConnectionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/geely/lib/cloud/CloudApiManager;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 75
    sget-object v0, Lcom/geely/lib/cloud/CloudApiManager;->sInstance:Lcom/geely/lib/cloud/CloudApiManager;

    if-eqz v0, :cond_0

    .line 76
    sget-object p0, Lcom/geely/lib/cloud/CloudApiManager;->sInstance:Lcom/geely/lib/cloud/CloudApiManager;

    return-object p0

    .line 78
    :cond_0
    const-class v0, Lcom/geely/lib/cloud/CloudApiManager;

    monitor-enter v0

    .line 79
    :try_start_0
    sget-object v1, Lcom/geely/lib/cloud/CloudApiManager;->sInstance:Lcom/geely/lib/cloud/CloudApiManager;

    if-nez v1, :cond_1

    .line 80
    new-instance v1, Lcom/geely/lib/cloud/CloudApiManager;

    invoke-direct {v1, p0}, Lcom/geely/lib/cloud/CloudApiManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/geely/lib/cloud/CloudApiManager;->sInstance:Lcom/geely/lib/cloud/CloudApiManager;

    .line 82
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    sget-object p0, Lcom/geely/lib/cloud/CloudApiManager;->sInstance:Lcom/geely/lib/cloud/CloudApiManager;

    return-object p0

    :catchall_0
    move-exception p0

    .line 82
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private updateServiceBinder(Lcom/geely/lib/cloud/common/ServiceBaseManager;I)V
    .locals 3
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

    const-string v0, "CloudApiManager"

    const-string/jumbo v1, "updateServiceBinder"

    .line 536
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 539
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v1}, Lcom/geely/lib/cloud/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/cloud/IServiceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "setService"

    .line 541
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-interface {v1, p2}, Lcom/geely/lib/cloud/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/geely/lib/cloud/common/ServiceBaseManager;->setService(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 545
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getAppStoreManager()Lcom/geely/lib/cloud/appstore/AppStoreManager;
    .locals 4

    const-string v0, "CloudApiManager"

    const-string v1, "getAppStoreManager"

    .line 184
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v2, p0, Lcom/geely/lib/cloud/CloudApiManager;->mAppStoreManager:Lcom/geely/lib/cloud/appstore/AppStoreManager;

    if-nez v2, :cond_0

    .line 187
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v2, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v2}, Lcom/geely/lib/cloud/ServiceConnectionManager;->isServiceBound()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    :try_start_0
    iget-object v2, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v2}, Lcom/geely/lib/cloud/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/cloud/IServiceManager;

    move-result-object v2

    const/4 v3, 0x3

    .line 191
    invoke-interface {v2, v3}, Lcom/geely/lib/cloud/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v2

    .line 192
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    new-instance v0, Lcom/geely/lib/cloud/appstore/AppStoreManager;

    iget-object v1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/geely/lib/cloud/appstore/AppStoreManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mAppStoreManager:Lcom/geely/lib/cloud/appstore/AppStoreManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 194
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    .line 200
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mAppStoreManager:Lcom/geely/lib/cloud/appstore/AppStoreManager;

    return-object v0
.end method

.method public getAppUtilManager()Lcom/geely/lib/cloud/apputil/AppUtilManager;
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mAppUtilManager:Lcom/geely/lib/cloud/apputil/AppUtilManager;

    if-nez v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/cloud/IServiceManager;

    move-result-object v0

    const/16 v1, 0xc

    .line 429
    invoke-interface {v0, v1}, Lcom/geely/lib/cloud/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    new-instance v1, Lcom/geely/lib/cloud/apputil/AppUtilManager;

    iget-object v2, p0, Lcom/geely/lib/cloud/CloudApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/cloud/apputil/AppUtilManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mAppUtilManager:Lcom/geely/lib/cloud/apputil/AppUtilManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 431
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "CloudApiManager"

    const-string v1, "service is unbound"

    .line 436
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mAppUtilManager:Lcom/geely/lib/cloud/apputil/AppUtilManager;

    return-object v0
.end method

.method public getAssistantManager()Lcom/geely/lib/cloud/assistant/AssistantManager;
    .locals 3

    .line 500
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mAssistantManager:Lcom/geely/lib/cloud/assistant/AssistantManager;

    if-nez v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/cloud/IServiceManager;

    move-result-object v0

    const/16 v1, 0x11

    .line 505
    invoke-interface {v0, v1}, Lcom/geely/lib/cloud/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    new-instance v1, Lcom/geely/lib/cloud/assistant/AssistantManager;

    iget-object v2, p0, Lcom/geely/lib/cloud/CloudApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/cloud/assistant/AssistantManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mAssistantManager:Lcom/geely/lib/cloud/assistant/AssistantManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 507
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "CloudApiManager"

    const-string v1, "service is unbound"

    .line 512
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mAssistantManager:Lcom/geely/lib/cloud/assistant/AssistantManager;

    return-object v0
.end method

.method public getDeviceManager()Lcom/geely/lib/cloud/device/DeviceManager;
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mDeviceManager:Lcom/geely/lib/cloud/device/DeviceManager;

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/cloud/IServiceManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 143
    invoke-interface {v0, v1}, Lcom/geely/lib/cloud/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    new-instance v1, Lcom/geely/lib/cloud/device/DeviceManager;

    iget-object v2, p0, Lcom/geely/lib/cloud/CloudApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/cloud/device/DeviceManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mDeviceManager:Lcom/geely/lib/cloud/device/DeviceManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 145
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    .line 151
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mDeviceManager:Lcom/geely/lib/cloud/device/DeviceManager;

    return-object v0
.end method

.method public getDownloadManager()Lcom/geely/lib/cloud/download/DownloadManager;
    .locals 3

    .line 443
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mDownloadManager:Lcom/geely/lib/cloud/download/DownloadManager;

    if-nez v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/cloud/IServiceManager;

    move-result-object v0

    const/16 v1, 0xd

    .line 448
    invoke-interface {v0, v1}, Lcom/geely/lib/cloud/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    new-instance v1, Lcom/geely/lib/cloud/download/DownloadManager;

    iget-object v2, p0, Lcom/geely/lib/cloud/CloudApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/cloud/download/DownloadManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mDownloadManager:Lcom/geely/lib/cloud/download/DownloadManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 450
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "CloudApiManager"

    const-string v1, "service is unbound"

    .line 455
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mDownloadManager:Lcom/geely/lib/cloud/download/DownloadManager;

    return-object v0
.end method

.method public getEngineManager()Lcom/geely/lib/cloud/engine/EngineManager;
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mEngineManager:Lcom/geely/lib/cloud/engine/EngineManager;

    if-nez v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/cloud/IServiceManager;

    move-result-object v0

    const/16 v1, 0xa

    .line 391
    invoke-interface {v0, v1}, Lcom/geely/lib/cloud/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    new-instance v1, Lcom/geely/lib/cloud/engine/EngineManager;

    iget-object v2, p0, Lcom/geely/lib/cloud/CloudApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/cloud/engine/EngineManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mEngineManager:Lcom/geely/lib/cloud/engine/EngineManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 393
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "CloudApiManager"

    const-string v1, "service is unbound"

    .line 398
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mEngineManager:Lcom/geely/lib/cloud/engine/EngineManager;

    return-object v0
.end method

.method public getFeedbackManager()Lcom/geely/lib/cloud/feedback/FeedbackManager;
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mFeedbackManager:Lcom/geely/lib/cloud/feedback/FeedbackManager;

    if-nez v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/cloud/IServiceManager;

    move-result-object v0

    const/16 v1, 0x9

    .line 372
    invoke-interface {v0, v1}, Lcom/geely/lib/cloud/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    new-instance v1, Lcom/geely/lib/cloud/feedback/FeedbackManager;

    iget-object v2, p0, Lcom/geely/lib/cloud/CloudApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/cloud/feedback/FeedbackManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mFeedbackManager:Lcom/geely/lib/cloud/feedback/FeedbackManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 374
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "CloudApiManager"

    const-string v1, "service is unbound"

    .line 379
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mFeedbackManager:Lcom/geely/lib/cloud/feedback/FeedbackManager;

    return-object v0
.end method

.method public getFilmHallManager()Lcom/geely/lib/cloud/filmhall/FilmHallManager;
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mFilmHallManager:Lcom/geely/lib/cloud/filmhall/FilmHallManager;

    if-nez v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/cloud/IServiceManager;

    move-result-object v0

    const/16 v1, 0x10

    .line 334
    invoke-interface {v0, v1}, Lcom/geely/lib/cloud/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    new-instance v1, Lcom/geely/lib/cloud/filmhall/FilmHallManager;

    iget-object v2, p0, Lcom/geely/lib/cloud/CloudApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/cloud/filmhall/FilmHallManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mFilmHallManager:Lcom/geely/lib/cloud/filmhall/FilmHallManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 336
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "CloudApiManager"

    const-string v1, "service is unbound"

    .line 341
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mFilmHallManager:Lcom/geely/lib/cloud/filmhall/FilmHallManager;

    return-object v0
.end method

.method public getFurnitureManager()Lcom/geely/lib/cloud/furniture/FurnitureManager;
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mFurnitureManager:Lcom/geely/lib/cloud/furniture/FurnitureManager;

    if-nez v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/cloud/IServiceManager;

    move-result-object v0

    const/16 v1, 0xb

    .line 410
    invoke-interface {v0, v1}, Lcom/geely/lib/cloud/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    new-instance v1, Lcom/geely/lib/cloud/furniture/FurnitureManager;

    iget-object v2, p0, Lcom/geely/lib/cloud/CloudApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/cloud/furniture/FurnitureManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mFurnitureManager:Lcom/geely/lib/cloud/furniture/FurnitureManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 412
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "CloudApiManager"

    const-string v1, "service is unbound"

    .line 417
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mFurnitureManager:Lcom/geely/lib/cloud/furniture/FurnitureManager;

    return-object v0
.end method

.method public getMaintainManager()Lcom/geely/lib/cloud/maintain/MaintainManager;
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mMaintainManager:Lcom/geely/lib/cloud/maintain/MaintainManager;

    if-nez v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/cloud/IServiceManager;

    move-result-object v0

    const/4 v1, 0x5

    .line 265
    invoke-interface {v0, v1}, Lcom/geely/lib/cloud/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    new-instance v1, Lcom/geely/lib/cloud/maintain/MaintainManager;

    iget-object v2, p0, Lcom/geely/lib/cloud/CloudApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/cloud/maintain/MaintainManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mMaintainManager:Lcom/geely/lib/cloud/maintain/MaintainManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 267
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "CloudApiManager"

    const-string v1, "service is unbound"

    .line 272
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mMaintainManager:Lcom/geely/lib/cloud/maintain/MaintainManager;

    return-object v0
.end method

.method public getMemberCenterManager()Lcom/geely/lib/cloud/membercenter/MemberCenterManager;
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mMemberCenterManager:Lcom/geely/lib/cloud/membercenter/MemberCenterManager;

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/cloud/IServiceManager;

    move-result-object v0

    const/4 v1, 0x2

    .line 215
    invoke-interface {v0, v1}, Lcom/geely/lib/cloud/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    new-instance v1, Lcom/geely/lib/cloud/membercenter/MemberCenterManager;

    iget-object v2, p0, Lcom/geely/lib/cloud/CloudApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/cloud/membercenter/MemberCenterManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mMemberCenterManager:Lcom/geely/lib/cloud/membercenter/MemberCenterManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 217
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "CloudApiManager"

    const-string v1, "service is unbound"

    .line 222
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mMemberCenterManager:Lcom/geely/lib/cloud/membercenter/MemberCenterManager;

    return-object v0
.end method

.method public getPaymentManager()Lcom/geely/lib/cloud/payment/PaymentManager;
    .locals 3

    .line 481
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mPaymentManager:Lcom/geely/lib/cloud/payment/PaymentManager;

    if-nez v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/cloud/IServiceManager;

    move-result-object v0

    const/16 v1, 0xf

    .line 486
    invoke-interface {v0, v1}, Lcom/geely/lib/cloud/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    new-instance v1, Lcom/geely/lib/cloud/payment/PaymentManager;

    iget-object v2, p0, Lcom/geely/lib/cloud/CloudApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/cloud/payment/PaymentManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mPaymentManager:Lcom/geely/lib/cloud/payment/PaymentManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 488
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "CloudApiManager"

    const-string v1, "service is unbound"

    .line 493
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mPaymentManager:Lcom/geely/lib/cloud/payment/PaymentManager;

    return-object v0
.end method

.method public getResourceManager()Lcom/geely/lib/cloud/resource/ResourceManager;
    .locals 3

    .line 462
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mResourceManager:Lcom/geely/lib/cloud/resource/ResourceManager;

    if-nez v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/cloud/IServiceManager;

    move-result-object v0

    const/16 v1, 0xe

    .line 467
    invoke-interface {v0, v1}, Lcom/geely/lib/cloud/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    new-instance v1, Lcom/geely/lib/cloud/resource/ResourceManager;

    iget-object v2, p0, Lcom/geely/lib/cloud/CloudApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/cloud/resource/ResourceManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mResourceManager:Lcom/geely/lib/cloud/resource/ResourceManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 469
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "CloudApiManager"

    const-string v1, "service is unbound"

    .line 474
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mResourceManager:Lcom/geely/lib/cloud/resource/ResourceManager;

    return-object v0
.end method

.method public getScheduleManager()Lcom/geely/lib/cloud/schedule/ScheduleManager;
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mScheduleManager:Lcom/geely/lib/cloud/schedule/ScheduleManager;

    if-nez v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/cloud/IServiceManager;

    move-result-object v0

    const/4 v1, 0x4

    .line 240
    invoke-interface {v0, v1}, Lcom/geely/lib/cloud/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    new-instance v1, Lcom/geely/lib/cloud/schedule/ScheduleManager;

    iget-object v2, p0, Lcom/geely/lib/cloud/CloudApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/cloud/schedule/ScheduleManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mScheduleManager:Lcom/geely/lib/cloud/schedule/ScheduleManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 242
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "CloudApiManager"

    const-string v1, "service is unbound"

    .line 247
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mScheduleManager:Lcom/geely/lib/cloud/schedule/ScheduleManager;

    return-object v0
.end method

.method public getThemeStoreManager()Lcom/geely/lib/cloud/themestore/ThemeStoreManager;
    .locals 3

    .line 304
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mThemeStoreManager:Lcom/geely/lib/cloud/themestore/ThemeStoreManager;

    if-nez v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/cloud/IServiceManager;

    move-result-object v0

    const/4 v1, 0x7

    .line 309
    invoke-interface {v0, v1}, Lcom/geely/lib/cloud/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    new-instance v1, Lcom/geely/lib/cloud/themestore/ThemeStoreManager;

    iget-object v2, p0, Lcom/geely/lib/cloud/CloudApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/cloud/themestore/ThemeStoreManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mThemeStoreManager:Lcom/geely/lib/cloud/themestore/ThemeStoreManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 311
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "CloudApiManager"

    const-string v1, "service is unbound"

    .line 316
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mThemeStoreManager:Lcom/geely/lib/cloud/themestore/ThemeStoreManager;

    return-object v0
.end method

.method public getTrilateralManager()Lcom/geely/lib/cloud/trilateral/TrilateralManager;
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mTrilateralManager:Lcom/geely/lib/cloud/trilateral/TrilateralManager;

    if-nez v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/cloud/IServiceManager;

    move-result-object v0

    const/16 v1, 0x8

    .line 353
    invoke-interface {v0, v1}, Lcom/geely/lib/cloud/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    new-instance v1, Lcom/geely/lib/cloud/trilateral/TrilateralManager;

    iget-object v2, p0, Lcom/geely/lib/cloud/CloudApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/cloud/trilateral/TrilateralManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mTrilateralManager:Lcom/geely/lib/cloud/trilateral/TrilateralManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 355
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "CloudApiManager"

    const-string v1, "service is unbound"

    .line 360
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mTrilateralManager:Lcom/geely/lib/cloud/trilateral/TrilateralManager;

    return-object v0
.end method

.method public getUserCenterManager()Lcom/geely/lib/cloud/usercenter/UserCenterManager;
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mUserCenterManager:Lcom/geely/lib/cloud/usercenter/UserCenterManager;

    if-nez v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/cloud/IServiceManager;

    move-result-object v0

    const/4 v1, 0x6

    .line 290
    invoke-interface {v0, v1}, Lcom/geely/lib/cloud/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    new-instance v1, Lcom/geely/lib/cloud/usercenter/UserCenterManager;

    iget-object v2, p0, Lcom/geely/lib/cloud/CloudApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/cloud/usercenter/UserCenterManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mUserCenterManager:Lcom/geely/lib/cloud/usercenter/UserCenterManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 292
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "CloudApiManager"

    const-string v1, "service is unbound"

    .line 297
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mUserCenterManager:Lcom/geely/lib/cloud/usercenter/UserCenterManager;

    return-object v0
.end method

.method public getWallpaperManager()Lcom/geely/lib/cloud/wallpaper/WallpaperManager;
    .locals 3

    .line 518
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mWallpaperManager:Lcom/geely/lib/cloud/wallpaper/WallpaperManager;

    if-nez v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/cloud/IServiceManager;

    move-result-object v0

    const/16 v1, 0x12

    .line 523
    invoke-interface {v0, v1}, Lcom/geely/lib/cloud/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    new-instance v1, Lcom/geely/lib/cloud/wallpaper/WallpaperManager;

    iget-object v2, p0, Lcom/geely/lib/cloud/CloudApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/cloud/wallpaper/WallpaperManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mWallpaperManager:Lcom/geely/lib/cloud/wallpaper/WallpaperManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 525
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "CloudApiManager"

    const-string v1, "service is unbound"

    .line 530
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mWallpaperManager:Lcom/geely/lib/cloud/wallpaper/WallpaperManager;

    return-object v0
.end method

.method public getWeatherManager()Lcom/geely/lib/cloud/weather/WeatherManager;
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mWeatherManager:Lcom/geely/lib/cloud/weather/WeatherManager;

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->getServiceManager()Lcom/geely/lib/cloud/IServiceManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 166
    invoke-interface {v0, v1}, Lcom/geely/lib/cloud/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    new-instance v1, Lcom/geely/lib/cloud/weather/WeatherManager;

    iget-object v2, p0, Lcom/geely/lib/cloud/CloudApiManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/geely/lib/cloud/weather/WeatherManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mWeatherManager:Lcom/geely/lib/cloud/weather/WeatherManager;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    .line 174
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mWeatherManager:Lcom/geely/lib/cloud/weather/WeatherManager;

    return-object v0
.end method

.method public init()V
    .locals 2

    const-string v0, "CloudApiManager"

    const-string v1, "cloudApiManager init"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0, p0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->registerServiceConnectionListener(Lcom/geely/lib/cloud/listener/ServiceConnectionListener;)V

    .line 92
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->connect()V

    return-void
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

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBinderStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudApiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 554
    iget-object p1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mDeviceManager:Lcom/geely/lib/cloud/device/DeviceManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/cloud/CloudApiManager;->updateServiceBinder(Lcom/geely/lib/cloud/common/ServiceBaseManager;I)V

    .line 555
    iget-object p1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mWeatherManager:Lcom/geely/lib/cloud/weather/WeatherManager;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/cloud/CloudApiManager;->updateServiceBinder(Lcom/geely/lib/cloud/common/ServiceBaseManager;I)V

    .line 556
    iget-object p1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mMemberCenterManager:Lcom/geely/lib/cloud/membercenter/MemberCenterManager;

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/cloud/CloudApiManager;->updateServiceBinder(Lcom/geely/lib/cloud/common/ServiceBaseManager;I)V

    .line 557
    iget-object p1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mAppStoreManager:Lcom/geely/lib/cloud/appstore/AppStoreManager;

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/cloud/CloudApiManager;->updateServiceBinder(Lcom/geely/lib/cloud/common/ServiceBaseManager;I)V

    .line 558
    iget-object p1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mScheduleManager:Lcom/geely/lib/cloud/schedule/ScheduleManager;

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/cloud/CloudApiManager;->updateServiceBinder(Lcom/geely/lib/cloud/common/ServiceBaseManager;I)V

    .line 559
    iget-object p1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mMaintainManager:Lcom/geely/lib/cloud/maintain/MaintainManager;

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/cloud/CloudApiManager;->updateServiceBinder(Lcom/geely/lib/cloud/common/ServiceBaseManager;I)V

    .line 560
    iget-object p1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mUserCenterManager:Lcom/geely/lib/cloud/usercenter/UserCenterManager;

    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/cloud/CloudApiManager;->updateServiceBinder(Lcom/geely/lib/cloud/common/ServiceBaseManager;I)V

    .line 561
    iget-object p1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mThemeStoreManager:Lcom/geely/lib/cloud/themestore/ThemeStoreManager;

    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/cloud/CloudApiManager;->updateServiceBinder(Lcom/geely/lib/cloud/common/ServiceBaseManager;I)V

    .line 562
    iget-object p1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mTrilateralManager:Lcom/geely/lib/cloud/trilateral/TrilateralManager;

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/cloud/CloudApiManager;->updateServiceBinder(Lcom/geely/lib/cloud/common/ServiceBaseManager;I)V

    .line 563
    iget-object p1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mFeedbackManager:Lcom/geely/lib/cloud/feedback/FeedbackManager;

    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/cloud/CloudApiManager;->updateServiceBinder(Lcom/geely/lib/cloud/common/ServiceBaseManager;I)V

    .line 564
    iget-object p1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mEngineManager:Lcom/geely/lib/cloud/engine/EngineManager;

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/cloud/CloudApiManager;->updateServiceBinder(Lcom/geely/lib/cloud/common/ServiceBaseManager;I)V

    .line 565
    iget-object p1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mFurnitureManager:Lcom/geely/lib/cloud/furniture/FurnitureManager;

    const/16 v0, 0xb

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/cloud/CloudApiManager;->updateServiceBinder(Lcom/geely/lib/cloud/common/ServiceBaseManager;I)V

    .line 566
    iget-object p1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mAppUtilManager:Lcom/geely/lib/cloud/apputil/AppUtilManager;

    const/16 v0, 0xc

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/cloud/CloudApiManager;->updateServiceBinder(Lcom/geely/lib/cloud/common/ServiceBaseManager;I)V

    .line 567
    iget-object p1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mDownloadManager:Lcom/geely/lib/cloud/download/DownloadManager;

    const/16 v0, 0xd

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/cloud/CloudApiManager;->updateServiceBinder(Lcom/geely/lib/cloud/common/ServiceBaseManager;I)V

    .line 568
    iget-object p1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mResourceManager:Lcom/geely/lib/cloud/resource/ResourceManager;

    const/16 v0, 0xe

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/cloud/CloudApiManager;->updateServiceBinder(Lcom/geely/lib/cloud/common/ServiceBaseManager;I)V

    .line 569
    iget-object p1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mPaymentManager:Lcom/geely/lib/cloud/payment/PaymentManager;

    const/16 v0, 0xf

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/cloud/CloudApiManager;->updateServiceBinder(Lcom/geely/lib/cloud/common/ServiceBaseManager;I)V

    .line 570
    iget-object p1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mFilmHallManager:Lcom/geely/lib/cloud/filmhall/FilmHallManager;

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/cloud/CloudApiManager;->updateServiceBinder(Lcom/geely/lib/cloud/common/ServiceBaseManager;I)V

    .line 571
    iget-object p1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mAssistantManager:Lcom/geely/lib/cloud/assistant/AssistantManager;

    const/16 v0, 0x11

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/cloud/CloudApiManager;->updateServiceBinder(Lcom/geely/lib/cloud/common/ServiceBaseManager;I)V

    .line 572
    iget-object p1, p0, Lcom/geely/lib/cloud/CloudApiManager;->mWallpaperManager:Lcom/geely/lib/cloud/wallpaper/WallpaperManager;

    const/16 v0, 0x12

    invoke-direct {p0, p1, v0}, Lcom/geely/lib/cloud/CloudApiManager;->updateServiceBinder(Lcom/geely/lib/cloud/common/ServiceBaseManager;I)V

    :cond_0
    return-void
.end method

.method public registerServiceConnectionListener(Lcom/geely/lib/cloud/listener/ServiceConnectionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0, p1}, Lcom/geely/lib/cloud/ServiceConnectionManager;->registerServiceConnectionListener(Lcom/geely/lib/cloud/listener/ServiceConnectionListener;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/geely/lib/cloud/ServiceConnectionManager;->release()V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mDeviceManager:Lcom/geely/lib/cloud/device/DeviceManager;

    .line 102
    iput-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mWeatherManager:Lcom/geely/lib/cloud/weather/WeatherManager;

    .line 103
    iput-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mMemberCenterManager:Lcom/geely/lib/cloud/membercenter/MemberCenterManager;

    return-void
.end method

.method public unregisterServiceConnectionListener(Lcom/geely/lib/cloud/listener/ServiceConnectionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/geely/lib/cloud/CloudApiManager;->mServiceConnectionManager:Lcom/geely/lib/cloud/ServiceConnectionManager;

    invoke-virtual {v0, p1}, Lcom/geely/lib/cloud/ServiceConnectionManager;->unregisterServiceConnectionListener(Lcom/geely/lib/cloud/listener/ServiceConnectionListener;)V

    return-void
.end method
