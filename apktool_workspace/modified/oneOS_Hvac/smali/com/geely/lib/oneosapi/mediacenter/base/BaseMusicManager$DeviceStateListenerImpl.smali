.class public Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;
.super Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener$Stub;
.source "BaseMusicManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceStateListenerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    invoke-direct {p0}, Lcom/geely/lib/oneosapi/mediacenter/listener/IDeviceStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppDied(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "app"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$8;

    invoke-direct {v1, p0, p1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$8;-><init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAppExistStateChanged(IIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "app",
            "existed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$7;-><init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;IIZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBluetoothDeviceChange(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "deviceInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/mediacenter/bean/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$6;-><init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDeviceError(IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "error",
            "errorMsg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$2;-><init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDeviceStateChanged(IILcom/geely/lib/oneosapi/mediacenter/bean/DeviceInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "state",
            "info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$1;-><init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;IILcom/geely/lib/oneosapi/mediacenter/bean/DeviceInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMediaQueryFinished(ILcom/geely/lib/oneosapi/mediacenter/bean/DeviceInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$10;-><init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;ILcom/geely/lib/oneosapi/mediacenter/bean/DeviceInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMediaQueryStarted(ILcom/geely/lib/oneosapi/mediacenter/bean/DeviceInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$9;-><init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;ILcom/geely/lib/oneosapi/mediacenter/bean/DeviceInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onScanPathFinish(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "musicFileDataList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/mediacenter/bean/MusicFileData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$3;-><init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSearchSongResult(IILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "app",
            "searchResults"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/mediacenter/bean/SearchResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$5;-><init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;IILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserInfoResult(IILcom/geely/lib/oneosapi/mediacenter/bean/OnlineUserInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "app",
            "userInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$4;-><init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;IILcom/geely/lib/oneosapi/mediacenter/bean/OnlineUserInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
