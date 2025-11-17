.class public Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;
.super Ljava/lang/Object;
.source "NaviStatus.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final DAYNIGHT_STATUS_DAY:I = 0x0

.field public static final DAYNIGHT_STATUS_NIGHT:I = 0x1

.field public static final DAYNIGHT_STATUS_UNKNOWN:I = -0x1

.field public static final GUIDE_STATUS_CRUISE:I = 0x2

.field public static final GUIDE_STATUS_GPS:I = 0x0

.field public static final GUIDE_STATUS_NOGUIDE:I = 0x3

.field public static final GUIDE_STATUS_SIMULATE:I = 0x1

.field public static final GUIDE_STATUS_UNKNOWN:I = -0x1

.field public static final MAP_STATUS_BACKGOURND:I = 0x4

.field public static final MAP_STATUS_FINISHED:I = 0x1

.field public static final MAP_STATUS_FOREGROUND:I = 0x3

.field public static final MAP_STATUS_STARTED:I = 0x0

.field public static final MAP_STATUS_UNKNOWN:I = -0x1

.field public static final MAP_TYPE_AMAP:I = 0x0

.field public static final MAP_TYPE_BAIDU:I = 0x1

.field public static final MAP_TYPE_TENCENT:I = 0x2

.field public static final ROUTE_VIEW_IN:I = 0x1

.field public static final ROUTE_VIEW_OUT:I = 0x2

.field public static final ROUTE_VIEW_UNKNOWN:I = -0x1

.field public static final TRAFFIC_STATUS_OFF:I = 0x2

.field public static final TRAFFIC_STATUS_ON:I = 0x1

.field public static final TRAFFIC_STATUS_UNKNOWN:I = -0x1

.field public static final VIEW_MODE_2D_FRONT_UP:I = 0x0

.field public static final VIEW_MODE_2D_NORTHWARD:I = 0x1

.field public static final VIEW_MODE_3D_FRONT_UP:I = 0x2

.field public static final VIEW_MODE_UNKNOWN:I = -0x1

.field public static final ZOOM_STATUS_MAX:I = 0x2

.field public static final ZOOM_STATUS_MID:I = 0x0

.field public static final ZOOM_STATUS_MIN:I = 0x1

.field public static final ZOOM_STATUS_UNKNOWN:I = -0x1


# instance fields
.field private bArrivedDestination:Z

.field private dayNightStatus:I

.field private dayNightStatusVendor:I

.field private guideStatus:I

.field private guideStatusVendor:I

.field private mapStatus:I

.field private mapStatusVendor:I

.field private mapType:I

.field private routeViewStatus:I

.field private routeViewStatusVendor:I

.field private trafficStatus:I

.field private trafficStatusVendor:I

.field private viewMode:I

.field private viewModeVendor:I

.field private zoomStatus:I

.field private zoomStatusVendor:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->mapType:I

    .line 4
    invoke-virtual {p0, p1}, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->resetStatus(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->mapType:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->mapStatus:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->guideStatus:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->routeViewStatus:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->trafficStatus:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->zoomStatus:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->viewMode:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->dayNightStatus:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->mapStatusVendor:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->guideStatusVendor:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->routeViewStatusVendor:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->trafficStatusVendor:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->zoomStatusVendor:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->viewModeVendor:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->dayNightStatusVendor:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    iput-boolean p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->bArrivedDestination:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;
    .locals 1

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5
    :catch_0
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;-><init>()V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->clone()Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDayNightStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->dayNightStatus:I

    return v0
.end method

.method public getDayNightStatusVendor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->dayNightStatusVendor:I

    return v0
.end method

.method public getGuideStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->guideStatus:I

    return v0
.end method

.method public getGuideStatusVendor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->guideStatusVendor:I

    return v0
.end method

.method public getMapStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->mapStatus:I

    return v0
.end method

.method public getMapStatusVendor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->mapStatusVendor:I

    return v0
.end method

.method public getMapType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->mapType:I

    return v0
.end method

.method public getRouteViewStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->routeViewStatus:I

    return v0
.end method

.method public getRouteViewStatusVendor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->routeViewStatusVendor:I

    return v0
.end method

.method public getTrafficStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->trafficStatus:I

    return v0
.end method

.method public getTrafficStatusVendor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->trafficStatusVendor:I

    return v0
.end method

.method public getViewMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->viewMode:I

    return v0
.end method

.method public getViewModeVendor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->viewModeVendor:I

    return v0
.end method

.method public getZoomStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->zoomStatus:I

    return v0
.end method

.method public getZoomStatusVendor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->zoomStatusVendor:I

    return v0
.end method

.method public isArrivedDestination()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->bArrivedDestination:Z

    return v0
.end method

.method public resetStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->resetStatus(I)V

    return-void
.end method

.method public resetStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->mapStatus:I

    .line 3
    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->guideStatus:I

    .line 4
    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->routeViewStatus:I

    .line 5
    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->trafficStatus:I

    .line 6
    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->zoomStatus:I

    .line 7
    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->viewMode:I

    .line 8
    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->dayNightStatus:I

    .line 9
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->mapStatusVendor:I

    .line 10
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->guideStatusVendor:I

    .line 11
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->routeViewStatusVendor:I

    .line 12
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->trafficStatusVendor:I

    .line 13
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->zoomStatusVendor:I

    .line 14
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->viewModeVendor:I

    .line 15
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->dayNightStatusVendor:I

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->bArrivedDestination:Z

    return-void
.end method

.method public setArrivedDestination(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->bArrivedDestination:Z

    return-void
.end method

.method public setDayNightStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->dayNightStatus:I

    return-void
.end method

.method public setDayNightStatusVendor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->dayNightStatusVendor:I

    return-void
.end method

.method public setGuideStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->guideStatus:I

    return-void
.end method

.method public setGuideStatusVendor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->guideStatusVendor:I

    return-void
.end method

.method public setMapStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->mapStatus:I

    return-void
.end method

.method public setMapStatusVendor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->mapStatusVendor:I

    return-void
.end method

.method public setMapType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->mapType:I

    return-void
.end method

.method public setRouteViewStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->routeViewStatus:I

    return-void
.end method

.method public setRouteViewStatusVendor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->routeViewStatusVendor:I

    return-void
.end method

.method public setTrafficStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->trafficStatus:I

    return-void
.end method

.method public setTrafficStatusVendor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->trafficStatusVendor:I

    return-void
.end method

.method public setViewMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->viewMode:I

    return-void
.end method

.method public setViewModeVendor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->viewModeVendor:I

    return-void
.end method

.method public setZoomStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->zoomStatus:I

    return-void
.end method

.method public setZoomStatusVendor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->zoomStatusVendor:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NaviStatus{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mapType="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->mapType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mapStatus="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->mapStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mapStatusVendor="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->mapStatusVendor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", guideStatus="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->guideStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", guideStatusVendor="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->guideStatusVendor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", routeViewStatus="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->routeViewStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", routeViewStatusVendor="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->routeViewStatusVendor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", trafficStatus="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->trafficStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", trafficStatusVendor="

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->trafficStatusVendor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", zoomStatus="

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->zoomStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", zoomStatusVendor="

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->zoomStatusVendor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", viewMode="

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->viewMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", viewModeVendor="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->viewModeVendor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dayNightStatus="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->dayNightStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dayNightStatusVendor="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->dayNightStatusVendor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bArrivedDestination="

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->bArrivedDestination:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "var1",
            "var2"
        }
    .end annotation

    .line 1
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->mapType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->mapStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->guideStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->routeViewStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->trafficStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->zoomStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->viewMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->dayNightStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->mapStatusVendor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->guideStatusVendor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->routeViewStatusVendor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->trafficStatusVendor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->zoomStatusVendor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->viewModeVendor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->dayNightStatusVendor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget-boolean p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/NaviStatus;->bArrivedDestination:Z

    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
