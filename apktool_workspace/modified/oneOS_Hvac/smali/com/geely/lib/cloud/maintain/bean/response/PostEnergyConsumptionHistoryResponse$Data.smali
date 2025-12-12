.class Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse$Data;
.super Ljava/lang/Object;
.source "PostEnergyConsumptionHistoryResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field private dailyEnergyConsumptionVos:Lcom/geely/lib/cloud/maintain/bean/DailyEnergyConsumptionVos;

.field private endDate:Ljava/lang/String;

.field private oilConsumption:Ljava/lang/String;

.field private powerConsumption:Ljava/lang/String;

.field private startDate:Ljava/lang/String;

.field final synthetic this$0:Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse;

.field private timeConsumption:Ljava/lang/String;

.field private totalDistance:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse$Data;->this$0:Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDailyEnergyConsumptionVos()Lcom/geely/lib/cloud/maintain/bean/DailyEnergyConsumptionVos;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse$Data;->dailyEnergyConsumptionVos:Lcom/geely/lib/cloud/maintain/bean/DailyEnergyConsumptionVos;

    return-object v0
.end method

.method public getEndDate()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse$Data;->endDate:Ljava/lang/String;

    return-object v0
.end method

.method public getOilConsumption()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse$Data;->oilConsumption:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerConsumption()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse$Data;->powerConsumption:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse$Data;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeConsumption()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse$Data;->timeConsumption:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalDistance()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse$Data;->totalDistance:Ljava/lang/String;

    return-object v0
.end method

.method public setDailyEnergyConsumptionVos(Lcom/geely/lib/cloud/maintain/bean/DailyEnergyConsumptionVos;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dailyEnergyConsumptionVos"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse$Data;->dailyEnergyConsumptionVos:Lcom/geely/lib/cloud/maintain/bean/DailyEnergyConsumptionVos;

    return-void
.end method

.method public setEndDate(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endDate"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse$Data;->endDate:Ljava/lang/String;

    return-void
.end method

.method public setOilConsumption(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oilConsumption"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse$Data;->oilConsumption:Ljava/lang/String;

    return-void
.end method

.method public setPowerConsumption(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "powerConsumption"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse$Data;->powerConsumption:Ljava/lang/String;

    return-void
.end method

.method public setStartDate(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startDate"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse$Data;->startDate:Ljava/lang/String;

    return-void
.end method

.method public setTimeConsumption(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeConsumption"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse$Data;->timeConsumption:Ljava/lang/String;

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

    .line 72
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse$Data;->totalDistance:Ljava/lang/String;

    return-void
.end method
