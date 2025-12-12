.class Lcom/geely/os/audio/GlyAudioImpl$5;
.super Ljava/lang/Object;
.source "GlyAudioImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer$IHarmanSettingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/audio/GlyAudioImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/audio/GlyAudioImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/audio/GlyAudioImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl$5;->this$0:Lcom/geely/os/audio/GlyAudioImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onBandChanged$1(IILcom/geely/os/audio/IGlyHarmanSettingListener;)V
    .locals 0

    .line 138
    invoke-interface {p2, p0, p1}, Lcom/geely/os/audio/IGlyHarmanSettingListener;->onBandChanged(II)V

    return-void
.end method

.method static synthetic lambda$onHarmanSettingStateChanged$0(ILcom/geely/os/audio/IGlyHarmanSettingListener;)V
    .locals 0

    .line 132
    invoke-interface {p1, p0}, Lcom/geely/os/audio/IGlyHarmanSettingListener;->onHarmanSettingStateChanged(I)V

    return-void
.end method


# virtual methods
.method public onBandChanged(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "band",
            "level"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBandChanged band="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl$5;->this$0:Lcom/geely/os/audio/GlyAudioImpl;

    invoke-static {v0}, Lcom/geely/os/audio/GlyAudioImpl;->access$500(Lcom/geely/os/audio/GlyAudioImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$5$G9c-RaOivdtaruunO5X839aj_qI;

    invoke-direct {v1, p1, p2}, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$5$G9c-RaOivdtaruunO5X839aj_qI;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onHarmanSettingStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHarmanSettingStateChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl$5;->this$0:Lcom/geely/os/audio/GlyAudioImpl;

    invoke-static {v0}, Lcom/geely/os/audio/GlyAudioImpl;->access$500(Lcom/geely/os/audio/GlyAudioImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$5$6wqPi0x54VoY_1FsabuBFoXi9rE;

    invoke-direct {v1, p1}, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$5$6wqPi0x54VoY_1FsabuBFoXi9rE;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
