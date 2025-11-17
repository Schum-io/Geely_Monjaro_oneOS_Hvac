.class Lcom/geely/lib/cloud/maintain/bean/response/GetEnergyConsumptionTodayResponse$Data;
.super Ljava/lang/Object;
.source "GetEnergyConsumptionTodayResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/maintain/bean/response/GetEnergyConsumptionTodayResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field private averageFuelConsumption:Ljava/lang/String;

.field private currentAvgEnergyConsumption:Ljava/lang/String;

.field private currentEnergyConsumption:Ljava/lang/String;

.field private currentTotalEnergyConsumption:Ljava/lang/String;

.field final synthetic this$0:Lcom/geely/lib/cloud/maintain/bean/response/GetEnergyConsumptionTodayResponse;

.field private todayAvgEnergyConsumption:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/geely/lib/cloud/maintain/bean/response/GetEnergyConsumptionTodayResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetEnergyConsumptionTodayResponse$Data;->this$0:Lcom/geely/lib/cloud/maintain/bean/response/GetEnergyConsumptionTodayResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAverageFuelConsumption()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetEnergyConsumptionTodayResponse$Data;->averageFuelConsumption:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentAvgEnergyConsumption()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetEnergyConsumptionTodayResponse$Data;->currentAvgEnergyConsumption:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentEnergyConsumption()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetEnergyConsumptionTodayResponse$Data;->currentEnergyConsumption:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTotalEnergyConsumption()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetEnergyConsumptionTodayResponse$Data;->currentTotalEnergyConsumption:Ljava/lang/String;

    return-object v0
.end method

.method public getTodayAvgEnergyConsumption()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetEnergyConsumptionTodayResponse$Data;->todayAvgEnergyConsumption:Ljava/lang/String;

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

    .line 28
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetEnergyConsumptionTodayResponse$Data;->averageFuelConsumption:Ljava/lang/String;

    return-void
.end method

.method public setCurrentAvgEnergyConsumption(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentAvgEnergyConsumption"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetEnergyConsumptionTodayResponse$Data;->currentAvgEnergyConsumption:Ljava/lang/String;

    return-void
.end method

.method public setCurrentEnergyConsumption(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentEnergyConsumption"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetEnergyConsumptionTodayResponse$Data;->currentEnergyConsumption:Ljava/lang/String;

    return-void
.end method

.method public setCurrentTotalEnergyConsumption(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentTotalEnergyConsumption"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetEnergyConsumptionTodayResponse$Data;->currentTotalEnergyConsumption:Ljava/lang/String;

    return-void
.end method

.method public setTodayAvgEnergyConsumption(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "todayAvgEnergyConsumption"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetEnergyConsumptionTodayResponse$Data;->todayAvgEnergyConsumption:Ljava/lang/String;

    return-void
.end method
