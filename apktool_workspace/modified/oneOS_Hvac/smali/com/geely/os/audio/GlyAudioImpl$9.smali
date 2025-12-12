.class Lcom/geely/os/audio/GlyAudioImpl$9;
.super Ljava/lang/Object;
.source "GlyAudioImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/audio/GlyAudioImpl;-><init>(Landroid/content/Context;)V
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

    .line 208
    iput-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl$9;->this$0:Lcom/geely/os/audio/GlyAudioImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "service"
        }
    .end annotation

    .line 213
    :try_start_0
    iget-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl$9;->this$0:Lcom/geely/os/audio/GlyAudioImpl;

    invoke-static {p1}, Lcom/geely/os/audio/GlyAudioImpl;->access$900(Lcom/geely/os/audio/GlyAudioImpl;)Landroid/car/Car;

    move-result-object p2

    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/car/media/CarAudioManager;

    invoke-static {p1, p2}, Lcom/geely/os/audio/GlyAudioImpl;->access$802(Lcom/geely/os/audio/GlyAudioImpl;Landroid/car/media/CarAudioManager;)Landroid/car/media/CarAudioManager;

    .line 214
    iget-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl$9;->this$0:Lcom/geely/os/audio/GlyAudioImpl;

    invoke-static {p1}, Lcom/geely/os/audio/GlyAudioImpl;->access$800(Lcom/geely/os/audio/GlyAudioImpl;)Landroid/car/media/CarAudioManager;

    move-result-object p1

    iget-object p2, p0, Lcom/geely/os/audio/GlyAudioImpl$9;->this$0:Lcom/geely/os/audio/GlyAudioImpl;

    iget-object p2, p2, Lcom/geely/os/audio/GlyAudioImpl;->carVolumeCallback:Landroid/car/media/CarAudioManager$CarVolumeCallback;

    invoke-virtual {p1, p2}, Landroid/car/media/CarAudioManager;->registerCarVolumeCallback(Landroid/car/media/CarAudioManager$CarVolumeCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 216
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "car service is connected : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {p2, p1}, Lcom/geely/os/car/GlyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl$9;->this$0:Lcom/geely/os/audio/GlyAudioImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/geely/os/audio/GlyAudioImpl;->access$802(Lcom/geely/os/audio/GlyAudioImpl;Landroid/car/media/CarAudioManager;)Landroid/car/media/CarAudioManager;

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 224
    :try_start_0
    iget-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl$9;->this$0:Lcom/geely/os/audio/GlyAudioImpl;

    invoke-static {p1}, Lcom/geely/os/audio/GlyAudioImpl;->access$800(Lcom/geely/os/audio/GlyAudioImpl;)Landroid/car/media/CarAudioManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 225
    iget-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl$9;->this$0:Lcom/geely/os/audio/GlyAudioImpl;

    invoke-static {p1}, Lcom/geely/os/audio/GlyAudioImpl;->access$800(Lcom/geely/os/audio/GlyAudioImpl;)Landroid/car/media/CarAudioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl$9;->this$0:Lcom/geely/os/audio/GlyAudioImpl;

    iget-object v0, v0, Lcom/geely/os/audio/GlyAudioImpl;->carVolumeCallback:Landroid/car/media/CarAudioManager$CarVolumeCallback;

    invoke-virtual {p1, v0}, Landroid/car/media/CarAudioManager;->unregisterCarVolumeCallback(Landroid/car/media/CarAudioManager$CarVolumeCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "car service is disconnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/car/CarNotConnectedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v0, p1}, Lcom/geely/os/car/GlyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl$9;->this$0:Lcom/geely/os/audio/GlyAudioImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/geely/os/audio/GlyAudioImpl;->access$802(Lcom/geely/os/audio/GlyAudioImpl;Landroid/car/media/CarAudioManager;)Landroid/car/media/CarAudioManager;

    return-void
.end method
