.class Lcom/geely/os/audio/GlyAudioImpl$3;
.super Landroid/car/media/CarAudioManager$CarVolumeCallback;
.source "GlyAudioImpl.java"


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

    .line 90
    iput-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl$3;->this$0:Lcom/geely/os/audio/GlyAudioImpl;

    invoke-direct {p0}, Landroid/car/media/CarAudioManager$CarVolumeCallback;-><init>()V

    return-void
.end method

.method static synthetic lambda$onGroupVolumeChanged$0([Ljava/lang/String;Lcom/geely/os/audio/IGlyAudioCallback;)V
    .locals 0

    .line 97
    invoke-interface {p1, p0}, Lcom/geely/os/audio/IGlyAudioCallback;->onGroupVolumeChanged([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onGroupVolumeChanged(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "zoneId",
            "groupId",
            "flags"
        }
    .end annotation

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onGroupVolumeChanged groupId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", flags = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {p3, p1}, Lcom/geely/os/car/GlyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl$3;->this$0:Lcom/geely/os/audio/GlyAudioImpl;

    invoke-static {p1, p2}, Lcom/geely/os/audio/GlyAudioImpl;->access$200(Lcom/geely/os/audio/GlyAudioImpl;I)[Ljava/lang/String;

    move-result-object p1

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onGroupVolumeChanged getUsageByGroupId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/geely/os/car/GlyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    array-length p2, p1

    if-lez p2, :cond_0

    .line 97
    iget-object p2, p0, Lcom/geely/os/audio/GlyAudioImpl$3;->this$0:Lcom/geely/os/audio/GlyAudioImpl;

    invoke-static {p2}, Lcom/geely/os/audio/GlyAudioImpl;->access$300(Lcom/geely/os/audio/GlyAudioImpl;)Landroid/util/ArraySet;

    move-result-object p2

    new-instance p3, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$3$bQIAbr-NhJPQkqVf9wbYIvNOvkY;

    invoke-direct {p3, p1}, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$3$bQIAbr-NhJPQkqVf9wbYIvNOvkY;-><init>([Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public onMasterMuteChanged(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "zoneId",
            "flags"
        }
    .end annotation

    .line 103
    invoke-super {p0, p1, p2}, Landroid/car/media/CarAudioManager$CarVolumeCallback;->onMasterMuteChanged(II)V

    return-void
.end method
