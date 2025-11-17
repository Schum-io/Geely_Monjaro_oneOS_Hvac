.class Lcom/geely/lib/cloud/maintain/bean/response/PostDriveQueryReportResponse$Data;
.super Ljava/lang/Object;
.source "PostDriveQueryReportResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/maintain/bean/response/PostDriveQueryReportResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field private averageFuelConsumption:Ljava/lang/String;

.field private averageSpeed:Ljava/lang/String;

.field private distance:Ljava/lang/String;

.field private endTime:Ljava/lang/String;

.field private startTime:Ljava/lang/String;

.field final synthetic this$0:Lcom/geely/lib/cloud/maintain/bean/response/PostDriveQueryReportResponse;

.field private totalDuration:Ljava/lang/String;

.field private totalPowerConsumption:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/geely/lib/cloud/maintain/bean/response/PostDriveQueryReportResponse;)V
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
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveQueryReportResponse$Data;->this$0:Lcom/geely/lib/cloud/maintain/bean/response/PostDriveQueryReportResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAverageFuelConsumption()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveQueryReportResponse$Data;->averageFuelConsumption:Ljava/lang/String;

    return-object v0
.end method

.method public getAverageSpeed()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveQueryReportResponse$Data;->averageSpeed:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveQueryReportResponse$Data;->distance:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveQueryReportResponse$Data;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveQueryReportResponse$Data;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalDuration()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveQueryReportResponse$Data;->totalDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalPowerConsumption()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveQueryReportResponse$Data;->totalPowerConsumption:Ljava/lang/String;

    return-object v0
.end method

.method public setAverageFuelConsumption(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "averageFuelConsumption"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveQueryReportResponse$Data;->averageFuelConsumption:Ljava/lang/String;

    return-void
.end method

.method public setAverageSpeed(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "averageSpeed"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveQueryReportResponse$Data;->averageSpeed:Ljava/lang/String;

    return-void
.end method

.method public setDistance(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "distance"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveQueryReportResponse$Data;->distance:Ljava/lang/String;

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

    .line 47
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveQueryReportResponse$Data;->endTime:Ljava/lang/String;

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

    .line 55
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveQueryReportResponse$Data;->startTime:Ljava/lang/String;

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

    .line 63
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveQueryReportResponse$Data;->totalDuration:Ljava/lang/String;

    return-void
.end method

.method public setTotalPowerConsumption(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalPowerConsumption"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveQueryReportResponse$Data;->totalPowerConsumption:Ljava/lang/String;

    return-void
.end method
