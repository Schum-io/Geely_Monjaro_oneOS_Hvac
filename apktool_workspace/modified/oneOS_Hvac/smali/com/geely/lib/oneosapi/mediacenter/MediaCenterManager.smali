.class public Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;
.super Ljava/lang/Object;
.source "MediaCenterManager.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/common/ServiceBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$RebootPlayChangeListenerImpl;,
        Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaCenterManager"


# instance fields
.field private final mBtMusicManager:Lcom/geely/lib/oneosapi/mediacenter/manager/BtMusicManager;

.field private final mCarManager:Lcom/geely/lib/oneosapi/mediacenter/manager/CarManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mMusicAdapterManager:Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;

.field private final mMusicManagerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;",
            "Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnlineMusicManager:Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;

.field private mPsdMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

.field private mPsdMode:Z

.field private final mPsdSourceStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;

.field private final mRadioManager:Lcom/geely/lib/oneosapi/mediacenter/manager/RadioManager;

.field private final mRebootPlayChangeListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$RebootPlayChangeListenerImpl;

.field private final mRebootPlayChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/geely/lib/oneosapi/mediacenter/listener/RebootPlayChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

.field private final mSourceStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;

.field private final mSourceStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/geely/lib/oneosapi/mediacenter/listener/SourceStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsbMusicManager:Lcom/geely/lib/oneosapi/mediacenter/manager/UsbMusicManager;

.field private final mVrAdapterManager:Lcom/geely/lib/oneosapi/mediacenter/vr/VrAdapterManager;

.field private final mYunTingManager:Lcom/geely/lib/oneosapi/mediacenter/manager/YunTingManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 4
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mSourceStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    new-instance v0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;

    invoke-direct {v0, p0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;-><init>(Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mSourceStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;

    .line 5
    new-instance v0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;-><init>(Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;Z)V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mPsdSourceStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mMusicManagerMap:Ljava/util/Map;

    .line 9
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mRebootPlayChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$RebootPlayChangeListenerImpl;

    invoke-direct {v1, p0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$RebootPlayChangeListenerImpl;-><init>(Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mRebootPlayChangeListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$RebootPlayChangeListenerImpl;

    .line 14
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mHandler:Landroid/os/Handler;

    .line 23
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mContext:Landroid/content/Context;

    .line 25
    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/manager/BtMusicManager;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/BtMusicManager;-><init>(Landroid/content/Context;Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mBtMusicManager:Lcom/geely/lib/oneosapi/mediacenter/manager/BtMusicManager;

    .line 26
    sget-object v3, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_BT:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/manager/UsbMusicManager;

    iget-object v3, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v2, p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/UsbMusicManager;-><init>(Landroid/content/Context;Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mUsbMusicManager:Lcom/geely/lib/oneosapi/mediacenter/manager/UsbMusicManager;

    .line 30
    sget-object v3, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_USB:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;

    iget-object v3, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v2, p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;-><init>(Landroid/content/Context;Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mOnlineMusicManager:Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;

    .line 34
    sget-object v3, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_ONLINE:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/manager/YunTingManager;

    iget-object v3, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v2, p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/YunTingManager;-><init>(Landroid/content/Context;Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mYunTingManager:Lcom/geely/lib/oneosapi/mediacenter/manager/YunTingManager;

    .line 38
    sget-object v3, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_YUNTING:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v0, Lcom/geely/lib/oneosapi/mediacenter/manager/RadioManager;

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/RadioManager;-><init>(Landroid/content/Context;Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mRadioManager:Lcom/geely/lib/oneosapi/mediacenter/manager/RadioManager;

    .line 42
    new-instance v0, Lcom/geely/lib/oneosapi/mediacenter/manager/CarManager;

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/CarManager;-><init>(Landroid/content/Context;Lcom/geely/lib/oneosapi/mediacenter/ICarSpeedManager;Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mCarManager:Lcom/geely/lib/oneosapi/mediacenter/manager/CarManager;

    .line 44
    invoke-direct {p0, p2}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->initMediaCenterManger(Landroid/os/IBinder;)V

    .line 46
    new-instance p2, Lcom/geely/lib/oneosapi/mediacenter/vr/VrAdapterManager;

    invoke-direct {p2, p1, p0}, Lcom/geely/lib/oneosapi/mediacenter/vr/VrAdapterManager;-><init>(Landroid/content/Context;Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)V

    iput-object p2, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mVrAdapterManager:Lcom/geely/lib/oneosapi/mediacenter/vr/VrAdapterManager;

    .line 47
    new-instance p2, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;

    invoke-direct {p2, p1, p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;-><init>(Landroid/content/Context;Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)V

    iput-object p2, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mMusicAdapterManager:Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mSourceStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mRebootPlayChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private initCarManager()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mCarManager:Lcom/geely/lib/oneosapi/mediacenter/manager/CarManager;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->getCarManager()Lcom/geely/lib/oneosapi/mediacenter/ICarSpeedManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseCarManager;->setService(Lcom/geely/lib/oneosapi/mediacenter/ICarSpeedManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private initMediaCenterManger(Landroid/os/IBinder;)V
    .locals 1
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
    invoke-static {p1}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    .line 2
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->initMusicManager()V

    .line 3
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->initRadioManager()V

    .line 4
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->initCarManager()V

    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mSourceStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;

    invoke-interface {p1, v0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->addSourceStateListener(Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener;)V

    .line 7
    iget-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mPsdSourceStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;

    invoke-interface {p1, v0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->addPsdSourceStateListener(Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener;)V

    .line 8
    iget-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mRebootPlayChangeListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$RebootPlayChangeListenerImpl;

    invoke-interface {p1, v0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->addRebootPlayChangeListener(Lcom/geely/lib/oneosapi/mediacenter/listener/IRebootPlayChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->notifyMediaCenterDied()V

    :goto_0
    return-void
.end method

.method private initMusicManager()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initMusicManager() called "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->getMusicManager()Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mOnlineMusicManager:Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;

    invoke-virtual {v1, v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->setService(Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;)V

    .line 6
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mUsbMusicManager:Lcom/geely/lib/oneosapi/mediacenter/manager/UsbMusicManager;

    invoke-virtual {v1, v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->setService(Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;)V

    .line 7
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mBtMusicManager:Lcom/geely/lib/oneosapi/mediacenter/manager/BtMusicManager;

    invoke-virtual {v1, v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->setService(Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;)V

    .line 8
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mYunTingManager:Lcom/geely/lib/oneosapi/mediacenter/manager/YunTingManager;

    invoke-virtual {v1, v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->setService(Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private initRadioManager()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mRadioManager:Lcom/geely/lib/oneosapi/mediacenter/manager/RadioManager;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->getRadioManager()Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->setService(Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private notifyMediaCenterDied()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    .line 2
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mBtMusicManager:Lcom/geely/lib/oneosapi/mediacenter/manager/BtMusicManager;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->setService(Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mUsbMusicManager:Lcom/geely/lib/oneosapi/mediacenter/manager/UsbMusicManager;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1, v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->setService(Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;)V

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mOnlineMusicManager:Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1, v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->setService(Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;)V

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mRadioManager:Lcom/geely/lib/oneosapi/mediacenter/manager/RadioManager;

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v1, v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->setService(Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public addRebootPlayChangeListener(Lcom/geely/lib/oneosapi/mediacenter/listener/RebootPlayChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mRebootPlayChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mRebootPlayChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addSourceStateListener(Lcom/geely/lib/oneosapi/mediacenter/listener/SourceStateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mSourceStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mSourceStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getAppPackageName(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "audioSource",
            "appSource"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->getAppPackageName(II)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBtMusicManager()Lcom/geely/lib/oneosapi/mediacenter/manager/BtMusicManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mBtMusicManager:Lcom/geely/lib/oneosapi/mediacenter/manager/BtMusicManager;

    return-object v0
.end method

.method public getCarManager()Lcom/geely/lib/oneosapi/mediacenter/manager/CarManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mCarManager:Lcom/geely/lib/oneosapi/mediacenter/manager/CarManager;

    return-object v0
.end method

.method public getCurrentAppSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->getCurrentPsdAppSource()I

    move-result v0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->getCurrentAppSource()I

    move-result v0

    .line 9
    :goto_0
    invoke-static {v0}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;->getAppSourceEnum(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 14
    :cond_1
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;->UNKNOWN:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    return-object v0
.end method

.method public getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->getCurrentPsdAudioSource()I

    move-result v0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->getCurrentAudioSource()I

    move-result v0

    .line 9
    :goto_0
    invoke-static {v0}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;->getAudioSourceEnum(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 14
    :cond_1
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_UNKNOWN:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    return-object v0
.end method

.method public getFocusedAppSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->getPsdFocusedAppSource()I

    move-result v0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->getFocusedAppSource()I

    move-result v0

    .line 9
    :goto_0
    invoke-static {v0}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;->getAppSourceEnum(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 14
    :cond_1
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;->UNKNOWN:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    return-object v0
.end method

.method public getFocusedAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->getPsdFocusedAudioSource()I

    move-result v0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->getFocusedAudioSource()I

    move-result v0

    .line 9
    :goto_0
    invoke-static {v0}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;->getAudioSourceEnum(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 14
    :cond_1
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_UNKNOWN:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    return-object v0
.end method

.method public getMusicAdapterManager()Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mMusicAdapterManager:Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;

    return-object v0
.end method

.method public getMusicManagerMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;",
            "Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mMusicManagerMap:Ljava/util/Map;

    return-object v0
.end method

.method public getOnlineMusicManager()Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mOnlineMusicManager:Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;

    return-object v0
.end method

.method public getPsdMediaCenter()Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mPsdMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mPsdMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mPsdMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->setPsdMode(Z)V

    .line 5
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mPsdMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    return-object v0
.end method

.method public getRadioManager()Lcom/geely/lib/oneosapi/mediacenter/manager/RadioManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mRadioManager:Lcom/geely/lib/oneosapi/mediacenter/manager/RadioManager;

    return-object v0
.end method

.method public getRebootPlay()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    const-string v0, "MediaCenterManager"

    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRebootPlay() called by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->getRebootPlay()I

    move-result v0

    invoke-static {v0}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;->getRebootPlay(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 9
    :cond_0
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;->OFF:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;

    return-object v0
.end method

.method public getUsbMusicManager()Lcom/geely/lib/oneosapi/mediacenter/manager/UsbMusicManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mUsbMusicManager:Lcom/geely/lib/oneosapi/mediacenter/manager/UsbMusicManager;

    return-object v0
.end method

.method public getVrAdapterManager()Lcom/geely/lib/oneosapi/mediacenter/vr/VrAdapterManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mVrAdapterManager:Lcom/geely/lib/oneosapi/mediacenter/vr/VrAdapterManager;

    return-object v0
.end method

.method public getYunTingManager()Lcom/geely/lib/oneosapi/mediacenter/manager/YunTingManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mYunTingManager:Lcom/geely/lib/oneosapi/mediacenter/manager/YunTingManager;

    return-object v0
.end method

.method public isAlive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

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

.method public isPsdBtAudioSource(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioSource"
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;->UNKNOWN:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    invoke-virtual {p0, p1, v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdBtAudioSource(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)Z

    move-result p1

    return p1
.end method

.method public isPsdBtAudioSource(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "audioSource",
            "appSource"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->isPsdBtAudioSource(II)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isPsdBtDeviceConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->isPsdBtDeviceConnected()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPsdMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mPsdMode:Z

    return v0
.end method

.method public removeRebootPlayChangeListener(Lcom/geely/lib/oneosapi/mediacenter/listener/RebootPlayChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mRebootPlayChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeSourceStateListener(Lcom/geely/lib/oneosapi/mediacenter/listener/SourceStateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mSourceStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public requestAudioSource(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;->UNKNOWN:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    invoke-virtual {p0, p1, v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->requestAudioSource(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)V

    return-void
.end method

.method public requestAudioSource(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "app"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestAudioSource() called with: source = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], app = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterManager"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->requestAudioSource(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "requestMediaSource: mService is null"

    .line 12
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public runHeartbeatPacket()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$1;

    invoke-direct {v1, p0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$1;-><init>(Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)V

    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->setHeartbeatPacket(Lcom/geely/lib/oneosapi/mediacenter/IHeartbeatPacket;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setPsdBtAudioSource(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "audioSource",
            "appSource",
            "enable"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-interface {v0, p1, p2, p3}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->setPsdBtAudioSource(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setPsdBtAudioSource(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "audioSource",
            "enable"
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;->UNKNOWN:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    invoke-virtual {p0, p1, v0, p2}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->setPsdBtAudioSource(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;Z)V

    return-void
.end method

.method public setPsdBtChannel(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "app",
            "enable"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->setPsdBtChannel(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setPsdMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mPsdMode:Z

    return-void
.end method

.method public setRebootPlay(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rebootPlay"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    const-string v0, "MediaCenterManager"

    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRebootPlay() called with : value = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;

    invoke-virtual {p1}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;->getValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/mediacenter/IMediaCenter;->setRebootPlay(I)V
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

.method public setService(Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binder"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->mPsdMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->setService(Landroid/os/IBinder;)V

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->initMediaCenterManger(Landroid/os/IBinder;)V

    return-void
.end method
