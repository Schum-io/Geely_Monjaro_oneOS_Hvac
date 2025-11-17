.class public Lcom/geely/lib/oneosapi/navi/model/service/RspCurrentRoute;
.super Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;
.source "RspCurrentRoute.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/navi/model/service/RspCurrentRoute;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private endPoi:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

.field private routeInfo:Lcom/geely/lib/oneosapi/navi/model/service/RouteInfo;

.field private startPoi:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

.field private viaPois:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/service/RspCurrentRoute$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/service/RspCurrentRoute$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/navi/model/service/RspCurrentRoute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 4
    const-class v0, Lcom/geely/lib/oneosapi/navi/model/service/RouteInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/navi/model/service/RouteInfo;

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspCurrentRoute;->routeInfo:Lcom/geely/lib/oneosapi/navi/model/service/RouteInfo;

    .line 5
    const-class v0, Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspCurrentRoute;->startPoi:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    .line 6
    const-class v0, Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspCurrentRoute;->endPoi:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspCurrentRoute;->viaPois:Ljava/util/List;

    .line 8
    const-class v1, Lcom/geely/lib/oneosapi/navi/model/service/RspCurrentRoute;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reqModel"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->copyBaseInfo(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEndPoi()Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspCurrentRoute;->endPoi:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    return-object v0
.end method

.method public getRouteInfo()Lcom/geely/lib/oneosapi/navi/model/service/RouteInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspCurrentRoute;->routeInfo:Lcom/geely/lib/oneosapi/navi/model/service/RouteInfo;

    return-object v0
.end method

.method public getStartPoi()Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspCurrentRoute;->startPoi:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    return-object v0
.end method

.method public getViaPois()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspCurrentRoute;->viaPois:Ljava/util/List;

    return-object v0
.end method

.method public setEndPoi(Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endPoi"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspCurrentRoute;->endPoi:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    return-void
.end method

.method public setRouteInfo(Lcom/geely/lib/oneosapi/navi/model/service/RouteInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routeInfo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspCurrentRoute;->routeInfo:Lcom/geely/lib/oneosapi/navi/model/service/RouteInfo;

    return-void
.end method

.method public setStartPoi(Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startPoi"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspCurrentRoute;->startPoi:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    return-void
.end method

.method public setViaPois(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viaPois"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspCurrentRoute;->viaPois:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RspCurrentRoute{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "routeInfo="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspCurrentRoute;->routeInfo:Lcom/geely/lib/oneosapi/navi/model/service/RouteInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startPoi="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspCurrentRoute;->startPoi:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endPoi="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspCurrentRoute;->endPoi:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", viaPois="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspCurrentRoute;->viaPois:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{base="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspCurrentRoute;->routeInfo:Lcom/geely/lib/oneosapi/navi/model/service/RouteInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspCurrentRoute;->startPoi:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspCurrentRoute;->endPoi:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 5
    iget-object p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspCurrentRoute;->viaPois:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
