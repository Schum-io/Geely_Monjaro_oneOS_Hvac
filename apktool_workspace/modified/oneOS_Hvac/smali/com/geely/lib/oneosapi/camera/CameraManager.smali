.class public Lcom/geely/lib/oneosapi/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/common/ServiceBaseManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraManager"


# instance fields
.field private mService:Lcom/geely/lib/oneosapi/camera/ICameraInterface;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lcom/geely/lib/oneosapi/camera/CameraManager;->initVrManger(Landroid/os/IBinder;)V

    return-void
.end method

.method private initVrManger(Landroid/os/IBinder;)V
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
    invoke-static {p1}, Lcom/geely/lib/oneosapi/camera/ICameraInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/camera/ICameraInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/camera/CameraManager;->mService:Lcom/geely/lib/oneosapi/camera/ICameraInterface;

    :cond_0
    return-void
.end method

.method private serviceIsNull()V
    .locals 2

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v1, "VrServiceIsNull"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public closeCamera()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/camera/CameraManager;->mService:Lcom/geely/lib/oneosapi/camera/ICameraInterface;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/camera/ICameraInterface;->closeCamera()V
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
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/camera/CameraManager;->serviceIsNull()V

    :goto_0
    return-void
.end method

.method public getCameraState()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/camera/CameraManager;->mService:Lcom/geely/lib/oneosapi/camera/ICameraInterface;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/camera/ICameraInterface;->getCameraState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/camera/CameraManager;->serviceIsNull()V

    :goto_0
    const/16 v0, -0x64

    return v0
.end method

.method public isFunctionSupported(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "function",
            "zone"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/camera/CameraManager;->mService:Lcom/geely/lib/oneosapi/camera/ICameraInterface;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/camera/ICameraInterface;->isFunctionSupported(II)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/camera/CameraManager;->serviceIsNull()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSetVideoMute(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/camera/CameraManager;->mService:Lcom/geely/lib/oneosapi/camera/ICameraInterface;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/camera/ICameraInterface;->onSetVideoVolume(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/camera/CameraManager;->serviceIsNull()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onStopVideoRecord()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/camera/CameraManager;->mService:Lcom/geely/lib/oneosapi/camera/ICameraInterface;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/camera/ICameraInterface;->onStopVideoRecord()V
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
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/camera/CameraManager;->serviceIsNull()V

    :goto_0
    return-void
.end method

.method public onTakeInnerPhoto()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/camera/CameraManager;->mService:Lcom/geely/lib/oneosapi/camera/ICameraInterface;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/camera/ICameraInterface;->onTakeInnerPhoto()V
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
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/camera/CameraManager;->serviceIsNull()V

    :goto_0
    return-void
.end method

.method public onTakeInnerVideo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/camera/CameraManager;->mService:Lcom/geely/lib/oneosapi/camera/ICameraInterface;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/camera/ICameraInterface;->onTakeInnerVideo()V
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
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/camera/CameraManager;->serviceIsNull()V

    :goto_0
    return-void
.end method

.method public onTakeOuterPhoto()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/camera/CameraManager;->mService:Lcom/geely/lib/oneosapi/camera/ICameraInterface;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/camera/ICameraInterface;->onTakeOuterPhoto()V
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
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/camera/CameraManager;->serviceIsNull()V

    :goto_0
    return-void
.end method

.method public onTakeOuterVideo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/camera/CameraManager;->mService:Lcom/geely/lib/oneosapi/camera/ICameraInterface;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/camera/ICameraInterface;->onTakeOuterVideo()V
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
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/camera/CameraManager;->serviceIsNull()V

    :goto_0
    return-void
.end method

.method public onTakePhoto()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/camera/CameraManager;->mService:Lcom/geely/lib/oneosapi/camera/ICameraInterface;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/camera/ICameraInterface;->onTakePhoto()V
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
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/camera/CameraManager;->serviceIsNull()V

    :goto_0
    return-void
.end method

.method public onTakePhoto(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "zone",
            "delayTime"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/geely/lib/oneosapi/camera/CameraManager;->mService:Lcom/geely/lib/oneosapi/camera/ICameraInterface;

    if-eqz v0, :cond_0

    .line 11
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/camera/ICameraInterface;->onTakePhotoWithParams(II)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/camera/CameraManager;->serviceIsNull()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTakePhotoAgain()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/camera/CameraManager;->mService:Lcom/geely/lib/oneosapi/camera/ICameraInterface;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/camera/ICameraInterface;->onTakePhotoAgain()V
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
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/camera/CameraManager;->serviceIsNull()V

    :goto_0
    return-void
.end method

.method public onTakeStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/camera/CameraManager;->mService:Lcom/geely/lib/oneosapi/camera/ICameraInterface;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/camera/ICameraInterface;->onTakeStart()V
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
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/camera/CameraManager;->serviceIsNull()V

    :goto_0
    return-void
.end method

.method public onTakeTimeLapseRecording()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/camera/CameraManager;->mService:Lcom/geely/lib/oneosapi/camera/ICameraInterface;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/camera/ICameraInterface;->onTakeTimeLapseRecording()V
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
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/camera/CameraManager;->serviceIsNull()V

    :goto_0
    return-void
.end method

.method public onTakeTimeTakenPhoto()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/camera/CameraManager;->mService:Lcom/geely/lib/oneosapi/camera/ICameraInterface;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/camera/ICameraInterface;->onTakeTimeTakenPhoto()V
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
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/camera/CameraManager;->serviceIsNull()V

    :goto_0
    return-void
.end method

.method public onTakeVideo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/camera/CameraManager;->mService:Lcom/geely/lib/oneosapi/camera/ICameraInterface;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/camera/ICameraInterface;->onTakeVideo()V
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
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/camera/CameraManager;->serviceIsNull()V

    :goto_0
    return-void
.end method

.method public onTakeVideo(III)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "open",
            "zone",
            "delayTime"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/geely/lib/oneosapi/camera/CameraManager;->mService:Lcom/geely/lib/oneosapi/camera/ICameraInterface;

    if-eqz v0, :cond_0

    .line 11
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/geely/lib/oneosapi/camera/ICameraInterface;->onTakeVideoToggle(III)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/camera/CameraManager;->serviceIsNull()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onVideoMute()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/camera/CameraManager;->mService:Lcom/geely/lib/oneosapi/camera/ICameraInterface;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/camera/ICameraInterface;->onVideoMute()V
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
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/camera/CameraManager;->serviceIsNull()V

    :goto_0
    return-void
.end method

.method public onVideoUnMute()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/camera/CameraManager;->mService:Lcom/geely/lib/oneosapi/camera/ICameraInterface;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/camera/ICameraInterface;->onVideoUnMute()V
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
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/camera/CameraManager;->serviceIsNull()V

    :goto_0
    return-void
.end method

.method public openCamera()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/camera/CameraManager;->mService:Lcom/geely/lib/oneosapi/camera/ICameraInterface;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/camera/ICameraInterface;->openCamera()V
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
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/camera/CameraManager;->serviceIsNull()V

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
    invoke-direct {p0, p1}, Lcom/geely/lib/oneosapi/camera/CameraManager;->initVrManger(Landroid/os/IBinder;)V

    return-void
.end method
