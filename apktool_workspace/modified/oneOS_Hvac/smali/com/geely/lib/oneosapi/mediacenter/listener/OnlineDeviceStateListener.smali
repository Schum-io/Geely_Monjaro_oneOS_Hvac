.class public abstract Lcom/geely/lib/oneosapi/mediacenter/listener/OnlineDeviceStateListener;
.super Ljava/lang/Object;
.source "OnlineDeviceStateListener.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/mediacenter/listener/DeviceStateListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBluetoothDeviceChange(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Ljava/util/List;)V
    .locals 0
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
            "(",
            "Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/mediacenter/bean/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final onScanPathFinish(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Ljava/util/List;)V
    .locals 0
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
            "(",
            "Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/mediacenter/bean/MusicFileData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
