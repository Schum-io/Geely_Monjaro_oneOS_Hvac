.class public abstract Lcom/geely/lib/oneosapi/mediacenter/listener/BtDeviceStateListener;
.super Ljava/lang/Object;
.source "BtDeviceStateListener.java"

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
.method public final onAppDied(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appSource"
        }
    .end annotation

    return-void
.end method

.method public final onAppExistStateChanged(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "audioSourceEnum",
            "appSourceEnum",
            "existed"
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

.method public final onSearchSongResult(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "appSource",
            "searchResults"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;",
            "Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/mediacenter/bean/SearchResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final onUserInfoResult(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;Lcom/geely/lib/oneosapi/mediacenter/bean/OnlineUserInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "appSource",
            "userInfo"
        }
    .end annotation

    return-void
.end method
