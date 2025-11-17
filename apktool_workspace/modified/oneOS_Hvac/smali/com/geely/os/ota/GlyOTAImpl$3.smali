.class Lcom/geely/os/ota/GlyOTAImpl$3;
.super Ljava/lang/Object;
.source "GlyOTAImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/ota/IOtaSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/ota/GlyOTAImpl;->installPackage(Lcom/geely/os/ota/IGlyOtaSession;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/ota/GlyOTAImpl;

.field final synthetic val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;


# direct methods
.method constructor <init>(Lcom/geely/os/ota/GlyOTAImpl;Lcom/geely/os/ota/IGlyOtaSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$otaSession"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 628
    iput-object p1, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    iput-object p2, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->cancel()Z

    move-result v0

    return v0
.end method

.method public cancelOtaUpgradeTime()Z
    .locals 1

    .line 744
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->cancelOtaUpgradeTime()Z

    move-result v0

    return v0
.end method

.method public changeSlot()V
    .locals 1

    .line 907
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->changeSlot()V

    return-void
.end method

.method public checkConnectivityStatus()V
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->checkConnectivityStatus()V

    return-void
.end method

.method public checkSceneModeAlive()Z
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->checkSceneModeAlive()Z

    move-result v0

    return v0
.end method

.method public checkUpdate()Z
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->checkUpdate()Z

    move-result v0

    return v0
.end method

.method public couldBeginInstallRightNow()Z
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->couldBeginInstallRightNow()Z

    move-result v0

    return v0
.end method

.method public download()Z
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->download()Z

    move-result v0

    return v0
.end method

.method public download(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 865
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0, p1}, Lcom/geely/os/ota/IGlyOtaSession;->download(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getCurrentCarVersionName()Ljava/lang/String;
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->getCurrentCarVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 805
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->getDownloadUrls()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEstimatedInstallationTime()I
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->getEstimatedInstallationTime()I

    move-result v0

    return v0
.end method

.method public getFileNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 787
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->getFileNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstallationtimes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->getInstallationtimes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOtaAutoDownload()Z
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->getOtaAutoDownload()Z

    move-result v0

    return v0
.end method

.method public getOtaAutoInstallation()Z
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->getOtaAutoInstallation()Z

    move-result v0

    return v0
.end method

.method public getOtaAutoSync()Z
    .locals 1

    .line 850
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->getOtaAutoSync()Z

    move-result v0

    return v0
.end method

.method public getOtaBaseSysVersionCode()I
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->getOtaBaseSysVersionCode()I

    move-result v0

    return v0
.end method

.method public getOtaBaseSysVersionName()Ljava/lang/String;
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->getOtaBaseSysVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->getOtaBaseSysVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getOtaMode()I
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->getOtaMode()I

    move-result v0

    return v0
.end method

.method public getOtaPriority()I
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->getOtaPriority()I

    move-result v0

    return v0
.end method

.method public getOtaProgress()I
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->getOtaProgress()I

    move-result v0

    return v0
.end method

.method public getOtaSetting()Z
    .locals 1

    .line 845
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->getOtaSetting()Z

    move-result v0

    return v0
.end method

.method public getOtaType()I
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->getOtaType()I

    move-result v0

    return v0
.end method

.method public getOtaUpdateInProgressState()I
    .locals 1

    .line 762
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->getOtaUpdateInProgressState()I

    move-result v0

    return v0
.end method

.method public getOtaUpdateTime()Ljava/util/Calendar;
    .locals 3

    .line 727
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->getOtaUpdateTime()Ljava/util/Calendar;

    move-result-object v0

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOtaUpdateTime() result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getSignatureCertificate()Ljava/lang/String;
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->getSignatureCertificate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->getSignatureCertificate()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSoftwareSignature()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 792
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->getSoftwareSignature()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSysBssId()Ljava/lang/String;
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->getSysBssId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSysVersionCode()I
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->getSysVersionCode()I

    move-result v0

    return v0
.end method

.method public getSysVersionName()Ljava/lang/String;
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->getSysVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->getSysVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getTotalSize()I
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->getTotalSize()I

    move-result v0

    return v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->getUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpgradeInfo()Ljava/lang/String;
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->getUpgradeInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->getUpgradeInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public ifSystemWillRebootAfterOta()Z
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->ifSystemWillRebootAfterOta()Z

    move-result v0

    return v0
.end method

.method public isInstallationStarted()Z
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->isInstallationStarted()Z

    move-result v0

    return v0
.end method

.method public isPopupEnable()Z
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->isPopupEnable()Z

    move-result v0

    return v0
.end method

.method public isRecoveryOta()Z
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->isRecoveryOta()Z

    move-result v0

    return v0
.end method

.method public reportDownloadFailedName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 830
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0, p1}, Lcom/geely/os/ota/IGlyOtaSession;->reportDownloadFailedName(Ljava/lang/String;)V

    return-void
.end method

.method public requestCurrentCarVersionName()V
    .locals 2

    const-string v0, "OneVehicleSDK_GlyOTAImpl"

    const-string v1, "no requestCurrentCarVersionName()"

    .line 912
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestOtaUpdateTime()V
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->requestOtaUpdateTime()V

    return-void
.end method

.method public sendBSSIDDisplayedVersionInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "s1"
        }
    .end annotation

    .line 902
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0, p1, p2}, Lcom/geely/os/ota/IGlyOtaSession;->sendBSSIDDisplayedVersionInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendUserDownloadCancel()V
    .locals 1

    .line 875
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->sendUserDownloadCancel()V

    return-void
.end method

.method public sendUserDownloadRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "s1",
            "s2"
        }
    .end annotation

    .line 870
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0, p1, p2, p3}, Lcom/geely/os/ota/IGlyOtaSession;->sendUserDownloadRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendUserDownloadResume()V
    .locals 1

    .line 885
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->sendUserDownloadResume()V

    return-void
.end method

.method public sendUserDownloadSuspend()V
    .locals 1

    .line 880
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0}, Lcom/geely/os/ota/IGlyOtaSession;->sendUserDownloadSuspend()V

    return-void
.end method

.method public sendVbfDecryptionKey(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ecarx/xui/adaptapi/ota/OTA$DecryptionKeyType;",
            ">;)V"
        }
    .end annotation

    .line 890
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 891
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/xui/adaptapi/ota/OTA$DecryptionKeyType;

    .line 892
    new-instance v2, Lcom/geely/os/ota/DecryptionKeyType;

    invoke-direct {v2}, Lcom/geely/os/ota/DecryptionKeyType;-><init>()V

    .line 893
    invoke-virtual {v1}, Lcom/ecarx/xui/adaptapi/ota/OTA$DecryptionKeyType;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/geely/os/ota/DecryptionKeyType;->setKey(Ljava/lang/String;)V

    .line 894
    invoke-virtual {v1}, Lcom/ecarx/xui/adaptapi/ota/OTA$DecryptionKeyType;->getHashRoot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/geely/os/ota/DecryptionKeyType;->setHashRoot(Ljava/lang/String;)V

    .line 895
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 897
    :cond_0
    iget-object p1, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {p1, v0}, Lcom/geely/os/ota/IGlyOtaSession;->sendVbfDecryptionKey(Ljava/util/List;)V

    return-void
.end method

.method public setInstallRegretState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 772
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0, p1}, Lcom/geely/os/ota/IGlyOtaSession;->setInstallRegretState(I)V

    return-void
.end method

.method public setOTADownloadSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 825
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0, p1}, Lcom/geely/os/ota/IGlyOtaSession;->setOTADownloadSize(I)V

    return-void
.end method

.method public setOTADownloadStatus(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "i1"
        }
    .end annotation

    .line 820
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0, p1, p2}, Lcom/geely/os/ota/IGlyOtaSession;->setOTADownloadStatus(II)V

    return-void
.end method

.method public setOtaUpdateTime(Ljava/util/Calendar;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "calendar"
        }
    .end annotation

    .line 722
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0, p1}, Lcom/geely/os/ota/IGlyOtaSession;->setOtaUpdateTime(Ljava/util/Calendar;)Z

    move-result p1

    return p1
.end method

.method public setOtaUserSettings(ZZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "b",
            "b1",
            "b2",
            "b3"
        }
    .end annotation

    .line 840
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/geely/os/ota/IGlyOtaSession;->setOtaUserSettings(ZZZZ)V

    return-void
.end method

.method public setPowerState(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$3;->val$otaSession:Lcom/geely/os/ota/IGlyOtaSession;

    invoke-interface {v0, p1}, Lcom/geely/os/ota/IGlyOtaSession;->setPowerState(I)Z

    move-result p1

    return p1
.end method
