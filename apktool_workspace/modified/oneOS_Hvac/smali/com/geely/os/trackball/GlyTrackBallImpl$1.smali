.class Lcom/geely/os/trackball/GlyTrackBallImpl$1;
.super Ljava/lang/Object;
.source "GlyTrackBallImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/trackball/ITrackBall$ITrackBallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/trackball/GlyTrackBallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/trackball/GlyTrackBallImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/trackball/GlyTrackBallImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/geely/os/trackball/GlyTrackBallImpl$1;->this$0:Lcom/geely/os/trackball/GlyTrackBallImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onConnectStateChange$5(ZLcom/geely/os/trackball/IGlyTrackBallListener;)V
    .locals 0

    .line 50
    invoke-interface {p1, p0}, Lcom/geely/os/trackball/IGlyTrackBallListener;->onConnectStateChange(Z)V

    return-void
.end method

.method static synthetic lambda$onTrackBallCursorAlphaChanged$1(ILcom/geely/os/trackball/IGlyTrackBallListener;)V
    .locals 0

    .line 25
    invoke-interface {p1, p0}, Lcom/geely/os/trackball/IGlyTrackBallListener;->onTrackBallCursorAlphaChanged(I)V

    return-void
.end method

.method static synthetic lambda$onTrackBallCursorStyleChanged$2(ILcom/geely/os/trackball/IGlyTrackBallListener;)V
    .locals 0

    .line 32
    invoke-interface {p1, p0}, Lcom/geely/os/trackball/IGlyTrackBallListener;->onTrackBallCursorStyleChanged(I)V

    return-void
.end method

.method static synthetic lambda$onTrackBallMediaTypeChanged$3(ILcom/geely/os/trackball/IGlyTrackBallListener;)V
    .locals 0

    .line 38
    invoke-interface {p1, p0}, Lcom/geely/os/trackball/IGlyTrackBallListener;->onTrackBallMediaTypeChanged(I)V

    return-void
.end method

.method static synthetic lambda$onTrackBallSensitivityChanged$0(ILcom/geely/os/trackball/IGlyTrackBallListener;)V
    .locals 0

    .line 19
    invoke-interface {p1, p0}, Lcom/geely/os/trackball/IGlyTrackBallListener;->onTrackBallSensitivityChanged(I)V

    return-void
.end method

.method static synthetic lambda$onTrackBallVideoTypeChanged$4(ILcom/geely/os/trackball/IGlyTrackBallListener;)V
    .locals 0

    .line 44
    invoke-interface {p1, p0}, Lcom/geely/os/trackball/IGlyTrackBallListener;->onTrackBallVideoTypeChanged(I)V

    return-void
.end method


# virtual methods
.method public onConnectStateChange(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isConnected"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectStateChange isConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/geely/os/trackball/GlyTrackBallImpl$1;->this$0:Lcom/geely/os/trackball/GlyTrackBallImpl;

    invoke-static {v0}, Lcom/geely/os/trackball/GlyTrackBallImpl;->access$000(Lcom/geely/os/trackball/GlyTrackBallImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/trackball/-$$Lambda$GlyTrackBallImpl$1$7xw_Ta1lOfSjLiN7J-WmpYqcha0;

    invoke-direct {v1, p1}, Lcom/geely/os/trackball/-$$Lambda$GlyTrackBallImpl$1$7xw_Ta1lOfSjLiN7J-WmpYqcha0;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onTrackBallCursorAlphaChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrackBallCursorAlphaChanged style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/geely/os/trackball/GlyTrackBallImpl$1;->this$0:Lcom/geely/os/trackball/GlyTrackBallImpl;

    invoke-static {v0}, Lcom/geely/os/trackball/GlyTrackBallImpl;->access$000(Lcom/geely/os/trackball/GlyTrackBallImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/trackball/-$$Lambda$GlyTrackBallImpl$1$y9HuUyOfxt4ey6iXx7F8pEhzYMk;

    invoke-direct {v1, p1}, Lcom/geely/os/trackball/-$$Lambda$GlyTrackBallImpl$1$y9HuUyOfxt4ey6iXx7F8pEhzYMk;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onTrackBallCursorStyleChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrackBallCursorStyleChanged style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/geely/os/trackball/GlyTrackBallImpl$1;->this$0:Lcom/geely/os/trackball/GlyTrackBallImpl;

    invoke-static {v0}, Lcom/geely/os/trackball/GlyTrackBallImpl;->access$000(Lcom/geely/os/trackball/GlyTrackBallImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/trackball/-$$Lambda$GlyTrackBallImpl$1$6ALWGp_JrdruQ-FbVaecBYnyIUs;

    invoke-direct {v1, p1}, Lcom/geely/os/trackball/-$$Lambda$GlyTrackBallImpl$1$6ALWGp_JrdruQ-FbVaecBYnyIUs;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onTrackBallMediaTypeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrackBallMediaTypeChanged type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/geely/os/trackball/GlyTrackBallImpl$1;->this$0:Lcom/geely/os/trackball/GlyTrackBallImpl;

    invoke-static {v0}, Lcom/geely/os/trackball/GlyTrackBallImpl;->access$000(Lcom/geely/os/trackball/GlyTrackBallImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/trackball/-$$Lambda$GlyTrackBallImpl$1$qK-hweVVJW8GOw2YXIgGc770Tzc;

    invoke-direct {v1, p1}, Lcom/geely/os/trackball/-$$Lambda$GlyTrackBallImpl$1$qK-hweVVJW8GOw2YXIgGc770Tzc;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onTrackBallSensitivityChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrackBallSensitivityChanged alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/geely/os/trackball/GlyTrackBallImpl$1;->this$0:Lcom/geely/os/trackball/GlyTrackBallImpl;

    invoke-static {v0}, Lcom/geely/os/trackball/GlyTrackBallImpl;->access$000(Lcom/geely/os/trackball/GlyTrackBallImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/trackball/-$$Lambda$GlyTrackBallImpl$1$OMTUXfQst9B6x33RvU5_JxxL_jk;

    invoke-direct {v1, p1}, Lcom/geely/os/trackball/-$$Lambda$GlyTrackBallImpl$1$OMTUXfQst9B6x33RvU5_JxxL_jk;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onTrackBallVideoTypeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrackBallVideoTypeChanged type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/geely/os/trackball/GlyTrackBallImpl$1;->this$0:Lcom/geely/os/trackball/GlyTrackBallImpl;

    invoke-static {v0}, Lcom/geely/os/trackball/GlyTrackBallImpl;->access$000(Lcom/geely/os/trackball/GlyTrackBallImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/trackball/-$$Lambda$GlyTrackBallImpl$1$muGdDYEag4Zb2keOuP4bIfRFvWU;

    invoke-direct {v1, p1}, Lcom/geely/os/trackball/-$$Lambda$GlyTrackBallImpl$1$muGdDYEag4Zb2keOuP4bIfRFvWU;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
