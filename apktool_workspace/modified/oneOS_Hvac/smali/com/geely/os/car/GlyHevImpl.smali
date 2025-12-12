.class public Lcom/geely/os/car/GlyHevImpl;
.super Ljava/lang/Object;
.source "GlyHevImpl.java"

# interfaces
.implements Lcom/geely/os/car/IGlyHev;


# instance fields
.field private final car:Lcom/ecarx/xui/adaptapi/car/ICar;

.field private carConnectable:Lcom/ecarx/xui/adaptapi/binder/IConnectable;

.field connectCarWatcher:Lcom/ecarx/xui/adaptapi/binder/IConnectable$IConnectWatcher;

.field private glyTripData:Lcom/geely/os/car/GlyTripData;

.field private mChargingManager:Lcom/ecarx/xui/adaptapi/car/hev/ICharging;

.field private mHevManager:Lcom/ecarx/xui/adaptapi/car/hev/IHev;

.field private mIChargingListener:Lcom/ecarx/xui/adaptapi/car/hev/ICharging$IChargingListener;

.field private mIGlyTripInfoListener:Lcom/geely/os/car/IGlyHevCallBack;

.field private mITripData:Lcom/ecarx/xui/adaptapi/car/hev/ITripData;

.field private mOnTripUpdatedListener:Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITripInfoListener;

.field private tptfReportListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/car/IGlyTPTFReportListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->tptfReportListeners:Landroid/util/ArraySet;

    .line 27
    new-instance v0, Lcom/geely/os/car/GlyHevImpl$1;

    invoke-direct {v0, p0}, Lcom/geely/os/car/GlyHevImpl$1;-><init>(Lcom/geely/os/car/GlyHevImpl;)V

    iput-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->connectCarWatcher:Lcom/ecarx/xui/adaptapi/binder/IConnectable$IConnectWatcher;

    .line 215
    new-instance v0, Lcom/geely/os/car/GlyHevImpl$2;

    invoke-direct {v0, p0}, Lcom/geely/os/car/GlyHevImpl$2;-><init>(Lcom/geely/os/car/GlyHevImpl;)V

    iput-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->mOnTripUpdatedListener:Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITripInfoListener;

    .line 49
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/car/Car;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/car/ICar;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/car/GlyHevImpl;->car:Lcom/ecarx/xui/adaptapi/car/ICar;

    if-eqz p1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->carConnectable:Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    if-nez v0, :cond_0

    .line 52
    instance-of v0, p1, Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    if-eqz v0, :cond_0

    .line 53
    move-object v0, p1

    check-cast v0, Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    iput-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->carConnectable:Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    .line 54
    iget-object v1, p0, Lcom/geely/os/car/GlyHevImpl;->connectCarWatcher:Lcom/ecarx/xui/adaptapi/binder/IConnectable$IConnectWatcher;

    invoke-interface {v0, v1}, Lcom/ecarx/xui/adaptapi/binder/IConnectable;->registerConnectWatcher(Lcom/ecarx/xui/adaptapi/binder/IConnectable$IConnectWatcher;)V

    .line 57
    :cond_0
    invoke-interface {p1}, Lcom/ecarx/xui/adaptapi/car/ICar;->getHevManager()Lcom/ecarx/xui/adaptapi/car/hev/IHev;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/car/GlyHevImpl;->mHevManager:Lcom/ecarx/xui/adaptapi/car/hev/IHev;

    if-eqz p1, :cond_1

    .line 59
    invoke-interface {p1}, Lcom/ecarx/xui/adaptapi/car/hev/IHev;->getTripData()Lcom/ecarx/xui/adaptapi/car/hev/ITripData;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/car/GlyHevImpl;->mITripData:Lcom/ecarx/xui/adaptapi/car/hev/ITripData;

    .line 60
    iget-object p1, p0, Lcom/geely/os/car/GlyHevImpl;->mHevManager:Lcom/ecarx/xui/adaptapi/car/hev/IHev;

    invoke-interface {p1}, Lcom/ecarx/xui/adaptapi/car/hev/IHev;->getChargingManager()Lcom/ecarx/xui/adaptapi/car/hev/ICharging;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/car/GlyHevImpl;->mChargingManager:Lcom/ecarx/xui/adaptapi/car/hev/ICharging;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/geely/os/car/GlyHevImpl;)Lcom/geely/os/car/IGlyHevCallBack;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/geely/os/car/GlyHevImpl;->mIGlyTripInfoListener:Lcom/geely/os/car/IGlyHevCallBack;

    return-object p0
.end method

.method public static create(Landroid/content/Context;)Lcom/geely/os/car/IGlyHev;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 43
    new-instance v0, Lcom/geely/os/car/GlyHevImpl;

    invoke-direct {v0, p0}, Lcom/geely/os/car/GlyHevImpl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getGlyTripData()Lcom/geely/os/car/GlyTripData;
    .locals 3

    .line 451
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->glyTripData:Lcom/geely/os/car/GlyTripData;

    if-nez v0, :cond_0

    .line 452
    new-instance v0, Lcom/geely/os/car/GlyTripData;

    iget-object v1, p0, Lcom/geely/os/car/GlyHevImpl;->mITripData:Lcom/ecarx/xui/adaptapi/car/hev/ITripData;

    iget-object v2, p0, Lcom/geely/os/car/GlyHevImpl;->tptfReportListeners:Landroid/util/ArraySet;

    invoke-direct {v0, v1, v2}, Lcom/geely/os/car/GlyTripData;-><init>(Lcom/ecarx/xui/adaptapi/car/hev/ITripData;Landroid/util/ArraySet;)V

    iput-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->glyTripData:Lcom/geely/os/car/GlyTripData;

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->glyTripData:Lcom/geely/os/car/GlyTripData;

    return-object v0
.end method


# virtual methods
.method public addSuperHybridListener(Lcom/geely/os/car/IGlySuperHybridListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "superHybridListener"
        }
    .end annotation

    return-void
.end method

.method public getAirConditionPercent(I)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tripType"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->mITripData:Lcom/ecarx/xui/adaptapi/car/hev/ITripData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x3000

    .line 167
    invoke-interface {v0, p1, v2}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData;->getLatestTripInfo(II)Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITripInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v0, 0x3006

    .line 169
    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITripInfo;->getInfoValue(I)F

    move-result v1

    goto :goto_0

    :cond_1
    const-string p1, "OneVehicleSDK_GlyHevImpl"

    const-string v0, "mITripData.getLatestTripInfo == null"

    .line 171
    invoke-static {p1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method public getAverageConsumptionEn100km()[F
    .locals 4

    .line 380
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->mITripData:Lcom/ecarx/xui/adaptapi/car/hev/ITripData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [F

    return-object v0

    :cond_0
    const/4 v2, 0x2

    const/16 v3, 0x5000

    .line 383
    invoke-interface {v0, v2, v3}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData;->getLatestTripInfo(II)Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITripInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x5004

    .line 385
    invoke-interface {v0, v1}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITripInfo;->getInfoValues(I)[F

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "OneVehicleSDK_GlyHevImpl"

    const-string v2, "mITripData.getLatestTripInfo == null"

    .line 387
    invoke-static {v0, v2}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v1, [F

    return-object v0
.end method

.method public getAverageConsumptionEn50km()[F
    .locals 4

    .line 365
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->mITripData:Lcom/ecarx/xui/adaptapi/car/hev/ITripData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [F

    return-object v0

    :cond_0
    const/4 v2, 0x2

    const/16 v3, 0x5000

    .line 368
    invoke-interface {v0, v2, v3}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData;->getLatestTripInfo(II)Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITripInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x5003

    .line 370
    invoke-interface {v0, v1}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITripInfo;->getInfoValues(I)[F

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "OneVehicleSDK_GlyHevImpl"

    const-string v2, "mITripData.getLatestTripInfo == null"

    .line 372
    invoke-static {v0, v2}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v1, [F

    return-object v0
.end method

.method public getAverageConsumptionOil100km()[F
    .locals 4

    .line 350
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->mITripData:Lcom/ecarx/xui/adaptapi/car/hev/ITripData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [F

    return-object v0

    :cond_0
    const/4 v2, 0x2

    const/16 v3, 0x5000

    .line 353
    invoke-interface {v0, v2, v3}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData;->getLatestTripInfo(II)Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITripInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x5002

    .line 355
    invoke-interface {v0, v1}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITripInfo;->getInfoValues(I)[F

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "OneVehicleSDK_GlyHevImpl"

    const-string v2, "mITripData.getLatestTripInfo == null"

    .line 357
    invoke-static {v0, v2}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v1, [F

    return-object v0
.end method

.method public getAverageConsumptionOil50km()[F
    .locals 4

    .line 335
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->mITripData:Lcom/ecarx/xui/adaptapi/car/hev/ITripData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [F

    return-object v0

    :cond_0
    const/4 v2, 0x2

    const/16 v3, 0x5000

    .line 338
    invoke-interface {v0, v2, v3}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData;->getLatestTripInfo(II)Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITripInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x5001

    .line 340
    invoke-interface {v0, v1}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITripInfo;->getInfoValues(I)[F

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "OneVehicleSDK_GlyHevImpl"

    const-string v2, "mITripData.getLatestTripInfo == null"

    .line 342
    invoke-static {v0, v2}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v1, [F

    return-object v0
.end method

.method public getBatteryClimatePercent(I)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tripType"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->mITripData:Lcom/ecarx/xui/adaptapi/car/hev/ITripData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x3000

    .line 184
    invoke-interface {v0, p1, v2}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData;->getLatestTripInfo(II)Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITripInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v0, 0x3002

    .line 186
    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITripInfo;->getInfoValue(I)F

    move-result v1

    goto :goto_0

    :cond_1
    const-string p1, "OneVehicleSDK_GlyHevImpl"

    const-string v0, "mITripData.getLatestTripInfo == null"

    .line 188
    invoke-static {p1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method public getHistoricalDischargeCapacityTime()[Ljava/util/Calendar;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->mChargingManager:Lcom/ecarx/xui/adaptapi/car/hev/ICharging;

    if-eqz v0, :cond_0

    .line 288
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/car/hev/ICharging;->getHistoricalDischargeCapacityTime()[Ljava/util/Calendar;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Calendar;

    return-object v0
.end method

.method public getHistoricalDischargeCapacityValue()[Ljava/lang/Float;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->mChargingManager:Lcom/ecarx/xui/adaptapi/car/hev/ICharging;

    if-eqz v0, :cond_0

    .line 280
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/car/hev/ICharging;->getHistoricalDischargeCapacityValue()[Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Float;

    return-object v0
.end method

.method public getLastedUpdateItemFlag()I
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->mITripData:Lcom/ecarx/xui/adaptapi/car/hev/ITripData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 323
    :cond_0
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData;->getLatestAvgEnergyInfo()Lcom/ecarx/xui/adaptapi/car/hev/ITripData$IAvgEnergyInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 325
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITripInfo;->getInfoType()I

    move-result v0

    return v0

    :cond_1
    const-string v0, "OneVehicleSDK_GlyHevImpl"

    const-string v2, "mITripData.getLatestAvgEnergyInfo == null"

    .line 327
    invoke-static {v0, v2}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getPreChargingTime()[Ljava/util/Calendar;
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->mChargingManager:Lcom/ecarx/xui/adaptapi/car/hev/ICharging;

    if-eqz v0, :cond_0

    .line 208
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/car/hev/ICharging;->getPreChargingTime()[Ljava/util/Calendar;

    move-result-object v0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyHevImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPropulsionPercent(I)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tripType"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->mITripData:Lcom/ecarx/xui/adaptapi/car/hev/ITripData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x3000

    .line 149
    invoke-interface {v0, p1, v2}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData;->getLatestTripInfo(II)Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITripInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v0, 0x3001

    .line 151
    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITripInfo;->getInfoValue(I)F

    move-result v1

    goto :goto_0

    :cond_1
    const-string p1, "OneVehicleSDK_GlyHevImpl"

    const-string v0, "mITripData.getLatestTripInfo == null"

    .line 153
    invoke-static {p1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method public getTPTFReportInfo()Lcom/geely/os/car/IGlyTPTFReport;
    .locals 3

    .line 395
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->mITripData:Lcom/ecarx/xui/adaptapi/car/hev/ITripData;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData;->getTPTFReportInfo()Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;

    move-result-object v0

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTPTFReportInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyHevImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 398
    new-instance v1, Lcom/geely/os/car/GlyHevImpl$4;

    invoke-direct {v1, p0, v0}, Lcom/geely/os/car/GlyHevImpl$4;-><init>(Lcom/geely/os/car/GlyHevImpl;Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITPTFReport;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTripDistance(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tripType"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->mITripData:Lcom/ecarx/xui/adaptapi/car/hev/ITripData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x2000

    .line 81
    invoke-interface {v0, p1, v2}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData;->getLatestTripInfo(II)Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITripInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 83
    check-cast p1, Lcom/ecarx/xui/adaptapi/car/hev/ITripData$IDrivingInfo;

    invoke-interface {p1}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData$IDrivingInfo;->getTripDistance()I

    move-result v1

    goto :goto_0

    :cond_1
    const-string p1, "OneVehicleSDK_GlyHevImpl"

    const-string v0, "mITripData.getLatestTripInfo == null"

    .line 85
    invoke-static {p1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method public getTripDuration(I)J
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tripType"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->mITripData:Lcom/ecarx/xui/adaptapi/car/hev/ITripData;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0x2000

    .line 98
    invoke-interface {v0, p1, v2}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData;->getLatestTripInfo(II)Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITripInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 100
    check-cast p1, Lcom/ecarx/xui/adaptapi/car/hev/ITripData$IDrivingInfo;

    invoke-interface {p1}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData$IDrivingInfo;->getTripDistance()I

    move-result v1

    goto :goto_0

    :cond_1
    const-string p1, "OneVehicleSDK_GlyHevImpl"

    const-string v0, "mITripData.getLatestTripInfo == null"

    .line 102
    invoke-static {p1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    int-to-long v0, v1

    return-wide v0
.end method

.method public getTripEleConsumption(I)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tripType"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->mITripData:Lcom/ecarx/xui/adaptapi/car/hev/ITripData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x2000

    .line 132
    invoke-interface {v0, p1, v2}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData;->getLatestTripInfo(II)Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITripInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 134
    check-cast p1, Lcom/ecarx/xui/adaptapi/car/hev/ITripData$IDrivingInfo;

    invoke-interface {p1}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData$IDrivingInfo;->getTripEleConsumption()F

    move-result v1

    goto :goto_0

    :cond_1
    const-string p1, "OneVehicleSDK_GlyHevImpl"

    const-string v0, "mITripData.getLatestTripInfo == null"

    .line 136
    invoke-static {p1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method public getTripFuelConsumption(I)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tripType"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->mITripData:Lcom/ecarx/xui/adaptapi/car/hev/ITripData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x2000

    .line 115
    invoke-interface {v0, p1, v2}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData;->getLatestTripInfo(II)Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITripInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 117
    check-cast p1, Lcom/ecarx/xui/adaptapi/car/hev/ITripData$IDrivingInfo;

    invoke-interface {p1}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData$IDrivingInfo;->getTripFuelConsumption()F

    move-result v1

    goto :goto_0

    :cond_1
    const-string p1, "OneVehicleSDK_GlyHevImpl"

    const-string v0, "mITripData.getLatestTripInfo == null"

    .line 119
    invoke-static {p1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method public isTripDataSupported(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tripType"
        }
    .end annotation

    .line 67
    sget v0, Lcom/geely/os/car/GlySupportStatus;->error:I

    .line 68
    iget-object v1, p0, Lcom/geely/os/car/GlyHevImpl;->mITripData:Lcom/ecarx/xui/adaptapi/car/hev/ITripData;

    if-eqz v1, :cond_0

    .line 69
    invoke-interface {v1, p1}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData;->isTripDataSupported(I)Lcom/ecarx/xui/adaptapi/FunctionStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result v0

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTripDataSupported:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OneVehicleSDK_GlyHevImpl"

    invoke-static {v1, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public registerListener(Lcom/geely/os/car/IGlyChargingListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->mChargingManager:Lcom/ecarx/xui/adaptapi/car/hev/ICharging;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 298
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->mIChargingListener:Lcom/ecarx/xui/adaptapi/car/hev/ICharging$IChargingListener;

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Lcom/geely/os/car/GlyHevImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/geely/os/car/GlyHevImpl$3;-><init>(Lcom/geely/os/car/GlyHevImpl;Lcom/geely/os/car/IGlyChargingListener;)V

    iput-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->mIChargingListener:Lcom/ecarx/xui/adaptapi/car/hev/ICharging$IChargingListener;

    .line 306
    :cond_0
    iget-object p1, p0, Lcom/geely/os/car/GlyHevImpl;->mChargingManager:Lcom/ecarx/xui/adaptapi/car/hev/ICharging;

    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->mIChargingListener:Lcom/ecarx/xui/adaptapi/car/hev/ICharging$IChargingListener;

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/car/hev/ICharging;->registerListener(Lcom/ecarx/xui/adaptapi/car/hev/ICharging$IChargingListener;)V

    :cond_1
    return-void
.end method

.method public registerTPTFReportListener(Lcom/geely/os/car/IGlyTPTFReportListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerTPTFReportListener listener ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyHevImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 431
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->mITripData:Lcom/ecarx/xui/adaptapi/car/hev/ITripData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->tptfReportListeners:Landroid/util/ArraySet;

    if-eqz v0, :cond_1

    .line 432
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 433
    invoke-direct {p0}, Lcom/geely/os/car/GlyHevImpl;->getGlyTripData()Lcom/geely/os/car/GlyTripData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/os/car/GlyTripData;->registerTPTFReportListener()V

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->tptfReportListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public registerTripListener(Lcom/geely/os/car/IGlyHevCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iGlyTripInfoListener"
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lcom/geely/os/car/GlyHevImpl;->mIGlyTripInfoListener:Lcom/geely/os/car/IGlyHevCallBack;

    .line 245
    iget-object p1, p0, Lcom/geely/os/car/GlyHevImpl;->mITripData:Lcom/ecarx/xui/adaptapi/car/hev/ITripData;

    if-eqz p1, :cond_0

    .line 246
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->mOnTripUpdatedListener:Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITripInfoListener;

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData;->registerTripListener(Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITripListener;)V

    :cond_0
    return-void
.end method

.method public removeSuperHybridListener(Lcom/geely/os/car/IGlySuperHybridListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "superHybridListener"
        }
    .end annotation

    return-void
.end method

.method public requestRemoteBookChargingTime()V
    .locals 0

    return-void
.end method

.method public setBookChargingTime(Ljava/util/Calendar;Ljava/util/Calendar;III)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startTime",
            "stopTime",
            "switchStatus",
            "startPriority",
            "stopPriority"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public setPreChargingTime(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->mChargingManager:Lcom/ecarx/xui/adaptapi/car/hev/ICharging;

    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0, p1, p2}, Lcom/ecarx/xui/adaptapi/car/hev/ICharging;->setPreChargingTime(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreChargingTime start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " end:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OneVehicleSDK_GlyHevImpl"

    invoke-static {p2, p1}, Lcom/geely/os/car/GlyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public unRegisterTripListener()V
    .locals 2

    const/4 v0, 0x0

    .line 252
    iput-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->mIGlyTripInfoListener:Lcom/geely/os/car/IGlyHevCallBack;

    .line 253
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->mITripData:Lcom/ecarx/xui/adaptapi/car/hev/ITripData;

    if-eqz v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/geely/os/car/GlyHevImpl;->mOnTripUpdatedListener:Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITripInfoListener;

    invoke-interface {v0, v1}, Lcom/ecarx/xui/adaptapi/car/hev/ITripData;->unregisterTripListener(Lcom/ecarx/xui/adaptapi/car/hev/ITripData$ITripListener;)V

    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/geely/os/car/IGlyChargingListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 312
    iget-object p1, p0, Lcom/geely/os/car/GlyHevImpl;->mChargingManager:Lcom/ecarx/xui/adaptapi/car/hev/ICharging;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->mIChargingListener:Lcom/ecarx/xui/adaptapi/car/hev/ICharging$IChargingListener;

    if-eqz v0, :cond_0

    .line 313
    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/car/hev/ICharging;->unregisterListener(Lcom/ecarx/xui/adaptapi/car/hev/ICharging$IChargingListener;)V

    const/4 p1, 0x0

    .line 314
    iput-object p1, p0, Lcom/geely/os/car/GlyHevImpl;->mIChargingListener:Lcom/ecarx/xui/adaptapi/car/hev/ICharging$IChargingListener;

    :cond_0
    return-void
.end method

.method public unregisterTPTFReportListener(Lcom/geely/os/car/IGlyTPTFReportListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterTPTFReportListener listener ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyHevImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 442
    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->mITripData:Lcom/ecarx/xui/adaptapi/car/hev/ITripData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/car/GlyHevImpl;->tptfReportListeners:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 444
    iget-object p1, p0, Lcom/geely/os/car/GlyHevImpl;->tptfReportListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 445
    invoke-direct {p0}, Lcom/geely/os/car/GlyHevImpl;->getGlyTripData()Lcom/geely/os/car/GlyTripData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geely/os/car/GlyTripData;->unregisterTPTFReportListener()V

    :cond_0
    return-void
.end method
