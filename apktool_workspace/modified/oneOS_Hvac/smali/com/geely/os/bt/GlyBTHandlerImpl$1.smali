.class Lcom/geely/os/bt/GlyBTHandlerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "GlyBTHandlerImpl.java"


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

    .line 58
    iput-object p1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$1;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic lambda$onReceive$0(ILcom/geely/os/bt/IGlyBTHandler$IGlyBTCallback;)V
    .locals 0

    .line 67
    invoke-interface {p1, p0}, Lcom/geely/os/bt/IGlyBTHandler$IGlyBTCallback;->onBTStateChanged(I)V

    return-void
.end method

.method private onBTProfileConnectStateChanged(Landroid/content/Intent;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "profile"
        }
    .end annotation

    const-string v0, "android.bluetooth.profile.extra.STATE"

    const/4 v1, 0x3

    .line 123
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    .line 124
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$1;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {v1}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$000(Lcom/geely/os/bt/GlyBTHandlerImpl;)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$jLTTE86nvVhgn8iViZbu7z6qk3g;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$jLTTE86nvVhgn8iViZbu7z6qk3g;-><init>(Lcom/geely/os/bt/GlyBTHandlerImpl$1;Landroid/bluetooth/BluetoothDevice;II)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onBTProfileConnectStateChanged$4$GlyBTHandlerImpl$1(Landroid/bluetooth/BluetoothDevice;IILcom/geely/os/bt/IGlyBTHandler$IGlyBTCallback;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$1;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {v0, p1}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$400(Lcom/geely/os/bt/GlyBTHandlerImpl;Landroid/bluetooth/BluetoothDevice;)Lcom/geely/os/bt/GlyBluetoothDevice;

    move-result-object p1

    invoke-interface {p4, p1, p2, p3}, Lcom/geely/os/bt/IGlyBTHandler$IGlyBTCallback;->onProfileConnectStatusChanged(Lcom/geely/os/bt/GlyBluetoothDevice;II)V

    return-void
.end method

.method public synthetic lambda$onReceive$1$GlyBTHandlerImpl$1(Landroid/bluetooth/BluetoothDevice;ILcom/geely/os/bt/IGlyBTHandler$IGlyBTCallback;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$1;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {v0, p1}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$400(Lcom/geely/os/bt/GlyBTHandlerImpl;Landroid/bluetooth/BluetoothDevice;)Lcom/geely/os/bt/GlyBluetoothDevice;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Lcom/geely/os/bt/IGlyBTHandler$IGlyBTCallback;->onBTConnectStatusChanged(Lcom/geely/os/bt/GlyBluetoothDevice;I)V

    return-void
.end method

.method public synthetic lambda$onReceive$2$GlyBTHandlerImpl$1(Landroid/bluetooth/BluetoothDevice;Lcom/geely/os/bt/IGlyBTHandler$IGlyBTCallback;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$1;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {v0, p1}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$400(Lcom/geely/os/bt/GlyBTHandlerImpl;Landroid/bluetooth/BluetoothDevice;)Lcom/geely/os/bt/GlyBluetoothDevice;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/geely/os/bt/IGlyBTHandler$IGlyBTCallback;->onBTDeviceFound(Lcom/geely/os/bt/GlyBluetoothDevice;)V

    return-void
.end method

.method public synthetic lambda$onReceive$3$GlyBTHandlerImpl$1(Landroid/bluetooth/BluetoothDevice;ILcom/geely/os/bt/IGlyBTHandler$IGlyBTCallback;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$1;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {v0, p1}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$400(Lcom/geely/os/bt/GlyBTHandlerImpl;Landroid/bluetooth/BluetoothDevice;)Lcom/geely/os/bt/GlyBluetoothDevice;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Lcom/geely/os/bt/IGlyBTHandler$IGlyBTCallback;->onBTBondStatusChanged(Lcom/geely/os/bt/GlyBluetoothDevice;I)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GlyBTHandlerImpl onReceive : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlyBTHandlerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xb

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    move v5, v1

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    move v5, v4

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "android.bluetooth.device.action.FOUND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v5, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_5
    const-string v0, "android.bluetooth.mapmce.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_6
    const-string v0, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_7
    const-string v0, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_8
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_9
    const-string v0, "android.bluetooth.pbapclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    move v5, v2

    goto :goto_0

    :sswitch_a
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_b
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    move v5, v3

    :goto_0
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    .line 93
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 94
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_c

    .line 95
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 96
    iget-object p2, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$1;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {p2}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$000(Lcom/geely/os/bt/GlyBTHandlerImpl;)Ljava/util/Set;

    move-result-object p2

    new-instance v1, Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$Eb1KTgP9PD4y6ps2cjA5AsnhXjI;

    invoke-direct {v1, p0, p1, v0}, Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$Eb1KTgP9PD4y6ps2cjA5AsnhXjI;-><init>(Lcom/geely/os/bt/GlyBTHandlerImpl$1;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-interface {p2, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    .line 70
    :pswitch_1
    iget-object p1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$1;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {p1}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$000(Lcom/geely/os/bt/GlyBTHandlerImpl;)Ljava/util/Set;

    move-result-object p1

    sget-object p2, Lcom/geely/os/bt/-$$Lambda$CecQ-wF36Fz3ACOOl-a7d6sOUwA;->INSTANCE:Lcom/geely/os/bt/-$$Lambda$CecQ-wF36Fz3ACOOl-a7d6sOUwA;

    invoke-interface {p1, p2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    .line 100
    :pswitch_2
    invoke-direct {p0, p2, v2}, Lcom/geely/os/bt/GlyBTHandlerImpl$1;->onBTProfileConnectStateChanged(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 87
    :pswitch_3
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_c

    .line 88
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 89
    iget-object p2, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$1;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {p2}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$000(Lcom/geely/os/bt/GlyBTHandlerImpl;)Ljava/util/Set;

    move-result-object p2

    new-instance v0, Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$rolddGFLVDuBQeSUwmUJMfL8BKk;

    invoke-direct {v0, p0, p1}, Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$rolddGFLVDuBQeSUwmUJMfL8BKk;-><init>(Lcom/geely/os/bt/GlyBTHandlerImpl$1;Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {p2, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :pswitch_4
    const-string v0, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    .line 73
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 75
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_c

    .line 76
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 77
    iget-object p2, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$1;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {p2}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$000(Lcom/geely/os/bt/GlyBTHandlerImpl;)Ljava/util/Set;

    move-result-object p2

    new-instance v1, Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$HWSMxpoyH5D2YfTc61jGgA77uFg;

    invoke-direct {v1, p0, p1, v0}, Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$HWSMxpoyH5D2YfTc61jGgA77uFg;-><init>(Lcom/geely/os/bt/GlyBTHandlerImpl$1;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-interface {p2, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1

    :pswitch_5
    const/16 p1, 0x12

    .line 115
    invoke-direct {p0, p2, p1}, Lcom/geely/os/bt/GlyBTHandlerImpl$1;->onBTProfileConnectStateChanged(Landroid/content/Intent;I)V

    goto :goto_1

    :pswitch_6
    const/16 p1, 0x10

    .line 106
    invoke-direct {p0, p2, p1}, Lcom/geely/os/bt/GlyBTHandlerImpl$1;->onBTProfileConnectStateChanged(Landroid/content/Intent;I)V

    .line 107
    iget-object p2, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$1;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {p2}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$100(Lcom/geely/os/bt/GlyBTHandlerImpl;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 108
    iget-object p2, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$1;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {p2}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$100(Lcom/geely/os/bt/GlyBTHandlerImpl;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$1;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$200(Lcom/geely/os/bt/GlyBTHandlerImpl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$1;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {v1}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$300(Lcom/geely/os/bt/GlyBTHandlerImpl;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto :goto_1

    .line 103
    :pswitch_7
    invoke-direct {p0, p2, v1}, Lcom/geely/os/bt/GlyBTHandlerImpl$1;->onBTProfileConnectStateChanged(Landroid/content/Intent;I)V

    goto :goto_1

    .line 81
    :pswitch_8
    iget-object p1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$1;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {p1}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$000(Lcom/geely/os/bt/GlyBTHandlerImpl;)Ljava/util/Set;

    move-result-object p1

    sget-object p2, Lcom/geely/os/bt/-$$Lambda$09-oCxCr1ALHd9WoLFIwsW9nzDI;->INSTANCE:Lcom/geely/os/bt/-$$Lambda$09-oCxCr1ALHd9WoLFIwsW9nzDI;

    invoke-interface {p1, p2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1

    :pswitch_9
    const/16 p1, 0x11

    .line 112
    invoke-direct {p0, p2, p1}, Lcom/geely/os/bt/GlyBTHandlerImpl$1;->onBTProfileConnectStateChanged(Landroid/content/Intent;I)V

    goto :goto_1

    :pswitch_a
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 66
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 67
    iget-object p2, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$1;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {p2}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$000(Lcom/geely/os/bt/GlyBTHandlerImpl;)Ljava/util/Set;

    move-result-object p2

    new-instance v0, Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$cE6VCsiqk4FF3h3iBOaJDssnagg;

    invoke-direct {v0, p1}, Lcom/geely/os/bt/-$$Lambda$GlyBTHandlerImpl$1$cE6VCsiqk4FF3h3iBOaJDssnagg;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 84
    :pswitch_b
    iget-object p1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl$1;->this$0:Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-static {p1}, Lcom/geely/os/bt/GlyBTHandlerImpl;->access$000(Lcom/geely/os/bt/GlyBTHandlerImpl;)Ljava/util/Set;

    move-result-object p1

    sget-object p2, Lcom/geely/os/bt/-$$Lambda$2uyfF7uhcCZu1dI2k4OHHtgBpEw;->INSTANCE:Lcom/geely/os/bt/-$$Lambda$2uyfF7uhcCZu1dI2k4OHHtgBpEw;

    invoke-interface {p1, p2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_c
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a269925 -> :sswitch_b
        -0x5b36f014 -> :sswitch_a
        -0x4fdeb4b -> :sswitch_9
        0x6724d8 -> :sswitch_8
        0x264968e -> :sswitch_7
        0x1ab8cab8 -> :sswitch_6
        0x27181f3c -> :sswitch_5
        0x42f3be3f -> :sswitch_4
        0x459717c3 -> :sswitch_3
        0x4a286686 -> :sswitch_2
        0x4b2319ee -> :sswitch_1
        0x7e2cc189 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
