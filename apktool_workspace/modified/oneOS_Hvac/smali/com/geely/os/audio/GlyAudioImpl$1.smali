.class Lcom/geely/os/audio/GlyAudioImpl$1;
.super Ljava/lang/Object;
.source "GlyAudioImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer$IEqualizerStateListener;


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

    .line 54
    iput-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl$1;->this$0:Lcom/geely/os/audio/GlyAudioImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onEqualizerModeChanged$1(ILcom/geely/os/audio/IGlyEqualizerStateListener;)V
    .locals 0

    .line 64
    invoke-interface {p1, p0}, Lcom/geely/os/audio/IGlyEqualizerStateListener;->onEqualizerModeChanged(I)V

    return-void
.end method

.method static synthetic lambda$onEqualizerStateChanged$0(Lcom/ecarx/xui/adaptapi/FunctionStatus;Lcom/geely/os/audio/IGlyEqualizerStateListener;)V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/geely/os/audio/IGlyEqualizerStateListener;->onEqualizerStateChanged(I)V

    return-void
.end method


# virtual methods
.method public onEqualizerModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEqualizerModeChanged mode ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl$1;->this$0:Lcom/geely/os/audio/GlyAudioImpl;

    invoke-static {v0}, Lcom/geely/os/audio/GlyAudioImpl;->access$000(Lcom/geely/os/audio/GlyAudioImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$1$3zqEJl_FdTh0HzZBW4slZMq7iXo;

    invoke-direct {v1, p1}, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$1$3zqEJl_FdTh0HzZBW4slZMq7iXo;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onEqualizerStateChanged(Lcom/ecarx/xui/adaptapi/FunctionStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "functionStatus"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEqualizerStateChanged  functionStatus ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl$1;->this$0:Lcom/geely/os/audio/GlyAudioImpl;

    invoke-static {v0}, Lcom/geely/os/audio/GlyAudioImpl;->access$000(Lcom/geely/os/audio/GlyAudioImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$1$trNQAhtwVqgoa52o355HptlwbRw;

    invoke-direct {v1, p1}, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$1$trNQAhtwVqgoa52o355HptlwbRw;-><init>(Lcom/ecarx/xui/adaptapi/FunctionStatus;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
