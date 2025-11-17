.class public Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo;
.super Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;
.source "RspHighwayExitInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final CUR_VERSION:I = 0x2


# instance fields
.field private etaDistance:J

.field private etaTime:J

.field private exitCount:I

.field private exitDirection:Ljava/lang/String;

.field private exitNumStr:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 4
    invoke-direct {p0, p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo;->exitNumStr:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo;->exitDirection:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo;->etaDistance:J

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo;->etaTime:J

    .line 9
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->getProtocolVersion()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo;->exitCount:I

    :cond_0
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

    const/4 p1, 0x2

    .line 3
    invoke-virtual {p0, p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->setProtocolVersion(I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEtaDistance()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo;->etaDistance:J

    return-wide v0
.end method

.method public getEtaTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo;->etaTime:J

    return-wide v0
.end method

.method public getExitCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo;->exitCount:I

    return v0
.end method

.method public getExitDirection()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo;->exitDirection:Ljava/lang/String;

    return-object v0
.end method

.method public getExitNumStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo;->exitNumStr:Ljava/lang/String;

    return-object v0
.end method

.method public setEtaDistance(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "etaDistance"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo;->etaDistance:J

    return-void
.end method

.method public setEtaTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "etaTime"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo;->etaTime:J

    return-void
.end method

.method public setExitCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exitCount"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo;->exitCount:I

    return-void
.end method

.method public setExitDirection(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exitDirection"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo;->exitDirection:Ljava/lang/String;

    return-void
.end method

.method public setExitNumStr(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exitNumStr"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo;->exitNumStr:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RspHighwayExitInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "exitCount=\'"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo;->exitCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", exitNumStr=\'"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo;->exitNumStr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", exitDirection=\'"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo;->exitDirection:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", etaDistance="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo;->etaDistance:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", etaTime="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo;->etaTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{base="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
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
    iget-object p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo;->exitNumStr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo;->exitDirection:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-wide v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo;->etaDistance:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5
    iget-wide v0, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo;->etaTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->getProtocolVersion()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 7
    iget p2, p0, Lcom/geely/lib/oneosapi/navi/model/service/RspHighwayExitInfo;->exitCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    return-void
.end method
