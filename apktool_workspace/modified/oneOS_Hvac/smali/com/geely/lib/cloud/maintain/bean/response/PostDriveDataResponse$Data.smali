.class Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse$Data;
.super Ljava/lang/Object;
.source "PostDriveDataResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field private bra:Ljava/lang/Integer;

.field private endTime:Ljava/lang/String;

.field private idleSpeed:Ljava/lang/String;

.field private overSpeedCount:Ljava/lang/Integer;

.field private parkingCount:Ljava/lang/Integer;

.field private rapidAccelerationCount:Ljava/lang/Integer;

.field private startTime:Ljava/lang/String;

.field final synthetic this$0:Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse;

.field private totalDistance:Ljava/lang/String;

.field private totalDuration:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse$Data;->this$0:Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBra()Ljava/lang/Integer;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse$Data;->bra:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse$Data;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getIdleSpeed()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse$Data;->idleSpeed:Ljava/lang/String;

    return-object v0
.end method

.method public getOverSpeedCount()Ljava/lang/Integer;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse$Data;->overSpeedCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getParkingCount()Ljava/lang/Integer;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse$Data;->parkingCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRapidAccelerationCount()Ljava/lang/Integer;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse$Data;->rapidAccelerationCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse$Data;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalDistance()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse$Data;->totalDistance:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalDuration()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse$Data;->totalDuration:Ljava/lang/String;

    return-object v0
.end method

.method public setBra(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bra"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse$Data;->bra:Ljava/lang/Integer;

    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endTime"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse$Data;->endTime:Ljava/lang/String;

    return-void
.end method

.method public setIdleSpeed(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idleSpeed"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse$Data;->idleSpeed:Ljava/lang/String;

    return-void
.end method

.method public setOverSpeedCount(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "overSpeedCount"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse$Data;->overSpeedCount:Ljava/lang/Integer;

    return-void
.end method

.method public setParkingCount(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parkingCount"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse$Data;->parkingCount:Ljava/lang/Integer;

    return-void
.end method

.method public setRapidAccelerationCount(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rapidAccelerationCount"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse$Data;->rapidAccelerationCount:Ljava/lang/Integer;

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startTime"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse$Data;->startTime:Ljava/lang/String;

    return-void
.end method

.method public setTotalDistance(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalDistance"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse$Data;->totalDistance:Ljava/lang/String;

    return-void
.end method

.method public setTotalDuration(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalDuration"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse$Data;->totalDuration:Ljava/lang/String;

    return-void
.end method
