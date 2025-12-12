.class Lcom/geely/lib/cloud/maintain/bean/response/PostDriveHistoryDataResponse$Data;
.super Ljava/lang/Object;
.source "PostDriveHistoryDataResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/maintain/bean/response/PostDriveHistoryDataResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field private brakeSuddenlyCount:Ljava/lang/Integer;

.field private illegalLaneChangeCount:Ljava/lang/Integer;

.field private overSpeedCount:Ljava/lang/Integer;

.field private rapidAccelerationCount:Ljava/lang/Integer;

.field private sharpTurnCount:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/geely/lib/cloud/maintain/bean/response/PostDriveHistoryDataResponse;

.field private tiredDrivingCount:Ljava/lang/Integer;

.field private trackId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/geely/lib/cloud/maintain/bean/response/PostDriveHistoryDataResponse;)V
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
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveHistoryDataResponse$Data;->this$0:Lcom/geely/lib/cloud/maintain/bean/response/PostDriveHistoryDataResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBrakeSuddenlyCount()Ljava/lang/Integer;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveHistoryDataResponse$Data;->brakeSuddenlyCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIllegalLaneChangeCount()Ljava/lang/Integer;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveHistoryDataResponse$Data;->illegalLaneChangeCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOverSpeedCount()Ljava/lang/Integer;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveHistoryDataResponse$Data;->overSpeedCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRapidAccelerationCount()Ljava/lang/Integer;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveHistoryDataResponse$Data;->rapidAccelerationCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSharpTurnCount()Ljava/lang/Integer;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveHistoryDataResponse$Data;->sharpTurnCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTiredDrivingCount()Ljava/lang/Integer;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveHistoryDataResponse$Data;->tiredDrivingCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveHistoryDataResponse$Data;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public setBrakeSuddenlyCount(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brakeSuddenlyCount"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveHistoryDataResponse$Data;->brakeSuddenlyCount:Ljava/lang/Integer;

    return-void
.end method

.method public setIllegalLaneChangeCount(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "illegalLaneChangeCount"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveHistoryDataResponse$Data;->illegalLaneChangeCount:Ljava/lang/Integer;

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

    .line 39
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveHistoryDataResponse$Data;->overSpeedCount:Ljava/lang/Integer;

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

    .line 47
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveHistoryDataResponse$Data;->rapidAccelerationCount:Ljava/lang/Integer;

    return-void
.end method

.method public setSharpTurnCount(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sharpTurnCount"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveHistoryDataResponse$Data;->sharpTurnCount:Ljava/lang/Integer;

    return-void
.end method

.method public setTiredDrivingCount(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tiredDrivingCount"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveHistoryDataResponse$Data;->tiredDrivingCount:Ljava/lang/Integer;

    return-void
.end method

.method public setTrackId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trackId"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveHistoryDataResponse$Data;->trackId:Ljava/lang/String;

    return-void
.end method
