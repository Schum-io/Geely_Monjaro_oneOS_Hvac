.class public Lcom/geely/lib/cloud/maintain/bean/DailyEnergyConsumptionVos;
.super Ljava/lang/Object;
.source "DailyEnergyConsumptionVos.java"


# instance fields
.field private averageOilConsumption:Ljava/lang/String;

.field private averagePowerConsumption:Ljava/lang/String;

.field private queryDate:Ljava/lang/String;

.field private totalDistance:Ljava/lang/String;

.field private totalTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAverageOilConsumption()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/DailyEnergyConsumptionVos;->averageOilConsumption:Ljava/lang/String;

    return-object v0
.end method

.method public getAveragePowerConsumption()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/DailyEnergyConsumptionVos;->averagePowerConsumption:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryDate()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/DailyEnergyConsumptionVos;->queryDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalDistance()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/DailyEnergyConsumptionVos;->totalDistance:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTime()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/DailyEnergyConsumptionVos;->totalTime:Ljava/lang/String;

    return-object v0
.end method

.method public setAverageOilConsumption(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "averageOilConsumption"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/DailyEnergyConsumptionVos;->averageOilConsumption:Ljava/lang/String;

    return-void
.end method

.method public setAveragePowerConsumption(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "averagePowerConsumption"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/DailyEnergyConsumptionVos;->averagePowerConsumption:Ljava/lang/String;

    return-void
.end method

.method public setQueryDate(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "queryDate"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/DailyEnergyConsumptionVos;->queryDate:Ljava/lang/String;

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

    .line 39
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/DailyEnergyConsumptionVos;->totalDistance:Ljava/lang/String;

    return-void
.end method

.method public setTotalTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalTime"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/DailyEnergyConsumptionVos;->totalTime:Ljava/lang/String;

    return-void
.end method
