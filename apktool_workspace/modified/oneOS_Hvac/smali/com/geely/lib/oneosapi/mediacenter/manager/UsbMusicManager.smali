.class public Lcom/geely/lib/oneosapi/mediacenter/manager/UsbMusicManager;
.super Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;
.source "UsbMusicManager.java"


# instance fields
.field private final mAudioSource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)V
    .locals 0
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
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;-><init>(Landroid/content/Context;Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)V

    .line 2
    sget-object p1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_USB:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/UsbMusicManager;->mAudioSource:I

    return-void
.end method


# virtual methods
.method public addQueryUsbMediaListener(Lcom/geely/lib/oneosapi/mediacenter/listener/QueryUsbMediaListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->addUsbMediaQueryListener(Lcom/geely/lib/oneosapi/mediacenter/listener/QueryUsbMediaListener;)V

    return-void
.end method

.method public addUsbDeviceStateListener(Lcom/geely/lib/oneosapi/mediacenter/listener/UsbDeviceStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->addDeviceStateListener(Lcom/geely/lib/oneosapi/mediacenter/listener/DeviceStateListener;)V

    return-void
.end method

.method public getAudioSource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/UsbMusicManager;->mAudioSource:I

    return v0
.end method

.method public getCurrentPathFiles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/mediacenter/bean/MusicFileData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/UsbMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getCurrentPathFiles(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public playMusicFile(Lcom/geely/lib/oneosapi/mediacenter/bean/MusicFileData;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "musicFileData"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;-><init>()V

    .line 2
    iget-object v1, p1, Lcom/geely/lib/oneosapi/mediacenter/bean/MusicFileData;->absolutePath:Ljava/lang/String;

    iput-object v1, v0, Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;->uri:Ljava/lang/String;

    .line 3
    iget-object v1, p1, Lcom/geely/lib/oneosapi/mediacenter/bean/MusicFileData;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;->name:Ljava/lang/String;

    .line 4
    iget-wide v1, p1, Lcom/geely/lib/oneosapi/mediacenter/bean/MusicFileData;->duration:J

    iput-wide v1, v0, Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;->duration:J

    .line 5
    invoke-virtual {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->playItem(Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)V

    :cond_0
    return-void
.end method

.method public requestAudioSource()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_USB:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    invoke-virtual {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->requestAudioSource(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;)V

    return-void
.end method

.method public startScanPath(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/UsbMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->startScanPath(ILjava/lang/String;)V
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
