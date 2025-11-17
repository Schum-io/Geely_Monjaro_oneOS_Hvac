.class public interface abstract Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;
.super Ljava/lang/Object;
.source "IMapEventListener.java"


# virtual methods
.method public abstract onAdAreaChanged(Lcom/geely/lib/oneosapi/navi/ipc/ILocationInfoModelBean;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locationInfoModelBean"
        }
    .end annotation
.end method

.method public abstract onArrivedLastMile(Lcom/geely/lib/oneosapi/navi/ipc/IPoiInfoBean;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "poiInfoBean"
        }
    .end annotation
.end method

.method public abstract onCommutePush(Lcom/geely/lib/oneosapi/navi/ipc/ICommuteInfoBean;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commuteInfoBean"
        }
    .end annotation
.end method

.method public abstract onDestinationParkingUpdate(Lcom/geely/lib/oneosapi/navi/ipc/IParkingPoisBean;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parkingPoisBean"
        }
    .end annotation
.end method

.method public abstract onFavoriteChanged(Lcom/geely/lib/oneosapi/navi/ipc/IFavoritesInfoBean;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "favoritesInfoBean"
        }
    .end annotation
.end method

.method public abstract onGuideInfoChanged(Lcom/geely/lib/oneosapi/navi/ipc/IGuidingInfoModelBean;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "guidingInfoModelBean"
        }
    .end annotation
.end method

.method public abstract onHighwayExitInfoUpdate(Lcom/geely/lib/oneosapi/navi/ipc/IHighwayExitInfoModelBean;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "highwayExitInfoModelBean"
        }
    .end annotation
.end method

.method public abstract onHistoryPoisUpdateCallback(Lcom/geely/lib/oneosapi/navi/ipc/IHistoryPoisBean;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "historyPoisBean"
        }
    .end annotation
.end method

.method public abstract onLanesInfoChanged(Lcom/geely/lib/oneosapi/navi/ipc/ILanesInfoBean;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lanesInfoBean"
        }
    .end annotation
.end method

.method public abstract onMapStatusChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapStatus"
        }
    .end annotation
.end method

.method public abstract onRouteInfoChanged(Lcom/geely/lib/oneosapi/navi/ipc/IRoutePlanInfoBean;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routePlanInfoBean"
        }
    .end annotation
.end method

.method public abstract onSendPOIToCar(Lcom/geely/lib/oneosapi/navi/ipc/IPoiInfoBean;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "poiInfoBean"
        }
    .end annotation
.end method

.method public abstract onTrafficConditionsChanged(Lcom/geely/lib/oneosapi/navi/ipc/ITrafficConditionInfoBean;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trafficConditionInfoBean"
        }
    .end annotation
.end method

.method public abstract onTripReporterUpdate(Lcom/geely/lib/oneosapi/navi/ipc/ITripReporterBean;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tripReporter"
        }
    .end annotation
.end method
