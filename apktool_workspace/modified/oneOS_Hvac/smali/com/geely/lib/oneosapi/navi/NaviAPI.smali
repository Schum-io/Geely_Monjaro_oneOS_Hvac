.class public abstract Lcom/geely/lib/oneosapi/navi/NaviAPI;
.super Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;
.source "NaviAPI.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NaviAPI"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;-><init>()V

    return-void
.end method


# virtual methods
.method public backToMap(Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviAPICallback"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    const/16 v1, 0xbbb

    .line 2
    invoke-virtual {v0, v1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->setProtocolID(I)V

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public bindUserIdToAMap(Lcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userIdBindModel",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public bindUserIdToGeelyMap(Lcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userIdBindModel",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public cancelNavi(Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviAPICallback"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    const/16 v1, 0xd4b

    .line 2
    invoke-virtual {v0, v1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->setProtocolID(I)V

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public changeRoadType(Lcom/geely/lib/oneosapi/navi/model/client/NaviChangeRoadType;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "naviChangeRoadType",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public changeSearchResultPage(Lcom/geely/lib/oneosapi/navi/model/client/SearchResultPageChange;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "searchResultPageChange",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public downloadOfflineMap(Lcom/geely/lib/oneosapi/navi/model/client/MapDownloadOfflineData;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadOfflineData",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public editFavoritePois(Lcom/geely/lib/oneosapi/navi/model/client/UserFavoritePoiEdit;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "favoritePoiEdit",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public exitMap(Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviAPICallback"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    const/16 v1, 0xbbe

    .line 2
    invoke-virtual {v0, v1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->setProtocolID(I)V

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public getCurrPageHotWord(Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviAPICallback"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    const/16 v1, 0xf4b

    .line 2
    invoke-virtual {v0, v1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->setProtocolID(I)V

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public getDimDisplayMode(Lcom/geely/lib/oneosapi/navi/model/client/DimDisplayMode;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dimDisplayMode",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public getFavoritePois(Lcom/geely/lib/oneosapi/navi/model/client/UserGetFavoritePois;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "favoritePois",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public getFrequentPois(Lcom/geely/lib/oneosapi/navi/model/client/RequestFrequentPois;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestFrequentPois",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public getFrontTraffic(Lcom/geely/lib/oneosapi/navi/model/client/NaviGetFrontTrafficRadio;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "getFrontTrafficRadio",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public getGuideInfo(Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviAPICallback"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    const/16 v1, 0xd4f

    .line 2
    invoke-virtual {v0, v1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->setProtocolID(I)V

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public getHighwayExitInfo(Lcom/geely/lib/oneosapi/navi/model/client/NaviGetHighwayExit;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "highwayExit",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public getHistoryPois(Lcom/geely/lib/oneosapi/navi/model/client/RequestHistoryPois;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestHistoryPois",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public getLastLocation(Lcom/geely/lib/oneosapi/navi/model/client/MapOperaShowMyLocation;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mapOperaShowMyLocation",
            "naviAPICallback"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public getNaviStatus()Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;
    .locals 2

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    const/16 v1, 0xd53

    .line 2
    invoke-virtual {v0, v1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->setProtocolID(I)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPISync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;

    move-result-object v0

    return-object v0
.end method

.method public getRouteInfo(Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviAPICallback"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    const/16 v1, 0xd52

    .line 2
    invoke-virtual {v0, v1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->setProtocolID(I)V

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public getSpeedLimitInfo(Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviAPICallback"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    const/16 v1, 0xf3c

    .line 2
    invoke-virtual {v0, v1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->setProtocolID(I)V

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public getSupportMapFeatures(Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviAPICallback"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    const/16 v1, 0x138a

    .line 2
    invoke-virtual {v0, v1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->setProtocolID(I)V

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public getTrafficSummaryInfo(Lcom/geely/lib/oneosapi/navi/model/client/MapOperaGetTrafficSummaryInfo;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "trafficSummaryInfo",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public goOfflineMapDown(Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviAPICallback"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    const/16 v1, 0xbc1

    .line 2
    invoke-virtual {v0, v1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->setProtocolID(I)V

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public abstract invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestModel",
            "naviAPICallback"
        }
    .end annotation
.end method

.method public abstract invokeAPISync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestModel"
        }
    .end annotation
.end method

.method public abstract isConnected()Z
.end method

.method public abstract launchMap(ILcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mapVendor",
            "naviAPICallback"
        }
    .end annotation
.end method

.method public logoutUserIdToAMap(Lcom/geely/lib/oneosapi/navi/model/client/UserLogoutModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userLogoutModel",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public logoutUserIdToGeelyMap(Lcom/geely/lib/oneosapi/navi/model/client/UserLogoutModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userLogoutModel",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public mapAppIsLaunched(Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviAPICallback"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    const/16 v1, 0xbc6

    .line 2
    invoke-virtual {v0, v1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->setProtocolID(I)V

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public mapInOnNaviStatus(Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviAPICallback"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    const/16 v1, 0xbc5

    .line 2
    invoke-virtual {v0, v1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->setProtocolID(I)V

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public mapZoomInOut(Lcom/geely/lib/oneosapi/navi/model/client/MapOperaZoomInOut;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "zoomInOut",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public naviViaEdit(Lcom/geely/lib/oneosapi/navi/model/client/NaviViaModify;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "naviViaModify",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public openFavorite(Lcom/geely/lib/oneosapi/navi/model/client/UserOpenFavorite;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userOpenFavorite",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public openPoiHistory(Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviAPICallback"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    const/16 v1, 0xe14

    .line 2
    invoke-virtual {v0, v1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->setProtocolID(I)V

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public abstract release()V
.end method

.method public reportFontTurnInfo(Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviAPICallback"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    const/16 v1, 0xd60

    .line 2
    invoke-virtual {v0, v1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->setProtocolID(I)V

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public requestAntiGeo(Lcom/geely/lib/oneosapi/navi/model/client/MapGeoDecodeBean;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "antiGEO",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public requestSpeedLimitFocus(Lcom/geely/lib/oneosapi/navi/model/service/RspSpeedLimitFocus;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rspSpeedLimitFocus",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-interface {p2, p1}, Lcom/geely/lib/oneosapi/navi/INaviAPICallback;->onSuccess(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)V

    const/4 p1, 0x0

    return p1
.end method

.method public routePlanOrNavi(Lcom/geely/lib/oneosapi/navi/model/client/NaviRoutePlan;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "naviRoutePlan",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public routeSelect(Lcom/geely/lib/oneosapi/navi/model/client/NaviRouteSelect;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "routeSelectParam",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public searchAlongWay(Lcom/geely/lib/oneosapi/navi/model/client/SearchAlongWay;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "searchAlongWayParam",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public searchAround(Lcom/geely/lib/oneosapi/navi/model/client/SearchAround;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "searchAroundParam",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public searchByKeyword(Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "searchByKeywordParam",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public searchLastDeparture(Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviAPICallback"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    const/16 v1, 0xc87

    .line 2
    invoke-virtual {v0, v1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->setProtocolID(I)V

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public searchPOINearbyBurnout(Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "searchByKeywordParam",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public sendSpeedLimitInfo(Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "speedLimitInfo",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-interface {p2, p1}, Lcom/geely/lib/oneosapi/navi/INaviAPICallback;->onSuccess(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setCircleFence(Lcom/geely/lib/oneosapi/navi/model/client/NaviSetCircleFence;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reqModel",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public abstract setNaviEventListener(Lcom/geely/lib/oneosapi/navi/INaviEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public setReportNaviType(Lcom/geely/lib/oneosapi/navi/model/client/MapReportNaviType;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reportNaviType",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public setRoutePrefer(Lcom/geely/lib/oneosapi/navi/model/client/RoutePlanStrategyBean;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "naviRoutePrefer",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public showMyLocation(Lcom/geely/lib/oneosapi/navi/model/client/MapOperaShowMyLocation;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "showMyLocationParam",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public specialPoiNavi(Lcom/geely/lib/oneosapi/navi/model/client/NaviSpecialPoi;ILcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "naviSpecialPoi",
            "routePlanStrategy",
            "naviAPICallback"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/geely/lib/oneosapi/navi/NaviAPI$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/geely/lib/oneosapi/navi/NaviAPI$1;-><init>(Lcom/geely/lib/oneosapi/navi/NaviAPI;ILcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    invoke-virtual {p0, p1, v0}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public specialPoiNavi(Lcom/geely/lib/oneosapi/navi/model/client/NaviSpecialPoi;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "naviSpecialPoi",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public startNavi(ILcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "naviType",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/geely/lib/oneosapi/navi/model/client/StartNaviModel;

    invoke-direct {p1}, Lcom/geely/lib/oneosapi/navi/model/client/StartNaviModel;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public switchAlternativeRoute(Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviAPICallback"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/client/SwitchAlternativeRoute;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/client/SwitchAlternativeRoute;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public switchCruise(Lcom/geely/lib/oneosapi/navi/model/client/NaviSwitchCruise;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "naviSwitchCruise",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public switchDimNaviMode(Lcom/geely/lib/oneosapi/navi/model/client/DimDisplayMode;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dimDisplayMode",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public switchFullView(Lcom/geely/lib/oneosapi/navi/model/client/NaviSwitchFullView;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "switchFullView",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public switchMapARGuide(Lcom/geely/lib/oneosapi/navi/model/client/MapOperaSwitchAR;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "switchAR",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public switchMapPresentation(Lcom/geely/lib/oneosapi/navi/model/client/SwitchMapPresentation;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "switchMapPresentation",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public switchMapTraffic(Lcom/geely/lib/oneosapi/navi/model/client/MapOperaSwitchTraffic;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "switchTraffic",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method

.method public switchMapViewMode(Lcom/geely/lib/oneosapi/navi/model/client/MapOperaViewMode;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewMode",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1
.end method
