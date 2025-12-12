.class public Lcom/geely/lib/oneosapi/mediacenter/manager/BtMusicManager;
.super Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;
.source "BtMusicManager.java"


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
    sget-object p1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_BT:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/BtMusicManager;->mAudioSource:I

    return-void
.end method


# virtual methods
.method public addBtDeviceStateListener(Lcom/geely/lib/oneosapi/mediacenter/listener/BtDeviceStateListener;)V
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

.method public connectBtDevice(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/BtMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->connectBtDevice(ILjava/lang/String;)V
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

.method public getAudioSource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/BtMusicManager;->mAudioSource:I

    return v0
.end method

.method public getBtState()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/BtMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getBtState(I)Z

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

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/BtMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getConnectedDevice(I)Landroid/bluetooth/BluetoothDevice;

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

.method public requestAudioSource()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_BT:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    invoke-virtual {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->requestAudioSource(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;)V

    return-void
.end method

.method public setActiveBtDevice(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/BtMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->setActiveBtDevice(ILjava/lang/String;)V
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
