.class Lcom/geely/os/audio/GlyAudioImpl$7;
.super Ljava/lang/Object;
.source "GlyAudioImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers$IExternalSpeakersVolumeListener;


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

    .line 163
    iput-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl$7;->this$0:Lcom/geely/os/audio/GlyAudioImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onSpeakersVolumeChange$0(ILcom/geely/os/audio/IGlyExternalSpeakersVolumeListener;)V
    .locals 0

    .line 167
    invoke-interface {p1, p0}, Lcom/geely/os/audio/IGlyExternalSpeakersVolumeListener;->onSpeakersVolumeChange(I)V

    return-void
.end method


# virtual methods
.method public onSpeakersVolumeChange(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSpeakersVolumeChange : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl$7;->this$0:Lcom/geely/os/audio/GlyAudioImpl;

    invoke-static {v0}, Lcom/geely/os/audio/GlyAudioImpl;->access$600(Lcom/geely/os/audio/GlyAudioImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$7$e8HCFEfHoSD5qpcASvlS4v4uL4U;

    invoke-direct {v1, p1}, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$7$e8HCFEfHoSD5qpcASvlS4v4uL4U;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
