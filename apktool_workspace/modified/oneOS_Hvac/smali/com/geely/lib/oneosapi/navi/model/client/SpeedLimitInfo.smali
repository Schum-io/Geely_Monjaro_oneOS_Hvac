.class public Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo;
.super Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;
.source "SpeedLimitInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;,
        Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$JctWayInfo;,
        Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROAD_COUNTY:I = 0x3

.field public static final ROAD_EXPRESS:I = 0x6

.field public static final ROAD_HIGH_SPEED:I = 0x0

.field public static final ROAD_NATION:I = 0x1

.field public static final ROAD_NOMAL:I = 0x9

.field public static final ROAD_NO_NAV:I = 0xa

.field public static final ROAD_PRIMARY:I = 0x7

.field public static final ROAD_PROV:I = 0x2

.field public static final ROAD_SECONDARY:I = 0x8

.field public static final ROAD_TOWN:I = 0x4

.field public static final ROAD_VILLAGE:I = 0x5


# instance fields
.field private elecLimitingInfo:Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;

.field private jctWayInfo:Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$JctWayInfo;

.field private roadInfo:Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    const/16 v0, 0xf3c

    .line 2
    invoke-virtual {p0, v0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->setProtocolID(I)V

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
    const-class v0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo;->elecLimitingInfo:Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;

    .line 5
    const-class v0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$JctWayInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$JctWayInfo;

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo;->jctWayInfo:Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$JctWayInfo;

    .line 6
    const-class v0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;

    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo;->roadInfo:Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;

    return-void
.end method


# virtual methods
.method public getElecLimitingInfo()Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo;->elecLimitingInfo:Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;

    return-object v0
.end method

.method public getJctWayInfo()Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$JctWayInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo;->jctWayInfo:Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$JctWayInfo;

    return-object v0
.end method

.method public getRoadInfo()Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo;->roadInfo:Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;

    return-object v0
.end method

.method public setElecLimitingInfo(Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elecLimitingInfo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo;->elecLimitingInfo:Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;

    return-void
.end method

.method public setJctWayInfo(Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$JctWayInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jctWayInfo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo;->jctWayInfo:Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$JctWayInfo;

    return-void
.end method

.method public setRoadInfo(Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roadInfo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo;->roadInfo:Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->toString()Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpeedLimitInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "elecLimitingInfo="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo;->elecLimitingInfo:Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", jctWayInfo=\'"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo;->jctWayInfo:Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$JctWayInfo;

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$JctWayInfo;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", roadInfo=\'"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo;->roadInfo:Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    invoke-super {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo;->elecLimitingInfo:Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$ElecLimitingInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo;->jctWayInfo:Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$JctWayInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo;->roadInfo:Lcom/geely/lib/oneosapi/navi/model/client/SpeedLimitInfo$RoadInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
