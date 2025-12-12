.class public Lcom/geely/lib/cloud/maintain/MaintainManager;
.super Ljava/lang/Object;
.source "MaintainManager.java"

# interfaces
.implements Lcom/geely/lib/cloud/common/ServiceBaseManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "MaintainManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/geely/lib/cloud/maintain/IMaintain;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "binder"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/MaintainManager;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {p2}, Lcom/geely/lib/cloud/maintain/IMaintain$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/maintain/IMaintain;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/MaintainManager;->mService:Lcom/geely/lib/cloud/maintain/IMaintain;

    return-void
.end method

.method private onComCall(Lcom/geely/lib/cloud/listener/OperationListener;)Lcom/geely/lib/cloud/ICloudCallback;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    .line 680
    new-instance v0, Lcom/geely/lib/cloud/maintain/MaintainManager$20;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/maintain/MaintainManager$20;-><init>(Lcom/geely/lib/cloud/maintain/MaintainManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    return-object v0
.end method


# virtual methods
.method public getCarDistributor(Ljava/lang/String;Ljava/lang/String;ILcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x10
        }
        names = {
            "longitude",
            "latitude",
            "operatorCode",
            "callback"
        }
    .end annotation

    const-string v0, "MaintainManager"

    :try_start_0
    const-string v1, "getCarDistributor"

    .line 528
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v1, p0, Lcom/geely/lib/cloud/maintain/MaintainManager;->mService:Lcom/geely/lib/cloud/maintain/IMaintain;

    if-eqz v1, :cond_0

    .line 530
    new-instance v0, Lcom/geely/lib/cloud/maintain/MaintainManager$17;

    invoke-direct {v0, p0, p4}, Lcom/geely/lib/cloud/maintain/MaintainManager$17;-><init>(Lcom/geely/lib/cloud/maintain/MaintainManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/geely/lib/cloud/maintain/IMaintain;->getCarDistributor(Ljava/lang/String;Ljava/lang/String;ILcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService is null"

    .line 546
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 549
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getCarMaintain(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    const-string v0, "MaintainManager"

    :try_start_0
    const-string v1, "getCarMaintain"

    .line 501
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v1, p0, Lcom/geely/lib/cloud/maintain/MaintainManager;->mService:Lcom/geely/lib/cloud/maintain/IMaintain;

    if-eqz v1, :cond_0

    .line 503
    new-instance v0, Lcom/geely/lib/cloud/maintain/MaintainManager$16;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/maintain/MaintainManager$16;-><init>(Lcom/geely/lib/cloud/maintain/MaintainManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/maintain/IMaintain;->getCarMaintain(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService is null"

    .line 519
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 522
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getCarRanking(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "vehicleSeries",
            "vehicleSeriesName",
            "callback"
        }
    .end annotation

    const-string v0, "MaintainManager"

    :try_start_0
    const-string v1, "getCarRanking"

    .line 555
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v1, p0, Lcom/geely/lib/cloud/maintain/MaintainManager;->mService:Lcom/geely/lib/cloud/maintain/IMaintain;

    if-eqz v1, :cond_0

    .line 557
    new-instance v0, Lcom/geely/lib/cloud/maintain/MaintainManager$18;

    invoke-direct {v0, p0, p3}, Lcom/geely/lib/cloud/maintain/MaintainManager$18;-><init>(Lcom/geely/lib/cloud/maintain/MaintainManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, p2, v0}, Lcom/geely/lib/cloud/maintain/IMaintain;->getCarRanking(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService is null"

    .line 573
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 576
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getDayAndMonthSum(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    const-string v0, "MaintainManager"

    :try_start_0
    const-string v1, "getDayAndMonthSum"

    .line 420
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v1, p0, Lcom/geely/lib/cloud/maintain/MaintainManager;->mService:Lcom/geely/lib/cloud/maintain/IMaintain;

    if-eqz v1, :cond_0

    .line 422
    new-instance v0, Lcom/geely/lib/cloud/maintain/MaintainManager$13;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/maintain/MaintainManager$13;-><init>(Lcom/geely/lib/cloud/maintain/MaintainManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/maintain/IMaintain;->getDayAndMonthSum(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService is null"

    .line 438
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 441
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getDayEnergyAvg(Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "localDate",
            "callback"
        }
    .end annotation

    const-string v0, "MaintainManager"

    :try_start_0
    const-string v1, "getDayEnergyAvg"

    .line 447
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v1, p0, Lcom/geely/lib/cloud/maintain/MaintainManager;->mService:Lcom/geely/lib/cloud/maintain/IMaintain;

    if-eqz v1, :cond_0

    .line 449
    new-instance v0, Lcom/geely/lib/cloud/maintain/MaintainManager$14;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/maintain/MaintainManager$14;-><init>(Lcom/geely/lib/cloud/maintain/MaintainManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/maintain/IMaintain;->getDayEnergyAvg(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService is null"

    .line 465
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 468
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getDayEnergySum(Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "localDate",
            "callback"
        }
    .end annotation

    const-string v0, "MaintainManager"

    const-string v1, "getDayEnergySum"

    .line 626
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/maintain/MaintainManager;->mService:Lcom/geely/lib/cloud/maintain/IMaintain;

    if-eqz v1, :cond_0

    .line 629
    invoke-direct {p0, p2}, Lcom/geely/lib/cloud/maintain/MaintainManager;->onComCall(Lcom/geely/lib/cloud/listener/OperationListener;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/maintain/IMaintain;->getDayEnergySum(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    if-eqz p2, :cond_1

    .line 632
    :try_start_1
    invoke-interface {p2, p1}, Lcom/geely/lib/cloud/listener/OperationListener;->onFail(Ljava/lang/String;)V

    .line 634
    :cond_1
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 637
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    if-eqz p2, :cond_2

    .line 639
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/geely/lib/cloud/listener/OperationListener;->onFail(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getDriveData(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "startTime",
            "endTime",
            "callback"
        }
    .end annotation

    const-string v0, "MaintainManager"

    :try_start_0
    const-string v1, "getDriveData"

    .line 132
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v1, p0, Lcom/geely/lib/cloud/maintain/MaintainManager;->mService:Lcom/geely/lib/cloud/maintain/IMaintain;

    if-eqz v1, :cond_0

    .line 134
    new-instance v0, Lcom/geely/lib/cloud/maintain/MaintainManager$4;

    invoke-direct {v0, p0, p3}, Lcom/geely/lib/cloud/maintain/MaintainManager$4;-><init>(Lcom/geely/lib/cloud/maintain/MaintainManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, p2, v0}, Lcom/geely/lib/cloud/maintain/IMaintain;->getDriveData(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService is null"

    .line 150
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 153
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getDriveHistoryData(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "startTime",
            "endTime",
            "callback"
        }
    .end annotation

    const-string v0, "MaintainManager"

    :try_start_0
    const-string v1, "getDriveHistoryData"

    .line 166
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v1, p0, Lcom/geely/lib/cloud/maintain/MaintainManager;->mService:Lcom/geely/lib/cloud/maintain/IMaintain;

    if-eqz v1, :cond_0

    .line 168
    new-instance v0, Lcom/geely/lib/cloud/maintain/MaintainManager$5;

    invoke-direct {v0, p0, p3}, Lcom/geely/lib/cloud/maintain/MaintainManager$5;-><init>(Lcom/geely/lib/cloud/maintain/MaintainManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, p2, v0}, Lcom/geely/lib/cloud/maintain/IMaintain;->getDriveHistoryData(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService is null"

    .line 184
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 187
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getDriveQueryReport(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "startTime",
            "endTime",
            "callback"
        }
    .end annotation

    const-string v0, "MaintainManager"

    :try_start_0
    const-string v1, "getDriveQueryReport"

    .line 200
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v1, p0, Lcom/geely/lib/cloud/maintain/MaintainManager;->mService:Lcom/geely/lib/cloud/maintain/IMaintain;

    if-eqz v1, :cond_0

    .line 202
    new-instance v0, Lcom/geely/lib/cloud/maintain/MaintainManager$6;

    invoke-direct {v0, p0, p3}, Lcom/geely/lib/cloud/maintain/MaintainManager$6;-><init>(Lcom/geely/lib/cloud/maintain/MaintainManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, p2, v0}, Lcom/geely/lib/cloud/maintain/IMaintain;->getDriveQueryReport(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService is null"

    .line 218
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 221
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getDriveQueryTrack(Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "trackId",
            "callback"
        }
    .end annotation

    const-string v0, "MaintainManager"

    :try_start_0
    const-string v1, "getDriveQueryTrack"

    .line 234
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v1, p0, Lcom/geely/lib/cloud/maintain/MaintainManager;->mService:Lcom/geely/lib/cloud/maintain/IMaintain;

    if-eqz v1, :cond_0

    .line 236
    new-instance v0, Lcom/geely/lib/cloud/maintain/MaintainManager$7;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/maintain/MaintainManager$7;-><init>(Lcom/geely/lib/cloud/maintain/MaintainManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/maintain/IMaintain;->getDriveQueryTrack(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService is null"

    .line 252
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 255
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getDriveSuggestion(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "MaintainManager"

    const-string v1, "getDriveSuggestion"

    .line 267
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v1, p0, Lcom/geely/lib/cloud/maintain/MaintainManager;->mService:Lcom/geely/lib/cloud/maintain/IMaintain;

    if-eqz v1, :cond_0

    .line 269
    new-instance v0, Lcom/geely/lib/cloud/maintain/MaintainManager$8;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/maintain/MaintainManager$8;-><init>(Lcom/geely/lib/cloud/maintain/MaintainManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/maintain/IMaintain;->getDriveSuggestion(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 285
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getEnergyConsumptionHistory(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "startTime",
            "endTime",
            "callback"
        }
    .end annotation

    const-string v0, "MaintainManager"

    :try_start_0
    const-string v1, "getEnergyConsumptionHistory"

    .line 298
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v1, p0, Lcom/geely/lib/cloud/maintain/MaintainManager;->mService:Lcom/geely/lib/cloud/maintain/IMaintain;

    if-eqz v1, :cond_0

    .line 300
    new-instance v0, Lcom/geely/lib/cloud/maintain/MaintainManager$9;

    invoke-direct {v0, p0, p3}, Lcom/geely/lib/cloud/maintain/MaintainManager$9;-><init>(Lcom/geely/lib/cloud/maintain/MaintainManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, p2, v0}, Lcom/geely/lib/cloud/maintain/IMaintain;->getEnergyConsumptionHistory(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService is null"

    .line 316
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 319
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getEnergyConsumptionToday(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    const-string v0, "MaintainManager"

    :try_start_0
    const-string v1, "getEnergyConsumptionToday"

    .line 332
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v1, p0, Lcom/geely/lib/cloud/maintain/MaintainManager;->mService:Lcom/geely/lib/cloud/maintain/IMaintain;

    if-eqz v1, :cond_0

    .line 334
    new-instance v0, Lcom/geely/lib/cloud/maintain/MaintainManager$10;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/maintain/MaintainManager$10;-><init>(Lcom/geely/lib/cloud/maintain/MaintainManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/maintain/IMaintain;->getEnergyConsumptionToday(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService is null"

    .line 350
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 353
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getMaintainHistory(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    const-string v0, "MaintainManager"

    :try_start_0
    const-string v1, "getMaintainHistory"

    .line 366
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v1, p0, Lcom/geely/lib/cloud/maintain/MaintainManager;->mService:Lcom/geely/lib/cloud/maintain/IMaintain;

    if-eqz v1, :cond_0

    .line 368
    new-instance v0, Lcom/geely/lib/cloud/maintain/MaintainManager$11;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/maintain/MaintainManager$11;-><init>(Lcom/geely/lib/cloud/maintain/MaintainManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/maintain/IMaintain;->getMaintainHistory(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService is null"

    .line 384
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 387
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getMaintainLastDate(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "MaintainManager"

    const-string v1, "getMaintainLastDate"

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v1, p0, Lcom/geely/lib/cloud/maintain/MaintainManager;->mService:Lcom/geely/lib/cloud/maintain/IMaintain;

    if-eqz v1, :cond_0

    .line 43
    new-instance v0, Lcom/geely/lib/cloud/maintain/MaintainManager$1;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/maintain/MaintainManager$1;-><init>(Lcom/geely/lib/cloud/maintain/MaintainManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/maintain/IMaintain;->getMaintainLastDate(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 59
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getMaintainLastMileage(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "MaintainManager"

    const-string v1, "getMaintainLastMileage"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v1, p0, Lcom/geely/lib/cloud/maintain/MaintainManager;->mService:Lcom/geely/lib/cloud/maintain/IMaintain;

    if-eqz v1, :cond_0

    .line 73
    new-instance v0, Lcom/geely/lib/cloud/maintain/MaintainManager$2;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/maintain/MaintainManager$2;-><init>(Lcom/geely/lib/cloud/maintain/MaintainManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/maintain/IMaintain;->getMaintainLastMileage(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 89
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getMaintainNextMileage(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "MaintainManager"

    const-string v1, "getMaintainNextMileage"

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lcom/geely/lib/cloud/maintain/MaintainManager;->mService:Lcom/geely/lib/cloud/maintain/IMaintain;

    if-eqz v1, :cond_0

    .line 103
    new-instance v0, Lcom/geely/lib/cloud/maintain/MaintainManager$3;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/maintain/MaintainManager$3;-><init>(Lcom/geely/lib/cloud/maintain/MaintainManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/maintain/IMaintain;->getMaintainNextMileage(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 119
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getMonthEnergyAvg(Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "localDate",
            "callback"
        }
    .end annotation

    const-string v0, "MaintainManager"

    :try_start_0
    const-string v1, "getMonthEnergyAvg"

    .line 474
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v1, p0, Lcom/geely/lib/cloud/maintain/MaintainManager;->mService:Lcom/geely/lib/cloud/maintain/IMaintain;

    if-eqz v1, :cond_0

    .line 476
    new-instance v0, Lcom/geely/lib/cloud/maintain/MaintainManager$15;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/maintain/MaintainManager$15;-><init>(Lcom/geely/lib/cloud/maintain/MaintainManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/maintain/IMaintain;->getMonthEnergyAvg(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService is null"

    .line 492
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 495
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getMonthEnergySum(Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "localDate",
            "callback"
        }
    .end annotation

    const-string v0, "MaintainManager"

    const-string v1, "getMonthEnergySum"

    .line 644
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/MaintainManager;->mService:Lcom/geely/lib/cloud/maintain/IMaintain;

    if-eqz v0, :cond_0

    .line 647
    invoke-direct {p0, p2}, Lcom/geely/lib/cloud/maintain/MaintainManager;->onComCall(Lcom/geely/lib/cloud/listener/OperationListener;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/geely/lib/cloud/maintain/IMaintain;->getMonthEnergySum(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "service is null"

    .line 650
    invoke-interface {p2, p1}, Lcom/geely/lib/cloud/listener/OperationListener;->onFail(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 654
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    if-eqz p2, :cond_1

    .line 656
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/geely/lib/cloud/listener/OperationListener;->onFail(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getMyCarInfo(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    const-string v0, "MaintainManager"

    :try_start_0
    const-string v1, "getMyCarInfo"

    .line 393
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v1, p0, Lcom/geely/lib/cloud/maintain/MaintainManager;->mService:Lcom/geely/lib/cloud/maintain/IMaintain;

    if-eqz v1, :cond_0

    .line 395
    new-instance v0, Lcom/geely/lib/cloud/maintain/MaintainManager$12;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/maintain/MaintainManager$12;-><init>(Lcom/geely/lib/cloud/maintain/MaintainManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/maintain/IMaintain;->getMyCarInfo(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "mService is null"

    .line 411
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 414
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getWeekAndMonthEnergy(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    const-string v0, "MaintainManager"

    const-string v1, "getWeekAndMonthEnergy"

    .line 608
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/maintain/MaintainManager;->mService:Lcom/geely/lib/cloud/maintain/IMaintain;

    if-eqz v1, :cond_0

    .line 611
    invoke-direct {p0, p1}, Lcom/geely/lib/cloud/maintain/MaintainManager;->onComCall(Lcom/geely/lib/cloud/listener/OperationListener;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/maintain/IMaintain;->getWeekAndMonthEnergy(Lcom/geely/lib/cloud/ICloudCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string v1, "service is null"

    if-eqz p1, :cond_1

    .line 614
    :try_start_1
    invoke-interface {p1, v1}, Lcom/geely/lib/cloud/listener/OperationListener;->onFail(Ljava/lang/String;)V

    .line 616
    :cond_1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 619
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    if-eqz p1, :cond_2

    .line 621
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/geely/lib/cloud/listener/OperationListener;->onFail(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getYearEnergyAvg(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    const-string v0, "MaintainManager"

    const-string v1, "getYearEnergyAvg"

    .line 580
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/maintain/MaintainManager;->mService:Lcom/geely/lib/cloud/maintain/IMaintain;

    if-eqz v1, :cond_0

    .line 583
    new-instance v0, Lcom/geely/lib/cloud/maintain/MaintainManager$19;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/maintain/MaintainManager$19;-><init>(Lcom/geely/lib/cloud/maintain/MaintainManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/maintain/IMaintain;->getYearEnergyAvg(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 600
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 603
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getYearEnergySum(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    const-string v0, "MaintainManager"

    const-string v1, "getYearEnergySum"

    .line 661
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/MaintainManager;->mService:Lcom/geely/lib/cloud/maintain/IMaintain;

    if-eqz v0, :cond_0

    .line 664
    invoke-direct {p0, p1}, Lcom/geely/lib/cloud/maintain/MaintainManager;->onComCall(Lcom/geely/lib/cloud/listener/OperationListener;)Lcom/geely/lib/cloud/ICloudCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/geely/lib/cloud/maintain/IMaintain;->getYearEnergySum(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "service is null"

    .line 667
    invoke-interface {p1, v0}, Lcom/geely/lib/cloud/listener/OperationListener;->onFail(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 671
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    if-eqz p1, :cond_1

    .line 673
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/geely/lib/cloud/listener/OperationListener;->onFail(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setService(Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binder"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 29
    invoke-static {p1}, Lcom/geely/lib/cloud/maintain/IMaintain$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/maintain/IMaintain;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/MaintainManager;->mService:Lcom/geely/lib/cloud/maintain/IMaintain;

    :cond_0
    return-void
.end method
