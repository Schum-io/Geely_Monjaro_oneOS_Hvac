.class Lcom/geely/os/bt/GlyBtExtensionImpl$1;
.super Ljava/lang/Object;
.source "GlyBtExtensionImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/device/ext/IBtExtensionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/bt/GlyBtExtensionImpl;
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

    .line 27
    iput-object p1, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$1;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAdapterStateChanged$0(IILcom/geely/os/bt/IGlyBtExtensionCallback;)V
    .locals 0

    .line 30
    invoke-interface {p2, p0, p1}, Lcom/geely/os/bt/IGlyBtExtensionCallback;->onAdapterStateChanged(II)V

    return-void
.end method

.method static synthetic lambda$onAvrcpPlayPosUpdated$7(Lcom/geely/os/bt/GlyBtDevice;ILcom/geely/os/bt/IGlyBtExtensionCallback;)V
    .locals 0

    .line 139
    invoke-interface {p2, p0, p1}, Lcom/geely/os/bt/IGlyBtExtensionCallback;->onAvrcpPlayPosUpdated(Lcom/geely/os/bt/GlyBtDevice;I)V

    return-void
.end method

.method static synthetic lambda$onAvrcpPlayStateUpdated$6(Lcom/geely/os/bt/GlyBtDevice;ILcom/geely/os/bt/IGlyBtExtensionCallback;)V
    .locals 0

    .line 124
    invoke-interface {p2, p0, p1}, Lcom/geely/os/bt/IGlyBtExtensionCallback;->onAvrcpPlayStateUpdated(Lcom/geely/os/bt/GlyBtDevice;I)V

    return-void
.end method

.method static synthetic lambda$onDeviceBondStateChanged$2(Lcom/geely/os/bt/GlyBtDevice;IILcom/geely/os/bt/IGlyBtExtensionCallback;)V
    .locals 0

    .line 60
    invoke-interface {p3, p0, p1, p2}, Lcom/geely/os/bt/IGlyBtExtensionCallback;->onDeviceBondStateChanged(Lcom/geely/os/bt/GlyBtDevice;II)V

    return-void
.end method

.method static synthetic lambda$onDeviceFoundChanged$1(ILcom/geely/os/bt/GlyBtDevice;Lcom/geely/os/bt/IGlyBtExtensionCallback;)V
    .locals 0

    .line 45
    invoke-interface {p2, p0, p1}, Lcom/geely/os/bt/IGlyBtExtensionCallback;->onDeviceFoundChanged(ILcom/geely/os/bt/GlyBtDevice;)V

    return-void
.end method

.method static synthetic lambda$onDevicePowerUpdated$4(Lcom/geely/os/bt/GlyBtDevice;ILcom/geely/os/bt/IGlyBtExtensionCallback;)V
    .locals 0

    .line 90
    invoke-interface {p2, p0, p1}, Lcom/geely/os/bt/IGlyBtExtensionCallback;->onDevicePowerUpdated(Lcom/geely/os/bt/GlyBtDevice;I)V

    return-void
.end method

.method static synthetic lambda$onDeviceUuidsUpdated$3(Lcom/geely/os/bt/GlyBtDevice;Lcom/geely/os/bt/IGlyBtExtensionCallback;)V
    .locals 0

    .line 75
    invoke-interface {p1, p0}, Lcom/geely/os/bt/IGlyBtExtensionCallback;->onDeviceUuidsUpdated(Lcom/geely/os/bt/GlyBtDevice;)V

    return-void
.end method

.method static synthetic lambda$onPairedDevicesChanged$5(Ljava/util/List;Lcom/geely/os/bt/IGlyBtExtensionCallback;)V
    .locals 0

    .line 109
    invoke-interface {p1, p0}, Lcom/geely/os/bt/IGlyBtExtensionCallback;->onPairedDevicesChanged(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onAdapterStateChanged(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "i1"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$1;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$000(Lcom/geely/os/bt/GlyBtExtensionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$MIwMPh0ZOMpnuXdaf8f4x8j98sU;

    invoke-direct {v1, p1, p2}, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$MIwMPh0ZOMpnuXdaf8f4x8j98sU;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdapterStateChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OneVehicleSDK_IGlyBt"

    invoke-static {p2, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAvrcpPlayPosUpdated(Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "btDevice",
            "i"
        }
    .end annotation

    .line 130
    new-instance v0, Lcom/geely/os/bt/GlyBtDevice;

    invoke-direct {v0}, Lcom/geely/os/bt/GlyBtDevice;-><init>()V

    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setAddress(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setCategory(I)V

    .line 134
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getBondState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setBondState(I)V

    .line 135
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setName(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getConnectState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setConnectState(I)V

    .line 137
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getSupportProfile()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/geely/os/bt/GlyBtDevice;->setSupportProfile(I)V

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$1;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {p1}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$000(Lcom/geely/os/bt/GlyBtExtensionImpl;)Landroid/util/ArraySet;

    move-result-object p1

    new-instance v1, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$tIbsyMFoRLzy-Clus1KDivVybbQ;

    invoke-direct {v1, v0, p2}, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$tIbsyMFoRLzy-Clus1KDivVybbQ;-><init>(Lcom/geely/os/bt/GlyBtDevice;I)V

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAvrcpPlayPosUpdated : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OneVehicleSDK_IGlyBt"

    invoke-static {p2, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAvrcpPlayStateUpdated(Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "btDevice",
            "i"
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/geely/os/bt/GlyBtDevice;

    invoke-direct {v0}, Lcom/geely/os/bt/GlyBtDevice;-><init>()V

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setAddress(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setCategory(I)V

    .line 119
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getBondState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setBondState(I)V

    .line 120
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setName(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getConnectState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setConnectState(I)V

    .line 122
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getSupportProfile()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/geely/os/bt/GlyBtDevice;->setSupportProfile(I)V

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$1;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {p1}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$000(Lcom/geely/os/bt/GlyBtExtensionImpl;)Landroid/util/ArraySet;

    move-result-object p1

    new-instance v1, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$Rg9g4hbyYY6-OIluAD78k8XuRvc;

    invoke-direct {v1, v0, p2}, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$Rg9g4hbyYY6-OIluAD78k8XuRvc;-><init>(Lcom/geely/os/bt/GlyBtDevice;I)V

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAvrcpPlayStateUpdated : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OneVehicleSDK_IGlyBt"

    invoke-static {p2, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "btDevice",
            "i",
            "i1"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/geely/os/bt/GlyBtDevice;

    invoke-direct {v0}, Lcom/geely/os/bt/GlyBtDevice;-><init>()V

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setAddress(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setCategory(I)V

    .line 55
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getBondState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setBondState(I)V

    .line 56
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setName(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getConnectState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setConnectState(I)V

    .line 58
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getSupportProfile()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/geely/os/bt/GlyBtDevice;->setSupportProfile(I)V

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$1;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {p1}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$000(Lcom/geely/os/bt/GlyBtExtensionImpl;)Landroid/util/ArraySet;

    move-result-object p1

    new-instance v1, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$Xl7pVIEyDwIeSbMT1QGYSntg1jc;

    invoke-direct {v1, v0, p2, p3}, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$Xl7pVIEyDwIeSbMT1QGYSntg1jc;-><init>(Lcom/geely/os/bt/GlyBtDevice;II)V

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceBondStateChanged : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OneVehicleSDK_IGlyBt"

    invoke-static {p2, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDeviceFoundChanged(ILcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "btDevice"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/geely/os/bt/GlyBtDevice;

    invoke-direct {v0}, Lcom/geely/os/bt/GlyBtDevice;-><init>()V

    if-eqz p2, :cond_0

    .line 38
    invoke-virtual {p2}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setAddress(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p2}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setCategory(I)V

    .line 40
    invoke-virtual {p2}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getBondState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setBondState(I)V

    .line 41
    invoke-virtual {p2}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setName(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p2}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getConnectState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setConnectState(I)V

    .line 43
    invoke-virtual {p2}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getSupportProfile()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/geely/os/bt/GlyBtDevice;->setSupportProfile(I)V

    .line 45
    :cond_0
    iget-object p2, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$1;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {p2}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$000(Lcom/geely/os/bt/GlyBtExtensionImpl;)Landroid/util/ArraySet;

    move-result-object p2

    new-instance v1, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$JMVzx1-RGXzCtGNGwe1EvKdmRzo;

    invoke-direct {v1, p1, v0}, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$JMVzx1-RGXzCtGNGwe1EvKdmRzo;-><init>(ILcom/geely/os/bt/GlyBtDevice;)V

    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceFoundChanged : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OneVehicleSDK_IGlyBt"

    invoke-static {p2, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDevicePowerUpdated(Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "btDevice",
            "i"
        }
    .end annotation

    .line 81
    new-instance v0, Lcom/geely/os/bt/GlyBtDevice;

    invoke-direct {v0}, Lcom/geely/os/bt/GlyBtDevice;-><init>()V

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setAddress(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setCategory(I)V

    .line 85
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getBondState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setBondState(I)V

    .line 86
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setName(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getConnectState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setConnectState(I)V

    .line 88
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getSupportProfile()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/geely/os/bt/GlyBtDevice;->setSupportProfile(I)V

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$1;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {p1}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$000(Lcom/geely/os/bt/GlyBtExtensionImpl;)Landroid/util/ArraySet;

    move-result-object p1

    new-instance v1, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$6hsxJNs4zaOv0c3c0wcQNIs8uG4;

    invoke-direct {v1, v0, p2}, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$6hsxJNs4zaOv0c3c0wcQNIs8uG4;-><init>(Lcom/geely/os/bt/GlyBtDevice;I)V

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDevicePowerUpdated : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OneVehicleSDK_IGlyBt"

    invoke-static {p2, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDeviceUuidsUpdated(Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "btDevice"
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/geely/os/bt/GlyBtDevice;

    invoke-direct {v0}, Lcom/geely/os/bt/GlyBtDevice;-><init>()V

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setAddress(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setCategory(I)V

    .line 70
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getBondState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setBondState(I)V

    .line 71
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setName(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getConnectState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/os/bt/GlyBtDevice;->setConnectState(I)V

    .line 73
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getSupportProfile()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/geely/os/bt/GlyBtDevice;->setSupportProfile(I)V

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$1;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {p1}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$000(Lcom/geely/os/bt/GlyBtExtensionImpl;)Landroid/util/ArraySet;

    move-result-object p1

    new-instance v1, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$X99gn3FBcWG_O3L72KkamTUoHdY;

    invoke-direct {v1, v0}, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$X99gn3FBcWG_O3L72KkamTUoHdY;-><init>(Lcom/geely/os/bt/GlyBtDevice;)V

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceUuidsUpdated : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OneVehicleSDK_IGlyBt"

    invoke-static {v0, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPairedDevicesChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;",
            ">;)V"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 97
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 98
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;

    .line 99
    new-instance v2, Lcom/geely/os/bt/GlyBtDevice;

    invoke-direct {v2}, Lcom/geely/os/bt/GlyBtDevice;-><init>()V

    .line 100
    invoke-virtual {v1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/geely/os/bt/GlyBtDevice;->setAddress(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getCategory()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/geely/os/bt/GlyBtDevice;->setCategory(I)V

    .line 102
    invoke-virtual {v1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getBondState()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/geely/os/bt/GlyBtDevice;->setBondState(I)V

    .line 103
    invoke-virtual {v1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/geely/os/bt/GlyBtDevice;->setName(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getConnectState()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/geely/os/bt/GlyBtDevice;->setConnectState(I)V

    .line 105
    invoke-virtual {v1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getSupportProfile()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/geely/os/bt/GlyBtDevice;->setSupportProfile(I)V

    .line 106
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$1;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {p1}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$000(Lcom/geely/os/bt/GlyBtExtensionImpl;)Landroid/util/ArraySet;

    move-result-object p1

    new-instance v1, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$HONg4A7JNCzCrsNc_6n54yzCibk;

    invoke-direct {v1, v0}, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$1$HONg4A7JNCzCrsNc_6n54yzCibk;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPairedDevicesChanged : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OneVehicleSDK_IGlyBt"

    invoke-static {v0, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
