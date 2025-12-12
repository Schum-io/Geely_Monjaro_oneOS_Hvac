.class public Lcom/geely/lib/oneosapi/navi/impl/NaviCallbackImpl;
.super Lcom/geely/lib/oneosapi/navi/INaviCallback$Stub;
.source "NaviCallbackImpl.java"


# instance fields
.field private eventListener:Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventListener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/navi/INaviCallback$Stub;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/impl/NaviCallbackImpl;->eventListener:Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;

    return-void
.end method


# virtual methods
.method public onAdAreaChanged(Lcom/geely/lib/oneosapi/navi/ipc/ILocationInfoModelBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locationInfoModelBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/impl/NaviCallbackImpl;->eventListener:Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;->onAdAreaChanged(Lcom/geely/lib/oneosapi/navi/ipc/ILocationInfoModelBean;)V

    return-void
.end method

.method public onArrivedLastMile(Lcom/geely/lib/oneosapi/navi/ipc/IPoiInfoBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "poiInfoBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/impl/NaviCallbackImpl;->eventListener:Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;->onArrivedLastMile(Lcom/geely/lib/oneosapi/navi/ipc/IPoiInfoBean;)V

    return-void
.end method

.method public onCommutePush(Lcom/geely/lib/oneosapi/navi/ipc/ICommuteInfoBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commuteInfoBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/impl/NaviCallbackImpl;->eventListener:Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;->onCommutePush(Lcom/geely/lib/oneosapi/navi/ipc/ICommuteInfoBean;)V

    return-void
.end method

.method public onDestinationParkingUpdate(Lcom/geely/lib/oneosapi/navi/ipc/IParkingPoisBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parkingPoisBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/impl/NaviCallbackImpl;->eventListener:Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;->onDestinationParkingUpdate(Lcom/geely/lib/oneosapi/navi/ipc/IParkingPoisBean;)V

    return-void
.end method

.method public onFavoriteChanged(Lcom/geely/lib/oneosapi/navi/ipc/IFavoritesInfoBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "favoritesInfoBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/impl/NaviCallbackImpl;->eventListener:Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;->onFavoriteChanged(Lcom/geely/lib/oneosapi/navi/ipc/IFavoritesInfoBean;)V

    return-void
.end method

.method public onGuideInfoChanged(Lcom/geely/lib/oneosapi/navi/ipc/IGuidingInfoModelBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "guidingInfoModelBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/impl/NaviCallbackImpl;->eventListener:Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;->onGuideInfoChanged(Lcom/geely/lib/oneosapi/navi/ipc/IGuidingInfoModelBean;)V

    return-void
.end method

.method public onHighwayExitInfoUpdate(Lcom/geely/lib/oneosapi/navi/ipc/IHighwayExitInfoModelBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "highwayExitInfoModelBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/impl/NaviCallbackImpl;->eventListener:Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;->onHighwayExitInfoUpdate(Lcom/geely/lib/oneosapi/navi/ipc/IHighwayExitInfoModelBean;)V

    return-void
.end method

.method public onHistoryPoisUpdateCallback(Lcom/geely/lib/oneosapi/navi/ipc/IHistoryPoisBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "historyPoisBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/impl/NaviCallbackImpl;->eventListener:Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;->onHistoryPoisUpdateCallback(Lcom/geely/lib/oneosapi/navi/ipc/IHistoryPoisBean;)V

    return-void
.end method

.method public onLanesInfoChanged(Lcom/geely/lib/oneosapi/navi/ipc/ILanesInfoBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lanesInfoBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/impl/NaviCallbackImpl;->eventListener:Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;->onLanesInfoChanged(Lcom/geely/lib/oneosapi/navi/ipc/ILanesInfoBean;)V

    return-void
.end method

.method public onMapStatusChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/impl/NaviCallbackImpl;->eventListener:Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;->onMapStatusChanged(I)V

    return-void
.end method

.method public onRouteInfoChanged(Lcom/geely/lib/oneosapi/navi/ipc/IRoutePlanInfoBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routePlanInfoBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/impl/NaviCallbackImpl;->eventListener:Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;->onRouteInfoChanged(Lcom/geely/lib/oneosapi/navi/ipc/IRoutePlanInfoBean;)V

    return-void
.end method

.method public onSendPOIToCar(Lcom/geely/lib/oneosapi/navi/ipc/IPoiInfoBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "poiInfoBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/impl/NaviCallbackImpl;->eventListener:Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;->onSendPOIToCar(Lcom/geely/lib/oneosapi/navi/ipc/IPoiInfoBean;)V

    return-void
.end method

.method public onTrafficConditionsChanged(Lcom/geely/lib/oneosapi/navi/ipc/ITrafficConditionInfoBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trafficConditionInfoBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/impl/NaviCallbackImpl;->eventListener:Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;->onTrafficConditionsChanged(Lcom/geely/lib/oneosapi/navi/ipc/ITrafficConditionInfoBean;)V

    return-void
.end method

.method public onTripReporterUpdate(Lcom/geely/lib/oneosapi/navi/ipc/ITripReporterBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tripReporter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/impl/NaviCallbackImpl;->eventListener:Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/navi/listener/IMapEventListener;->onTripReporterUpdate(Lcom/geely/lib/oneosapi/navi/ipc/ITripReporterBean;)V

    return-void
.end method
