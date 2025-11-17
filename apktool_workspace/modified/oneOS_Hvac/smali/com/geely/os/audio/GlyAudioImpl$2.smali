.class Lcom/geely/os/audio/GlyAudioImpl$2;
.super Ljava/lang/Object;
.source "GlyAudioImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation$ICompensationSettingListener;


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

    .line 69
    iput-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl$2;->this$0:Lcom/geely/os/audio/GlyAudioImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCompensationSettingStateChanged$0(ILcom/geely/os/audio/IGlyCompensationSettingListener;)V
    .locals 0

    .line 73
    invoke-interface {p1, p0}, Lcom/geely/os/audio/IGlyCompensationSettingListener;->onCompensationSettingStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$onEffectEnhanceModeChanged$1(ILcom/geely/os/audio/IGlyCompensationSettingListener;)V
    .locals 0

    .line 79
    invoke-interface {p1, p0}, Lcom/geely/os/audio/IGlyCompensationSettingListener;->onEffectEnhanceModeChanged(I)V

    return-void
.end method

.method static synthetic lambda$onLevelOfSpeedVolumeChanged$2(ILcom/geely/os/audio/IGlyCompensationSettingListener;)V
    .locals 0

    .line 85
    invoke-interface {p1, p0}, Lcom/geely/os/audio/IGlyCompensationSettingListener;->onLevelOfSpeedVolumeChanged(I)V

    return-void
.end method


# virtual methods
.method public onCompensationSettingStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCompensationSettingStateChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl$2;->this$0:Lcom/geely/os/audio/GlyAudioImpl;

    invoke-static {v0}, Lcom/geely/os/audio/GlyAudioImpl;->access$100(Lcom/geely/os/audio/GlyAudioImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$2$z3FKD8JkK6MVELs2gv5jHa1Nljk;

    invoke-direct {v1, p1}, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$2$z3FKD8JkK6MVELs2gv5jHa1Nljk;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onEffectEnhanceModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEffectEnhanceModeChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl$2;->this$0:Lcom/geely/os/audio/GlyAudioImpl;

    invoke-static {v0}, Lcom/geely/os/audio/GlyAudioImpl;->access$100(Lcom/geely/os/audio/GlyAudioImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$2$UyxrukcLrdYm1fXfbwswNbXRkMs;

    invoke-direct {v1, p1}, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$2$UyxrukcLrdYm1fXfbwswNbXRkMs;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onLevelOfSpeedVolumeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLevelOfSpeedVolumeChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl$2;->this$0:Lcom/geely/os/audio/GlyAudioImpl;

    invoke-static {v0}, Lcom/geely/os/audio/GlyAudioImpl;->access$100(Lcom/geely/os/audio/GlyAudioImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$2$10HH3CSDa0pE9pvrSPDM69Iq7ds;

    invoke-direct {v1, p1}, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$2$10HH3CSDa0pE9pvrSPDM69Iq7ds;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
