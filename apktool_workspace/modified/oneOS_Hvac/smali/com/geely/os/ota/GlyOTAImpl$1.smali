.class Lcom/geely/os/ota/GlyOTAImpl$1;
.super Ljava/lang/Object;
.source "GlyOTAImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/ota/IOtaSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/ota/GlyOTAImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/ota/GlyOTAImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/ota/GlyOTAImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onDownloadProgressReport$8(ILcom/geely/os/ota/IGlyOtaSessionCallback;)V
    .locals 0

    .line 129
    invoke-interface {p1, p0}, Lcom/geely/os/ota/IGlyOtaSessionCallback;->onDownloadProgressReport(I)V

    return-void
.end method

.method static synthetic lambda$onDownloadResponse$6(ILcom/geely/os/ota/IGlyOtaSessionCallback;)V
    .locals 0

    .line 107
    invoke-interface {p1, p0}, Lcom/geely/os/ota/IGlyOtaSessionCallback;->onDownloadResponse(I)V

    return-void
.end method

.method static synthetic lambda$onFailed$1(ILcom/geely/os/ota/IGlyOtaSessionCallback;)V
    .locals 0

    .line 52
    invoke-interface {p1, p0}, Lcom/geely/os/ota/IGlyOtaSessionCallback;->onFailed(I)V

    return-void
.end method

.method static synthetic lambda$onInstallProgressReport$10(IIILcom/geely/os/ota/IGlyOtaSessionCallback;)V
    .locals 0

    .line 151
    invoke-interface {p3, p0, p1, p2}, Lcom/geely/os/ota/IGlyOtaSessionCallback;->onInstallProgressReport(III)V

    return-void
.end method

.method static synthetic lambda$onInstallationResponse$9(ILcom/geely/os/ota/IGlyOtaSessionCallback;)V
    .locals 0

    .line 140
    invoke-interface {p1, p0}, Lcom/geely/os/ota/IGlyOtaSessionCallback;->onInstallationResponse(I)V

    return-void
.end method

.method static synthetic lambda$onNotificationCurrentCarVersionName$11(Ljava/lang/String;Lcom/geely/os/ota/IGlyOtaSessionCallback;)V
    .locals 0

    .line 162
    invoke-interface {p1, p0}, Lcom/geely/os/ota/IGlyOtaSessionCallback;->onNotificationCurrentCarVersionName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onProgressUpdate$5(ILcom/geely/os/ota/IGlyOtaSessionCallback;)V
    .locals 0

    .line 96
    invoke-interface {p1, p0}, Lcom/geely/os/ota/IGlyOtaSessionCallback;->onProgressUpdate(I)V

    return-void
.end method

.method static synthetic lambda$onRebootingAfterOta$3(Lcom/geely/os/ota/IGlyOtaSessionCallback;)V
    .locals 0

    .line 74
    invoke-interface {p0}, Lcom/geely/os/ota/IGlyOtaSessionCallback;->onRebootingAfterOta()V

    return-void
.end method

.method static synthetic lambda$onSessionCanceled$4(Lcom/geely/os/ota/IGlyOtaSessionCallback;)V
    .locals 0

    .line 85
    invoke-interface {p0}, Lcom/geely/os/ota/IGlyOtaSessionCallback;->onSessionCanceled()V

    return-void
.end method

.method static synthetic lambda$onShouldBeginInstall$0(Lcom/geely/os/ota/IGlyOtaSessionCallback;)V
    .locals 0

    .line 41
    invoke-interface {p0}, Lcom/geely/os/ota/IGlyOtaSessionCallback;->onShouldBeginInstall()V

    return-void
.end method

.method static synthetic lambda$onSucceeded$2(Lcom/geely/os/ota/IGlyOtaSessionCallback;)V
    .locals 0

    .line 63
    invoke-interface {p0}, Lcom/geely/os/ota/IGlyOtaSessionCallback;->onSucceeded()V

    return-void
.end method

.method static synthetic lambda$onVGMStatusReport$12(ILcom/geely/os/ota/IGlyOtaSessionCallback;)V
    .locals 0

    .line 173
    invoke-interface {p1, p0}, Lcom/geely/os/ota/IGlyOtaSessionCallback;->onVGMStatusReport(I)V

    return-void
.end method

.method static synthetic lambda$requestBSSIDDisplayedVersionInfo$7(Lcom/geely/os/ota/IGlyOtaSessionCallback;)V
    .locals 0

    .line 118
    invoke-interface {p0}, Lcom/geely/os/ota/IGlyOtaSessionCallback;->requestBSSIDDisplayedVersionInfo()V

    return-void
.end method


# virtual methods
.method public onDownloadProgressReport(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyOTAImpl"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadProgressReport("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$CaURatNCc7q1gtSHVvaD8xTXn7s;

    invoke-direct {v1, p1}, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$CaURatNCc7q1gtSHVvaD8xTXn7s;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const-string p1, "sessionCallbacks.size==0"

    .line 132
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onDownloadResponse(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyOTAImpl"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadResponse("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$GADo0CIYXH3OXGgz9_SRuv61Fpg;

    invoke-direct {v1, p1}, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$GADo0CIYXH3OXGgz9_SRuv61Fpg;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const-string p1, "sessionCallbacks.size==0"

    .line 110
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onFailed(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyOTAImpl"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailed("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$4IFmxLqgx6wGrn0HZYZgWqTc2rA;

    invoke-direct {v1, p1}, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$4IFmxLqgx6wGrn0HZYZgWqTc2rA;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const-string p1, "sessionCallbacks.size==0"

    .line 55
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onInstallProgressReport(III)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "i1",
            "i2"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyOTAImpl"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInstallProgressReport("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$F56liU0P2ku3gFGCHuevVW1HwB8;

    invoke-direct {v1, p1, p2, p3}, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$F56liU0P2ku3gFGCHuevVW1HwB8;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const-string p1, "sessionCallbacks.size==0"

    .line 154
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onInstallationResponse(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyOTAImpl"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInstallationResponse("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$HRPGrwdoEOAz7yfgWHuV3nOuyb8;

    invoke-direct {v1, p1}, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$HRPGrwdoEOAz7yfgWHuV3nOuyb8;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const-string p1, "sessionCallbacks.size==0"

    .line 143
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onNotificationCurrentCarVersionName(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyOTAImpl"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotificationCurrentCarVersionName("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$tKnEH7Bi44_keWWVGrqmrWjbcXY;

    invoke-direct {v1, p1}, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$tKnEH7Bi44_keWWVGrqmrWjbcXY;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const-string p1, "sessionCallbacks.size==0"

    .line 165
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onProgressUpdate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyOTAImpl"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressUpdate("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$uUmC8-1dlkLdrC-x7UNgGb487sA;

    invoke-direct {v1, p1}, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$uUmC8-1dlkLdrC-x7UNgGb487sA;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const-string p1, "sessionCallbacks.size==0"

    .line 99
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onRebootingAfterOta()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyOTAImpl"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "onRebootingAfterOta()"

    .line 73
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    sget-object v1, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$0_NU5znFZz5lpaFWOH45-6VcwFE;->INSTANCE:Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$0_NU5znFZz5lpaFWOH45-6VcwFE;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const-string v0, "sessionCallbacks.size==0"

    .line 77
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onSessionCanceled()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyOTAImpl"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "onSessionCanceled()"

    .line 84
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    sget-object v1, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$jYEoX0Lr2PxQviLFIAItb5S2wgk;->INSTANCE:Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$jYEoX0Lr2PxQviLFIAItb5S2wgk;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const-string v0, "sessionCallbacks.size==0"

    .line 88
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onShouldBeginInstall()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyOTAImpl"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "onShouldBeginInstall()"

    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    sget-object v1, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$L9a1G1O3Jy_iYUrhPh7l54Jv9ms;->INSTANCE:Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$L9a1G1O3Jy_iYUrhPh7l54Jv9ms;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const-string v0, "sessionCallbacks.size==0"

    .line 44
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onSucceeded()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyOTAImpl"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "onSucceeded()"

    .line 62
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    sget-object v1, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$77eihVREIiqOHft4jWmra8fHBnc;->INSTANCE:Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$77eihVREIiqOHft4jWmra8fHBnc;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const-string v0, "sessionCallbacks.size==0"

    .line 66
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onVGMStatusReport(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyOTAImpl"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVGMStatusReport("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$7AzVvVZfl3-l0ZesGvzALZS745Q;

    invoke-direct {v1, p1}, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$7AzVvVZfl3-l0ZesGvzALZS745Q;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const-string p1, "sessionCallbacks.size==0"

    .line 176
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public requestBSSIDDisplayedVersionInfo()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyOTAImpl"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "requestBSSIDDisplayedVersionInfo()"

    .line 117
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl$1;->this$0:Lcom/geely/os/ota/GlyOTAImpl;

    invoke-static {v0}, Lcom/geely/os/ota/GlyOTAImpl;->access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;

    move-result-object v0

    sget-object v1, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$Mf2pq8X4G2oZX5aJFEnDWQVOQUc;->INSTANCE:Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$Mf2pq8X4G2oZX5aJFEnDWQVOQUc;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const-string v0, "sessionCallbacks.size==0"

    .line 121
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
