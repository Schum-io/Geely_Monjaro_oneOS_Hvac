.class public Lcom/geely/os/rescue/GlyRescueHandlerImpl;
.super Ljava/lang/Object;
.source "GlyRescueHandlerImpl.java"

# interfaces
.implements Lcom/geely/os/rescue/IGlyRescueHandler;


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

.field private mBluetoothProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mCallListener:Lcom/ecarx/xui/adaptapi/oncall/OnCall$ICallListener;

.field private mContext:Landroid/content/Context;

.field private mOnCall:Lcom/ecarx/xui/adaptapi/oncall/OnCall;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/geely/os/rescue/GlyRescueHandlerImpl$1;

    invoke-direct {v0, p0}, Lcom/geely/os/rescue/GlyRescueHandlerImpl$1;-><init>(Lcom/geely/os/rescue/GlyRescueHandlerImpl;)V

    iput-object v0, p0, Lcom/geely/os/rescue/GlyRescueHandlerImpl;->mCallListener:Lcom/ecarx/xui/adaptapi/oncall/OnCall$ICallListener;

    .line 44
    new-instance v0, Lcom/geely/os/rescue/GlyRescueHandlerImpl$2;

    invoke-direct {v0, p0}, Lcom/geely/os/rescue/GlyRescueHandlerImpl$2;-><init>(Lcom/geely/os/rescue/GlyRescueHandlerImpl;)V

    iput-object v0, p0, Lcom/geely/os/rescue/GlyRescueHandlerImpl;->mBluetoothProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method static synthetic access$002(Lcom/geely/os/rescue/GlyRescueHandlerImpl;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/geely/os/rescue/GlyRescueHandlerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    return-object p1
.end method


# virtual methods
.method public callRescue(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    const-string v0, "OneVehicleSDK_GlyRescueHandlerImpl"

    const-string v1, "callRescue"

    .line 95
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/geely/os/rescue/GlyRescueHandlerImpl;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 99
    iget-object v1, p0, Lcom/geely/os/rescue/GlyRescueHandlerImpl;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CALL_PHONE"

    invoke-static {v1, v3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-virtual {v0, p1, v2}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public callSOS()V
    .locals 2

    const-string v0, "OneVehicleSDK_GlyRescueHandlerImpl"

    const-string v1, "callSOS"

    .line 87
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/geely/os/rescue/GlyRescueHandlerImpl;->mOnCall:Lcom/ecarx/xui/adaptapi/oncall/OnCall;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 89
    invoke-virtual {v0, v1}, Lcom/ecarx/xui/adaptapi/oncall/OnCall;->startCall(I)V

    :cond_0
    return-void
.end method

.method public initBluetooth()V
    .locals 4

    const-string v0, "OneVehicleSDK_GlyRescueHandlerImpl"

    const-string v1, "initBluetooth"

    .line 64
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/os/rescue/GlyRescueHandlerImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/geely/os/rescue/GlyRescueHandlerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/geely/os/rescue/GlyRescueHandlerImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/geely/os/rescue/GlyRescueHandlerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/geely/os/rescue/GlyRescueHandlerImpl;->mBluetoothProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    return-void
.end method

.method public initOnCall(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/geely/os/rescue/GlyRescueHandlerImpl;->mContext:Landroid/content/Context;

    .line 76
    iget-object v0, p0, Lcom/geely/os/rescue/GlyRescueHandlerImpl;->mOnCall:Lcom/ecarx/xui/adaptapi/oncall/OnCall;

    if-nez v0, :cond_0

    .line 77
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/oncall/OnCall;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/oncall/OnCall;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/rescue/GlyRescueHandlerImpl;->mOnCall:Lcom/ecarx/xui/adaptapi/oncall/OnCall;

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initOnCall mOnCall: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/rescue/GlyRescueHandlerImpl;->mOnCall:Lcom/ecarx/xui/adaptapi/oncall/OnCall;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OneVehicleSDK_GlyRescueHandlerImpl"

    invoke-static {v0, p1}, Lcom/geely/os/car/GlyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/geely/os/rescue/GlyRescueHandlerImpl;->mOnCall:Lcom/ecarx/xui/adaptapi/oncall/OnCall;

    if-eqz p1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/geely/os/rescue/GlyRescueHandlerImpl;->mCallListener:Lcom/ecarx/xui/adaptapi/oncall/OnCall$ICallListener;

    invoke-virtual {p1, v0}, Lcom/ecarx/xui/adaptapi/oncall/OnCall;->registerCallListener(Lcom/ecarx/xui/adaptapi/oncall/OnCall$ICallListener;)V

    :cond_1
    return-void
.end method

.method public isConnectedBTPhone()Z
    .locals 5

    const-string v0, "OneVehicleSDK_GlyRescueHandlerImpl"

    const-string v1, "isConnectedBTPhone"

    .line 118
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/geely/os/rescue/GlyRescueHandlerImpl;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "mBluetoothHeadsetClient == null"

    .line 120
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 123
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClient;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectedDevices "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/geely/os/car/GlyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 125
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "isConnectedBTPhone true "

    .line 126
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method public isSupportSOS()Z
    .locals 4

    const-string v0, "OneVehicleSDK_GlyRescueHandlerImpl"

    const-string v1, "isSupportSOS"

    .line 108
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/geely/os/rescue/GlyRescueHandlerImpl;->mOnCall:Lcom/ecarx/xui/adaptapi/oncall/OnCall;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 110
    invoke-virtual {v0, v2}, Lcom/ecarx/xui/adaptapi/oncall/OnCall;->isOnCallSupported(I)Lcom/ecarx/xui/adaptapi/FunctionStatus;

    move-result-object v0

    .line 111
    sget-object v3, Lcom/ecarx/xui/adaptapi/FunctionStatus;->active:Lcom/ecarx/xui/adaptapi/FunctionStatus;

    if-ne v0, v3, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public startBtPanel()V
    .locals 3

    const-string v0, "OneVehicleSDK_GlyRescueHandlerImpl"

    const-string v1, "startBtPanel"

    .line 134
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/geely/os/rescue/GlyRescueHandlerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "\u8bf7\u8fde\u63a5\u84dd\u7259"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
