.class Lcom/geely/os/rescue/GlyRescueHandlerImpl$2;
.super Ljava/lang/Object;
.source "GlyRescueHandlerImpl.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/rescue/GlyRescueHandlerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/rescue/GlyRescueHandlerImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/rescue/GlyRescueHandlerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/geely/os/rescue/GlyRescueHandlerImpl$2;->this$0:Lcom/geely/os/rescue/GlyRescueHandlerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
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

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected init profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyRescueHandlerImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 49
    iget-object p1, p0, Lcom/geely/os/rescue/GlyRescueHandlerImpl$2;->this$0:Lcom/geely/os/rescue/GlyRescueHandlerImpl;

    check-cast p2, Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {p1, p2}, Lcom/geely/os/rescue/GlyRescueHandlerImpl;->access$002(Lcom/geely/os/rescue/GlyRescueHandlerImpl;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "profile"
        }
    .end annotation

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    const-string p1, "OneVehicleSDK_GlyRescueHandlerImpl"

    const-string v0, "init mBluetoothHeadsetClient success"

    .line 56
    invoke-static {p1, v0}, Lcom/geely/os/car/GlyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/geely/os/rescue/GlyRescueHandlerImpl$2;->this$0:Lcom/geely/os/rescue/GlyRescueHandlerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/geely/os/rescue/GlyRescueHandlerImpl;->access$002(Lcom/geely/os/rescue/GlyRescueHandlerImpl;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;

    :cond_0
    return-void
.end method
