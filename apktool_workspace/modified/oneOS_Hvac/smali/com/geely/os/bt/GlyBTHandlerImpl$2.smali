.class Lcom/geely/os/bt/GlyBTHandlerImpl$2;
.super Ljava/lang/Object;
.source "GlyBTHandlerImpl.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/bt/GlyBTHandlerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/bt/GlyBTHandlerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$2;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "profile",
            "proxy"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected: profile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlyBTHandlerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$2;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$500(Lcom/geely/os/bt/GlyBTHandlerImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$2;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$500(Lcom/geely/os/bt/GlyBTHandlerImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/16 v0, 0x10

    if-ne p1, v0, :cond_2

    .line 158
    iget-object p1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$2;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    check-cast p2, Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {p1, p2}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$602(Lcom/geely/os/bt/GlyBTHandlerImpl;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;

    .line 160
    :try_start_0
    iget-object p1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$2;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {p1}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$600(Lcom/geely/os/bt/GlyBTHandlerImpl;)Landroid/bluetooth/BluetoothHeadsetClient;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothHeadsetClient;->getConnectedDevices()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$702(Lcom/geely/os/bt/GlyBTHandlerImpl;Ljava/util/List;)Ljava/util/List;

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "hfp list size:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$2;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {p2}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$700(Lcom/geely/os/bt/GlyBTHandlerImpl;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object p1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$2;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {p1}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$700(Lcom/geely/os/bt/GlyBTHandlerImpl;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    if-lez p1, :cond_1

    const-string p1, "get getConnectedDevices size is not 0"

    .line 164
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object p1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$2;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {p1}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$700(Lcom/geely/os/bt/GlyBTHandlerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, p2}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$802(Lcom/geely/os/bt/GlyBTHandlerImpl;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 166
    iget-object p1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$2;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {p1}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$600(Lcom/geely/os/bt/GlyBTHandlerImpl;)Landroid/bluetooth/BluetoothHeadsetClient;

    move-result-object p1

    iget-object p2, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$2;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {p2}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$800(Lcom/geely/os/bt/GlyBTHandlerImpl;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothHeadsetClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    goto :goto_0

    :cond_1
    const-string p1, "get getConnectedDevices size is 0"

    .line 168
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object p1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$2;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$802(Lcom/geely/os/bt/GlyBTHandlerImpl;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 171
    :goto_0
    iget-object p1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$2;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {p1}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$800(Lcom/geely/os/bt/GlyBTHandlerImpl;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$900(Lcom/geely/os/bt/GlyBTHandlerImpl;ILandroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 174
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "profile"
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected: profile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlyBTHandlerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$2;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$500(Lcom/geely/os/bt/GlyBTHandlerImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$2;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$500(Lcom/geely/os/bt/GlyBTHandlerImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    .line 186
    iget-object p1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$2;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {p1, v1}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$802(Lcom/geely/os/bt/GlyBTHandlerImpl;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 187
    iget-object p1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$2;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {p1, v1}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$702(Lcom/geely/os/bt/GlyBTHandlerImpl;Ljava/util/List;)Ljava/util/List;

    .line 188
    iget-object p1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$2;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {p1, v1}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$602(Lcom/geely/os/bt/GlyBTHandlerImpl;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;

    :cond_1
    return-void
.end method
