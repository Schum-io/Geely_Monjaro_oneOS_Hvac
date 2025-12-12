.class Lcom/geely/os/bt/GlyBtExtensionImpl$5;
.super Ljava/lang/Object;
.source "GlyBtExtensionImpl.java"

# interfaces
.implements Lcom/geely/os/bt/IGlyA2dpExtension;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/bt/GlyBtExtensionImpl;->getA2dpExtension()Lcom/geely/os/bt/IGlyA2dpExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/bt/GlyBtExtensionImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 214
    iput-object p1, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getA2dpConnectedAddress()Ljava/lang/String;
    .locals 2

    const-string v0, "OneVehicleSDK_IGlyBt"

    const-string v1, "getA2dpConnectedAddress : "

    .line 217
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getA2dpExtension()Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getA2dpExtension()Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;->getA2dpConnectedAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getA2dpConnectionState()I
    .locals 2

    const-string v0, "OneVehicleSDK_IGlyBt"

    const-string v1, "getA2dpConnectionState : "

    .line 226
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getA2dpExtension()Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getA2dpExtension()Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;->getA2dpConnectionState()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getA2dpThresholdVolume(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getA2dpThresholdVolume address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_IGlyBt"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getA2dpExtension()Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getA2dpExtension()Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;->getA2dpThresholdVolume(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isA2dpConnected()Z
    .locals 2

    const-string v0, "OneVehicleSDK_IGlyBt"

    const-string v1, "isA2dpConnected: "

    .line 244
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getA2dpExtension()Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getA2dpExtension()Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;->isA2dpConnected()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isA2dpServiceReady()Z
    .locals 2

    const-string v0, "OneVehicleSDK_IGlyBt"

    const-string v1, "isA2dpServiceReady: "

    .line 253
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getA2dpExtension()Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getA2dpExtension()Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;->isA2dpServiceReady()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public muteA2dpAudio(ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mute",
            "address"
        }
    .end annotation

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "muteA2dpAudio mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",address :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_IGlyBt"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getA2dpExtension()Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getA2dpExtension()Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;->muteA2dpAudio(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public pauseA2dpRender()V
    .locals 2

    const-string v0, "OneVehicleSDK_IGlyBt"

    const-string v1, "pauseA2dpRender "

    .line 270
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getA2dpExtension()Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getA2dpExtension()Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;->pauseA2dpRender()V

    :cond_0
    return-void
.end method

.method public registerA2dpCallback(Lcom/geely/os/bt/IGlyA2dpCallback;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cb"
        }
    .end annotation

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerA2dpCallback IGlyA2dpCallback\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_IGlyBt"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getA2dpExtension()Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$200(Lcom/geely/os/bt/GlyBtExtensionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object p1, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {p1}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object p1

    invoke-interface {p1}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getA2dpExtension()Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$500(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IA2dpCallback;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;->registerA2dpCallback(Lcom/ecarx/xui/adaptapi/device/ext/IA2dpCallback;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public reqA2dpConnect(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    const-string v0, "OneVehicleSDK_IGlyBt"

    const-string v1, "reqA2dpConnect address: "

    .line 288
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getA2dpExtension()Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getA2dpExtension()Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;->reqA2dpConnect(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public reqA2dpDisconnect(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reqA2dpDisconnect address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_IGlyBt"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getA2dpExtension()Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getA2dpExtension()Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;->reqA2dpDisconnect(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setA2dpLocalVolume(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vol"
        }
    .end annotation

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setA2dpLocalVolume vol: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_IGlyBt"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getA2dpExtension()Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getA2dpExtension()Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;->setA2dpLocalVolume(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public startA2dpRender()V
    .locals 2

    const-string v0, "OneVehicleSDK_IGlyBt"

    const-string v1, "startA2dpRender"

    .line 315
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getA2dpExtension()Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getA2dpExtension()Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;->startA2dpRender()V

    :cond_0
    return-void
.end method

.method public unregisterA2dpCallback(Lcom/geely/os/bt/IGlyA2dpCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cb"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getA2dpExtension()Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$200(Lcom/geely/os/bt/GlyBtExtensionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 325
    iget-object p1, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {p1}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object p1

    invoke-interface {p1}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getA2dpExtension()Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$500(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IA2dpCallback;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/device/ext/IA2dpExtension;->unregisterA2dpCallback(Lcom/ecarx/xui/adaptapi/device/ext/IA2dpCallback;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
