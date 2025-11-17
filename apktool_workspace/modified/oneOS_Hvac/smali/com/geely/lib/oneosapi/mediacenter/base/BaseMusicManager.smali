.class public abstract Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;
.super Ljava/lang/Object;
.source "BaseMusicManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;,
        Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MusicStateListenerImpl;,
        Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field private final mDeviceStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;

.field public final mDeviceStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/geely/lib/oneosapi/mediacenter/listener/DeviceStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field public final mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

.field private final mMediaStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;

.field public final mMediaStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/geely/lib/oneosapi/mediacenter/listener/MediaStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMusicStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MusicStateListenerImpl;

.field public final mMusicStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/geely/lib/oneosapi/mediacenter/listener/MusicStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPsdMediaStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;

.field private final mPsdMusicStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MusicStateListenerImpl;

.field public final mQueryUsbMediaListener:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/geely/lib/oneosapi/mediacenter/listener/QueryUsbMediaListener;",
            ">;"
        }
    .end annotation
.end field

.field public mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "service",
            "mediaCenterManager"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mDeviceStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMusicStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mQueryUsbMediaListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    new-instance v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;

    invoke-direct {v0, p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;-><init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;)V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mDeviceStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;

    .line 11
    new-instance v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MusicStateListenerImpl;

    invoke-direct {v0, p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MusicStateListenerImpl;-><init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;)V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMusicStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MusicStateListenerImpl;

    .line 12
    new-instance v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MusicStateListenerImpl;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MusicStateListenerImpl;-><init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;Z)V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mPsdMusicStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MusicStateListenerImpl;

    .line 13
    new-instance v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;

    invoke-direct {v0, p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;-><init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;)V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;

    .line 14
    new-instance v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;-><init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;Z)V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mPsdMediaStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mTag:Ljava/lang/String;

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mHandler:Landroid/os/Handler;

    .line 26
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {p0, p2}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->initService(Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;)V

    .line 28
    iput-object p3, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public addDeviceStateListener(Lcom/geely/lib/oneosapi/mediacenter/listener/DeviceStateListener;)V
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
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mDeviceStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mDeviceStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addFavor(Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaData"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->addFavor(ILcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mTag:Ljava/lang/String;

    const-string v0, "addFavor: mService is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public addMediaStateListener(Lcom/geely/lib/oneosapi/mediacenter/listener/MediaStateListener;)V
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
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addMusicStateListener(Lcom/geely/lib/oneosapi/mediacenter/listener/MusicStateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMusicStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMusicStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addUsbMediaQueryListener(Lcom/geely/lib/oneosapi/mediacenter/listener/QueryUsbMediaListener;)V
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
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mQueryUsbMediaListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mQueryUsbMediaListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public cancelFavor(Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaData"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->cancelFavor(ILcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mTag:Ljava/lang/String;

    const-string v0, "cancelFavor: mService is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public fastForward(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->fastForward(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mTag:Ljava/lang/String;

    const-string p2, "fastForward: mService is null"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public fastRewind(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->fastRewind(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mTag:Ljava/lang/String;

    const-string p2, "fastRewind: mService is null"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public abstract getAudioSource()I
.end method

.method public getCurrentAppSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getCurrentAppSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMediaBundle(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "appSource",
            "key",
            "args",
            "cb"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;->UNKNOWN:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getAudioSource()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getCurrentMediaBundle(IILjava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mTag:Ljava/lang/String;

    const-string p2, "getCurrentMediaBundle: mService is null"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :goto_0
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p1
.end method

.method public getCurrentMediaBundle(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "args",
            "cb"
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;->UNKNOWN:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getCurrentMediaBundle(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentMediaBundle(Ljava/lang/String;Landroid/os/ResultReceiver;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "cb"
        }
    .end annotation

    .line 14
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;->UNKNOWN:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getCurrentMediaBundle(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentMediaData()Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getCurrentMediaData(I)Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mTag:Ljava/lang/String;

    const-string v1, "getCurrentMediaData: mService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentPlayState()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getCurrentPlayState(I)I

    move-result v0

    invoke-static {v0}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;->getPlayStateEnum(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mTag:Ljava/lang/String;

    const-string v1, "getCurrentPlayState: mService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :goto_0
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;->MUSIC_STATE_STOP:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getCurrentPosition(I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mTag:Ljava/lang/String;

    const-string v1, "getCurrentPosition: mService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDevicesInfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/mediacenter/bean/DeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getDevicesInfo(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mTag:Ljava/lang/String;

    const-string v1, "getDevicesInfo: mService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFavorList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getFavorList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mTag:Ljava/lang/String;

    const-string v1, "getFavorList: mService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getPlayList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mTag:Ljava/lang/String;

    const-string v1, "getPlayList: mService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayListAsync(Lcom/geely/lib/oneosapi/mediacenter/callback/MusicListCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getAudioSource()I

    move-result v1

    invoke-virtual {p1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseCallback;->getCallbackImpl()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/geely/lib/oneosapi/mediacenter/callback/IMusicListCallback;

    invoke-interface {v0, v1, p1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getPlayListAsync(ILcom/geely/lib/oneosapi/mediacenter/callback/IMusicListCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mTag:Ljava/lang/String;

    const-string v0, "getPlayListAsync: mService is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getPlayMode()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getPlayMode(I)I

    move-result v0

    invoke-static {v0}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;->getPlayModeEnum(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mTag:Ljava/lang/String;

    const-string v1, "getPlayMode: mService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :goto_0
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;->PLAY_MODE_QUEUE:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;

    return-object v0
.end method

.method public initService(Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "service"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getAudioSource()I

    move-result v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mDeviceStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;

    invoke-interface {p1, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->addDeviceStateListener(ILcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener;)V

    .line 5
    iget-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getAudioSource()I

    move-result v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMusicStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MusicStateListenerImpl;

    invoke-interface {p1, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->addMusicStateListener(ILcom/geely/lib/oneosapi/mediacenter/listener/IMusicStateListener;)V

    .line 6
    iget-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getAudioSource()I

    move-result v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mPsdMusicStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MusicStateListenerImpl;

    invoke-interface {p1, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->addPsdMusicStateListener(ILcom/geely/lib/oneosapi/mediacenter/listener/IMusicStateListener;)V

    .line 7
    iget-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getAudioSource()I

    move-result v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;

    invoke-interface {p1, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->addMediaStateListener(ILcom/geely/lib/oneosapi/mediacenter/listener/IMediaStateListener;)V

    .line 8
    iget-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getAudioSource()I

    move-result v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mPsdMediaStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;

    invoke-interface {p1, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->addPsdMediaStateListener(ILcom/geely/lib/oneosapi/mediacenter/listener/IMediaStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

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

.method public next()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->next(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mTag:Ljava/lang/String;

    const-string v1, "next: mService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->pause(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mTag:Ljava/lang/String;

    const-string v1, "pause: mService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public play()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->play(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mTag:Ljava/lang/String;

    const-string v1, "play: mService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public playItem(Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaData"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->playItem(ILcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mTag:Ljava/lang/String;

    const-string v0, "playItem: mService is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public pre()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->prev(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mTag:Ljava/lang/String;

    const-string v1, "prev: mService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public prev()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->prev(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mTag:Ljava/lang/String;

    const-string v1, "prev: mService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public removeDeviceStateListener(Lcom/geely/lib/oneosapi/mediacenter/listener/DeviceStateListener;)V
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
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mDeviceStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeMediaStateListener(Lcom/geely/lib/oneosapi/mediacenter/listener/MediaStateListener;)V
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
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeMusicStateListener(Lcom/geely/lib/oneosapi/mediacenter/listener/MusicStateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMusicStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeUsbMediaQueryListener(Lcom/geely/lib/oneosapi/mediacenter/listener/QueryUsbMediaListener;)V
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
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mQueryUsbMediaListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public seekTo(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->seekTo(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mTag:Ljava/lang/String;

    const-string p2, "seekTo: mService is null"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendCommand(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "appSource",
            "command",
            "args",
            "cb"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getAudioSource()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->sendCommand(IILjava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mTag:Ljava/lang/String;

    const-string p2, "sendCommand: mService is null"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "command",
            "args",
            "cb"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;->UNKNOWN:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->sendCommand(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public setPlayMode(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getAudioSource()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->setPlayMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mTag:Ljava/lang/String;

    const-string v0, "setPlayMode: mService is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setService(Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "service"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->initService(Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;)V

    return-void
.end method

.method public startApp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->startApp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mTag:Ljava/lang/String;

    const-string v1, "startApp: mService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
