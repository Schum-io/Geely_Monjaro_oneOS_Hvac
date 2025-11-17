.class Lcom/geely/os/ota/GlyOTAImpl$2;
.super Ljava/lang/Object;
.source "GlyOTAImpl.java"

# interfaces
.implements Lcom/geely/os/ota/IGlyOtaSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/ota/GlyOTAImpl;->getOtaSession(Lcom/ecarx/xui/adaptapi/ota/IOtaSession;)Lcom/geely/os/ota/IGlyOtaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/ota/GlyOTAImpl;

.field final synthetic val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;


# direct methods
.method constructor <init>(Lcom/geely/os/ota/GlyOTAImpl;Lcom/ecarx/xui/adaptapi/ota/IOtaSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$session"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    iput-object p2, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->cancel()Z

    move-result v0

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession cancel()  result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public cancelOtaUpgradeTime()Z
    .locals 3

    .line 341
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->cancelOtaUpgradeTime()Z

    move-result v0

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession cancelOtaUpgradeTime()  result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public changeSlot()V
    .locals 2

    const-string v0, "OneVehicleSDK_GlyOTAImpl"

    const-string v1, "IGlyOtaSession changeSlot()"

    .line 560
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->changeSlot()V

    return-void
.end method

.method public checkConnectivityStatus()V
    .locals 2

    const-string v0, "OneVehicleSDK_GlyOTAImpl"

    const-string v1, "IGlyOtaSession checkConnectivityStatus() "

    .line 431
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->checkConnectivityStatus()V

    return-void
.end method

.method public checkSceneModeAlive()Z
    .locals 3

    .line 455
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->checkSceneModeAlive()Z

    move-result v0

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession checkSceneModeAlive() result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public checkUpdate()Z
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->checkUpdate()Z

    move-result v0

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession checkUpdate()  result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public couldBeginInstallRightNow()Z
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->couldBeginInstallRightNow()Z

    move-result v0

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession couldBeginInstallRightNow()  result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public download()Z
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->download()Z

    move-result v0

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession download()  result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public download(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uuid"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->download(Ljava/lang/String;)Z

    move-result v0

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession download("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")  result = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getCurrentCarVersionName()Ljava/lang/String;
    .locals 3

    .line 463
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->getCurrentCarVersionName()Ljava/lang/String;

    move-result-object v0

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession getCurrentCarVersionName() result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getDownloadUrls()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->getDownloadUrls()Ljava/util/List;

    move-result-object v0

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession getDownloadUrls() result = "

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

.method public getEstimatedInstallationTime()I
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->getEstimatedInstallationTime()I

    move-result v0

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession getEstimatedInstallationTime()  result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getFileNames()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->getFileNames()Ljava/util/List;

    move-result-object v0

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession getFileNames() result = "

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

.method public getInstallationtimes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->getInstallationtimes()Ljava/util/List;

    move-result-object v0

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession getInstallationtimes() result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->getInstallationtimes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOtaAutoDownload()Z
    .locals 3

    .line 502
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->getOtaAutoDownload()Z

    move-result v0

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession getOtaAutoDownload() result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getOtaAutoInstallation()Z
    .locals 3

    .line 509
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->getOtaAutoInstallation()Z

    move-result v0

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession getOtaAutoInstallation() result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getOtaAutoSync()Z
    .locals 3

    .line 495
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->getOtaAutoSync()Z

    move-result v0

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession getOtaAutoSync() result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getOtaBaseSysVersionCode()I
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->getOtaBaseSysVersionCode()I

    move-result v0

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession getOtaBaseSysVersionCode()  result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getOtaBaseSysVersionName()Ljava/lang/String;
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->getOtaBaseSysVersionName()Ljava/lang/String;

    move-result-object v0

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession getOtaBaseSysVersionName()  result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getOtaMode()I
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->getOtaMode()I

    move-result v0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession getOtaMode()  otaMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getOtaPriority()I
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->getOtaPriority()I

    move-result v0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession getOtaPriority()  result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getOtaProgress()I
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->getOtaProgress()I

    move-result v0

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession getOtaProgress()  result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getOtaSetting()Z
    .locals 3

    .line 488
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->getOtaSetting()Z

    move-result v0

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession getOtaSetting() result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getOtaType()I
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->getOtaType()I

    move-result v0

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession getOtaMode()  otaType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getOtaUpdateInProgressState()I
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->getOtaUpdateInProgressState()I

    move-result v0

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession getOtaUpdateInProgressState() result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getOtaUpdateTime()Ljava/util/Calendar;
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->getOtaUpdateTime()Ljava/util/Calendar;

    move-result-object v0

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession getOtaUpdateTime()  result = "

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
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->getSignatureCertificate()Ljava/lang/String;

    move-result-object v0

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession getSignatureCertificate() result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getSoftwareSignature()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->getSoftwareSignature()Ljava/util/List;

    move-result-object v0

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession getSoftwareSignature() result = "

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

.method public getSysBssId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getSysVersionCode()I
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->getSysVersionCode()I

    move-result v0

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession getSysVersionCode()  result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getSysVersionName()Ljava/lang/String;
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->getSysVersionName()Ljava/lang/String;

    move-result-object v0

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession getSysVersionName()  result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getTotalSize()I
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->getTotalSize()I

    move-result v0

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession getTotalSize() result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 3

    .line 389
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->getUUID()Ljava/lang/String;

    move-result-object v0

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession getUUID() result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getUpgradeInfo()Ljava/lang/String;
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->getUpgradeInfo()Ljava/lang/String;

    move-result-object v0

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession getUpgradeInfo()  result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public ifSystemWillRebootAfterOta()Z
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->ifSystemWillRebootAfterOta()Z

    move-result v0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession ifSystemWillRebootAfterOta()  result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isInstallationStarted()Z
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->isInstallationStarted()Z

    move-result v0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession isInstallationStarted()  result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isPopupEnable()Z
    .locals 3

    .line 369
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->isPopupEnable()Z

    move-result v0

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession isPopupEnable() result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isRecoveryOta()Z
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->isRecoveryOta()Z

    move-result v0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession isRecoveryOta()  result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public reportDownloadFailedName(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileName"
        }
    .end annotation

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IGlyOtaSession reportDownloadFailedName("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->reportDownloadFailedName(Ljava/lang/String;)V

    return-void
.end method

.method public requestOtaUpdateTime()V
    .locals 2

    const-string v0, "OneVehicleSDK_GlyOTAImpl"

    const-string v1, "IGlyOtaSession requestOtaUpdateTime()"

    .line 475
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->requestOtaUpdateTime()V

    return-void
.end method

.method public sendBSSIDDisplayedVersionInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bssid",
            "displayedVersion"
        }
    .end annotation

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IGlyOtaSession sendBSSIDDisplayedVersionInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0, p1, p2}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->sendBSSIDDisplayedVersionInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendUserDownloadCancel()V
    .locals 2

    const-string v0, "OneVehicleSDK_GlyOTAImpl"

    const-string v1, "IGlyOtaSession sendUserDownloadCancel()"

    .line 523
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->sendUserDownloadCancel()V

    return-void
.end method

.method public sendUserDownloadRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "msg",
            "key_auth",
            "url"
        }
    .end annotation

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IGlyOtaSession setOtaUserSettings("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0, p1, p2, p3}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->sendUserDownloadRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendUserDownloadResume()V
    .locals 2

    const-string v0, "OneVehicleSDK_GlyOTAImpl"

    const-string v1, "IGlyOtaSession sendUserDownloadResume()"

    .line 535
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->sendUserDownloadResume()V

    return-void
.end method

.method public sendUserDownloadSuspend()V
    .locals 2

    const-string v0, "OneVehicleSDK_GlyOTAImpl"

    const-string v1, "IGlyOtaSession sendUserDownloadSuspend()"

    .line 529
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->sendUserDownloadSuspend()V

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
            "Lcom/geely/os/ota/DecryptionKeyType;",
            ">;)V"
        }
    .end annotation

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendVbfDecryptionKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 543
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/os/ota/DecryptionKeyType;

    .line 544
    new-instance v2, Lcom/ecarx/xui/adaptapi/ota/OTA$DecryptionKeyType;

    iget-object v3, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v3}, Lcom/geely/os/ota/GlyOTAImpl;->access$100(Lcom/geely/os/ota/GlyOTAImpl;)Lcom/ecarx/xui/adaptapi/ota/OTA;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v2, v3}, Lcom/ecarx/xui/adaptapi/ota/OTA$DecryptionKeyType;-><init>(Lcom/ecarx/xui/adaptapi/ota/OTA;)V

    .line 545
    invoke-virtual {v1}, Lcom/geely/os/ota/DecryptionKeyType;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ecarx/xui/adaptapi/ota/OTA$DecryptionKeyType;->setKey(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v1}, Lcom/geely/os/ota/DecryptionKeyType;->getHashRoot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ecarx/xui/adaptapi/ota/OTA$DecryptionKeyType;->setHashRoot(Ljava/lang/String;)V

    .line 547
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 549
    :cond_0
    iget-object p1, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->sendVbfDecryptionKey(Ljava/util/List;)V

    return-void
.end method

.method public setInstallRegretState(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IGlyOtaSession setInstallRegretState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->setInstallRegretState(I)V

    return-void
.end method

.method public setOTADownloadSize(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IGlyOtaSession setOTADownloadSize("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->setOTADownloadSize(I)V

    return-void
.end method

.method public setOTADownloadStatus(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "status",
            "reason"
        }
    .end annotation

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IGlyOtaSession setOTADownloadStatus("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0, p1, p2}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->setOTADownloadStatus(II)V

    return-void
.end method

.method public setOtaUpdateTime(Ljava/util/Calendar;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "calendar"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->setOtaUpdateTime(Ljava/util/Calendar;)Z

    move-result v0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession getOtaBaseSysVersionName("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")  result = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setOtaUserSettings(ZZZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "otaSetting",
            "autoSync",
            "autoDownload",
            "autoInstall"
        }
    .end annotation

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IGlyOtaSession setOtaUserSettings("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->setOtaUserSettings(ZZZZ)V

    return-void
.end method

.method public setPowerState(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$2;->val$session:Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/ota/IOtaSession;->setPowerState(I)Z

    move-result v0

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IGlyOtaSession setPowerState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")  result = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
