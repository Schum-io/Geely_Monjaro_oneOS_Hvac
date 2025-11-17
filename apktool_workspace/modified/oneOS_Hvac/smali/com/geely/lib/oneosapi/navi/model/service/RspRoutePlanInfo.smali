.class public Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo;
.super Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanResult;
.source "RspRoutePlanInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentRouteIndex:I

.field private endPOI:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

.field private routeInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/navi/model/service/RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private startPOI:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

.field private viaPOIInfos:Ljava/util/List;
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
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanResult;-><init>(Landroid/os/Parcel;)V

    .line 3
    const-class v0, Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo;->startPOI:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    .line 4
    const-class v0, Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo;->endPOI:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    .line 5
    sget-object v0, Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo;->viaPOIInfos:Ljava/util/List;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo;->currentRouteIndex:I

    .line 7
    sget-object v0, Lcom/geely/lib/oneosapi/navi/model/service/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo;->routeInfos:Ljava/util/List;

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
    invoke-direct {p0, p1}, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanResult;-><init>(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)V

    return-void
.end method

.method public static getCREATOR()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public getCurrentRouteIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo;->currentRouteIndex:I

    return v0
.end method

.method public getEndPOI()Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo;->endPOI:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    return-object v0
.end method

.method public getRouteInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/navi/model/service/RouteInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo;->routeInfos:Ljava/util/List;

    return-object v0
.end method

.method public getStartPOI()Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo;->startPOI:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    return-object v0
.end method

.method public getViaPOIInfos()Ljava/util/List;
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
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo;->viaPOIInfos:Ljava/util/List;

    return-object v0
.end method

.method public setCurrentRouteIndex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentRouteIndex"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo;->currentRouteIndex:I

    return-void
.end method

.method public setEndPOI(Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endPOI"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo;->endPOI:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    return-void
.end method

.method public setRouteInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routeInfos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/navi/model/service/RouteInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo;->routeInfos:Ljava/util/List;

    return-void
.end method

.method public setStartPOI(Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startPOI"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo;->startPOI:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    return-void
.end method

.method public setViaPOIInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viaPOIInfos"
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
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo;->viaPOIInfos:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RspRoutePlanInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "viaPOIInfos="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo;->viaPOIInfos:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startPOI="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo;->startPOI:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endPOI="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo;->endPOI:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{base="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
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
    invoke-super {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo;->startPOI:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo;->endPOI:Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    iget-object p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo;->viaPOIInfos:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 5
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo;->currentRouteIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspRoutePlanInfo;->routeInfos:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
