.class public Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;
.super Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;
.source "RspGuideInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final GUIDE_TYPE_CRUISE:I = 0x2

.field public static final GUIDE_TYPE_GPS:I = 0x0

.field public static final GUIDE_TYPE_SIMULATE:I = 0x1


# instance fields
.field private cameraDistance:I

.field private cameraSpeed:I

.field private cameraType:I

.field private curRoadName:Ljava/lang/String;

.field private guideType:I

.field private nextRoadName:Ljava/lang/String;

.field private nextServiceAreaDistance:I

.field private nextServiceAreaName:Ljava/lang/String;

.field private nextServiceAreaType:I

.field private roadType:I

.field private routeRemainDistance:I

.field private routeRemainTime:I

.field private routeRemainTrafficLightNum:I

.field private secondServiceAreaDistance:I

.field private secondServiceAreaName:Ljava/lang/String;

.field private secondServiceAreaType:I

.field private segRemainDistance:I

.field private segRemainTime:I

.field private trafficLightNum:I

.field private turnId:I

.field private turnSvg:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 3
    invoke-direct {p0, p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->guideType:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->roadType:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->routeRemainDistance:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->routeRemainTime:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->segRemainDistance:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->segRemainTime:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->turnId:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->curRoadName:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->nextRoadName:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->trafficLightNum:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->routeRemainTrafficLightNum:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->cameraType:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->cameraSpeed:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->cameraDistance:I

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
.method public bridge synthetic clone()Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->clone()Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;
    .locals 1

    .line 3
    invoke-super {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->clone()Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->clone()Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCameraDistance()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->cameraDistance:I

    return v0
.end method

.method public getCameraSpeed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->cameraSpeed:I

    return v0
.end method

.method public getCameraType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->cameraType:I

    return v0
.end method

.method public getCurRoadName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->curRoadName:Ljava/lang/String;

    return-object v0
.end method

.method public getGuideType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->guideType:I

    return v0
.end method

.method public getNextRoadName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->nextRoadName:Ljava/lang/String;

    return-object v0
.end method

.method public getNextServiceAreaDistance()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->nextServiceAreaDistance:I

    return v0
.end method

.method public getNextServiceAreaName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->nextServiceAreaName:Ljava/lang/String;

    return-object v0
.end method

.method public getNextServiceAreaType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->nextServiceAreaType:I

    return v0
.end method

.method public getRoadType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->roadType:I

    return v0
.end method

.method public getRouteRemainDistance()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->routeRemainDistance:I

    return v0
.end method

.method public getRouteRemainTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->routeRemainTime:I

    return v0
.end method

.method public getRouteRemainTrafficLightNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->routeRemainTrafficLightNum:I

    return v0
.end method

.method public getSecondServiceAreaDistance()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->secondServiceAreaDistance:I

    return v0
.end method

.method public getSecondServiceAreaName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->secondServiceAreaName:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondServiceAreaType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->secondServiceAreaType:I

    return v0
.end method

.method public getSegRemainDistance()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->segRemainDistance:I

    return v0
.end method

.method public getSegRemainTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->segRemainTime:I

    return v0
.end method

.method public getTrafficLightNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->trafficLightNum:I

    return v0
.end method

.method public getTurnId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->turnId:I

    return v0
.end method

.method public getTurnSvg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->turnSvg:Ljava/lang/String;

    return-object v0
.end method

.method public setCameraDistance(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraDistance"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->cameraDistance:I

    return-void
.end method

.method public setCameraSpeed(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraSpeed"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->cameraSpeed:I

    return-void
.end method

.method public setCameraType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->cameraType:I

    return-void
.end method

.method public setCurRoadName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curRoadName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->curRoadName:Ljava/lang/String;

    return-void
.end method

.method public setGuideType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "guideType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->guideType:I

    return-void
.end method

.method public setNextRoadName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextRoadName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->nextRoadName:Ljava/lang/String;

    return-void
.end method

.method public setNextServiceAreaDistance(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextServiceAreaDistance"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->nextServiceAreaDistance:I

    return-void
.end method

.method public setNextServiceAreaName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextServiceAreaName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->nextServiceAreaName:Ljava/lang/String;

    return-void
.end method

.method public setNextServiceAreaType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextServiceAreaType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->nextServiceAreaType:I

    return-void
.end method

.method public setRoadType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roadType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->roadType:I

    return-void
.end method

.method public setRouteRemainDistance(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routeRemainDistance"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->routeRemainDistance:I

    return-void
.end method

.method public setRouteRemainTime(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routeRemainTime"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->routeRemainTime:I

    return-void
.end method

.method public setRouteRemainTrafficLightNum(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routeRemainTrafficLightNum"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->routeRemainTrafficLightNum:I

    return-void
.end method

.method public setSecondServiceAreaDistance(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secondServiceAreaDistance"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->secondServiceAreaDistance:I

    return-void
.end method

.method public setSecondServiceAreaName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secondServiceAreaName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->secondServiceAreaName:Ljava/lang/String;

    return-void
.end method

.method public setSecondServiceAreaType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secondServiceAreaType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->secondServiceAreaType:I

    return-void
.end method

.method public setSegRemainDistance(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "segRemainDistance"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->segRemainDistance:I

    return-void
.end method

.method public setSegRemainTime(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "segRemainTime"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->segRemainTime:I

    return-void
.end method

.method public setTrafficLightNum(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trafficLightNum"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->trafficLightNum:I

    return-void
.end method

.method public setTurnId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "turnId"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->turnId:I

    return-void
.end method

.method public setTurnSvg(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "turnSvg"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->turnSvg:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->toString()Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RspGuideInfo{guideType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->guideType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", roadType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->roadType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", routeRemainDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->routeRemainDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", routeRemainTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->routeRemainTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", segRemainDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->segRemainDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", segRemainTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->segRemainTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", turnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->turnId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curRoadName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->curRoadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", nextRoadName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->nextRoadName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", nextServiceAreaDistance="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->nextServiceAreaDistance:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", nextServiceAreaType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->nextServiceAreaType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", nextServiceAreaName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->nextServiceAreaName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", secondServiceAreaDistance="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->secondServiceAreaDistance:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", secondServiceAreaType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->secondServiceAreaType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", secondServiceAreaName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->secondServiceAreaName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", turnSvg=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->turnSvg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", trafficLightNum="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->trafficLightNum:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", routeRemainTrafficLightNum="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->routeRemainTrafficLightNum:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", cameraType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->cameraType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cameraSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->cameraSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cameraDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->cameraDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

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
            "dest",
            "flags"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->guideType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->roadType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->routeRemainDistance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->routeRemainTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->segRemainDistance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->segRemainTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->turnId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->curRoadName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->nextRoadName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->trafficLightNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->routeRemainTrafficLightNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->cameraType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->cameraSpeed:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspGuideInfo;->cameraDistance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
