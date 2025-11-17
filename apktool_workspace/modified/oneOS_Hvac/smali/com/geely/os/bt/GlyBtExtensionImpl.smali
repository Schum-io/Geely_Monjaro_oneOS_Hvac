.class Lcom/geely/os/bt/GlyBtExtensionImpl;
.super Ljava/lang/Object;
.source "GlyBtExtensionImpl.java"

# interfaces
.implements Lcom/geely/os/bt/IGlyBtExtension;


# instance fields
.field private final a2dpCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/bt/IGlyA2dpCallback;",
            ">;"
        }
    .end annotation
.end field

.field private btExtensionCallback:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtensionCallback;

.field private final btExtensionCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/bt/IGlyBtExtensionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private iMultiPbapListener:Lcom/ecarx/xui/adaptapi/device/ext/IMultiBtPbapExtension$IMultiPbapListener;

.field private ia2dpCallback:Lcom/ecarx/xui/adaptapi/device/ext/IA2dpCallback;

.field private mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

.field private final multiPbapListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/bt/IGlyMultiPbapListener;",
            ">;"
        }
    .end annotation
.end field

.field private pbapListener:Lcom/ecarx/xui/adaptapi/device/ext/IPbapExtension$IPbapListener;

.field private final pbapListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/bt/IGlyPbapListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->a2dpCallbacks:Landroid/util/ArraySet;

    .line 23
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->multiPbapListeners:Landroid/util/ArraySet;

    .line 24
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->pbapListeners:Landroid/util/ArraySet;

    .line 25
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->btExtensionCallbacks:Landroid/util/ArraySet;

    .line 27
    new-instance v0, Lcom/geely/os/bt/GlyBtExtensionImpl$1;

    invoke-direct {v0, p0}, Lcom/geely/os/bt/GlyBtExtensionImpl$1;-><init>(Lcom/geely/os/bt/GlyBtExtensionImpl;)V

    iput-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->btExtensionCallback:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtensionCallback;

    .line 145
    new-instance v0, Lcom/geely/os/bt/GlyBtExtensionImpl$2;

    invoke-direct {v0, p0}, Lcom/geely/os/bt/GlyBtExtensionImpl$2;-><init>(Lcom/geely/os/bt/GlyBtExtensionImpl;)V

    iput-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->pbapListener:Lcom/ecarx/xui/adaptapi/device/ext/IPbapExtension$IPbapListener;

    .line 153
    new-instance v0, Lcom/geely/os/bt/GlyBtExtensionImpl$3;

    invoke-direct {v0, p0}, Lcom/geely/os/bt/GlyBtExtensionImpl$3;-><init>(Lcom/geely/os/bt/GlyBtExtensionImpl;)V

    iput-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->ia2dpCallback:Lcom/ecarx/xui/adaptapi/device/ext/IA2dpCallback;

    .line 168
    new-instance v0, Lcom/geely/os/bt/GlyBtExtensionImpl$4;

    invoke-direct {v0, p0}, Lcom/geely/os/bt/GlyBtExtensionImpl$4;-><init>(Lcom/geely/os/bt/GlyBtExtensionImpl;)V

    iput-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->iMultiPbapListener:Lcom/ecarx/xui/adaptapi/device/ext/IMultiBtPbapExtension$IMultiPbapListener;

    .line 186
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/device/Device;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/device/Device;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/Device;->getBtExtension()Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/geely/os/bt/GlyBtExtensionImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->btExtensionCallbacks:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$100(Lcom/geely/os/bt/GlyBtExtensionImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->pbapListeners:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$200(Lcom/geely/os/bt/GlyBtExtensionImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->a2dpCallbacks:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$300(Lcom/geely/os/bt/GlyBtExtensionImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->multiPbapListeners:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    return-object p0
.end method

.method static synthetic access$500(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IA2dpCallback;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->ia2dpCallback:Lcom/ecarx/xui/adaptapi/device/ext/IA2dpCallback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IMultiBtPbapExtension$IMultiPbapListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->iMultiPbapListener:Lcom/ecarx/xui/adaptapi/device/ext/IMultiBtPbapExtension$IMultiPbapListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IPbapExtension$IPbapListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->pbapListener:Lcom/ecarx/xui/adaptapi/device/ext/IPbapExtension$IPbapListener;

    return-object p0
.end method

.method public static create(Landroid/content/Context;)Lcom/geely/os/bt/IGlyBtExtension;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 179
    new-instance v0, Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-direct {v0, p0}, Lcom/geely/os/bt/GlyBtExtensionImpl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public cancelBtDiscovery()Z
    .locals 2

    const-string v0, "OneVehicleSDK_IGlyBt"

    const-string v1, "cancelBtDiscovery "

    .line 195
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    if-eqz v0, :cond_0

    .line 197
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->cancelBtDiscovery()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getA2dpAutoRejectConnStatus()Z
    .locals 2

    const-string v0, "OneVehicleSDK_IGlyBt"

    const-string v1, "getA2dpAutoRejectConnStatus : "

    .line 204
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getA2dpAutoRejectConnStatus()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getA2dpExtension()Lcom/geely/os/bt/IGlyA2dpExtension;
    .locals 2

    const-string v0, "OneVehicleSDK_IGlyBt"

    const-string v1, "getA2dpExtension"

    .line 213
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance v0, Lcom/geely/os/bt/GlyBtExtensionImpl$5;

    invoke-direct {v0, p0}, Lcom/geely/os/bt/GlyBtExtensionImpl$5;-><init>(Lcom/geely/os/bt/GlyBtExtensionImpl;)V

    return-object v0
.end method

.method public getBtState()I
    .locals 2

    const-string v0, "OneVehicleSDK_IGlyBt"

    const-string v1, "getBtState: "

    .line 335
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    if-eqz v0, :cond_0

    .line 337
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getBtState()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectedPhoneNumber()Ljava/lang/String;
    .locals 2

    const-string v0, "OneVehicleSDK_IGlyBt"

    const-string v1, "getConnectedPhoneNumber: "

    .line 344
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    if-eqz v0, :cond_0

    .line 346
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getConnectedPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getHeadsetPower(Lcom/geely/os/bt/GlyBtDevice;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device"
        }
    .end annotation

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHeadsetPower GlyBtDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_IGlyBt"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 355
    new-instance v0, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;

    invoke-direct {v0}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;-><init>()V

    .line 356
    invoke-virtual {p1}, Lcom/geely/os/bt/GlyBtDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->setAddress(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p1}, Lcom/geely/os/bt/GlyBtDevice;->getBondState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->setBondState(I)V

    .line 358
    invoke-virtual {p1}, Lcom/geely/os/bt/GlyBtDevice;->getCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->setCategory(I)V

    .line 359
    invoke-virtual {p1}, Lcom/geely/os/bt/GlyBtDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->setName(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p1}, Lcom/geely/os/bt/GlyBtDevice;->getConnectState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->setConnectState(I)V

    .line 361
    invoke-virtual {p1}, Lcom/geely/os/bt/GlyBtDevice;->getSupportProfile()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->setSupportProfile(I)V

    .line 362
    iget-object p1, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getHeadsetPower(Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getHfpAutoRejectConnStatus()Z
    .locals 2

    const-string v0, "OneVehicleSDK_IGlyBt"

    const-string v1, "getHfpAutoRejectConnStatus "

    .line 369
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    if-eqz v0, :cond_0

    .line 371
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getHfpAutoRejectConnStatus()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMultiBtPbapExtension()Lcom/geely/os/bt/IGlyMultiBtPbapExtension;
    .locals 2

    const-string v0, "OneVehicleSDK_IGlyBt"

    const-string v1, "getMultiBtPbapExtension "

    .line 378
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    new-instance v0, Lcom/geely/os/bt/GlyBtExtensionImpl$6;

    invoke-direct {v0, p0}, Lcom/geely/os/bt/GlyBtExtensionImpl$6;-><init>(Lcom/geely/os/bt/GlyBtExtensionImpl;)V

    return-object v0
.end method

.method public getPSDBluetoothMacAddress()Ljava/lang/String;
    .locals 2

    const-string v0, "OneVehicleSDK_IGlyBt"

    const-string v1, "getPSDBluetoothMacAddress  "

    .line 494
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    if-eqz v0, :cond_0

    .line 496
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getPSDBluetoothMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getPbapExtension()Lcom/geely/os/bt/IGlyPbapExtension;
    .locals 2

    const-string v0, "OneVehicleSDK_IGlyBt"

    const-string v1, "getPbapExtension "

    .line 431
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    new-instance v0, Lcom/geely/os/bt/GlyBtExtensionImpl$7;

    invoke-direct {v0, p0}, Lcom/geely/os/bt/GlyBtExtensionImpl$7;-><init>(Lcom/geely/os/bt/GlyBtExtensionImpl;)V

    return-object v0
.end method

.method public isBLEScanEnable()Z
    .locals 2

    const-string v0, "OneVehicleSDK_IGlyBt"

    const-string v1, "isBLEScanEnable "

    .line 503
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    if-eqz v0, :cond_0

    .line 505
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->isBLEScanEnable()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBtDiscovering()Z
    .locals 2

    const-string v0, "OneVehicleSDK_IGlyBt"

    const-string v1, "isBtDiscovering "

    .line 512
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    if-eqz v0, :cond_0

    .line 514
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->isBtDiscovering()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBtEnabled()Z
    .locals 2

    const-string v0, "OneVehicleSDK_IGlyBt"

    const-string v1, "isBtEnabled "

    .line 521
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    if-eqz v0, :cond_0

    .line 523
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->isBtEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public registerBtCallback(Lcom/geely/os/bt/IGlyBtExtensionCallback;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cb"
        }
    .end annotation

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerBtCallback IGlyBtExtensionCallback\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_IGlyBt"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->btExtensionCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 533
    iget-object p1, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->btExtensionCallback:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtensionCallback;

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->registerBtCallback(Lcom/ecarx/xui/adaptapi/device/ext/IBtExtensionCallback;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public reqBtPair(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reqBtPair address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_IGlyBt"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    if-eqz v0, :cond_0

    .line 542
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->reqBtPair(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public reqBtPairedDevices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/os/bt/GlyBtDevice;",
            ">;"
        }
    .end annotation

    const-string v0, "OneVehicleSDK_IGlyBt"

    const-string v1, "reqBtPairedDevices "

    .line 549
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->reqBtPairedDevices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->reqBtPairedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 551
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 552
    iget-object v1, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    invoke-interface {v1}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->reqBtPairedDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;

    .line 553
    new-instance v3, Lcom/geely/os/bt/GlyBtDevice;

    invoke-direct {v3}, Lcom/geely/os/bt/GlyBtDevice;-><init>()V

    .line 554
    invoke-virtual {v2}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/geely/os/bt/GlyBtDevice;->setAddress(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v2}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getCategory()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/geely/os/bt/GlyBtDevice;->setCategory(I)V

    .line 556
    invoke-virtual {v2}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getBondState()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/geely/os/bt/GlyBtDevice;->setBondState(I)V

    .line 557
    invoke-virtual {v2}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/geely/os/bt/GlyBtDevice;->setName(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v2}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getConnectState()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/geely/os/bt/GlyBtDevice;->setConnectState(I)V

    .line 559
    invoke-virtual {v2}, Lcom/ecarx/xui/adaptapi/device/ext/common/BtDevice;->getSupportProfile()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/geely/os/bt/GlyBtDevice;->setSupportProfile(I)V

    .line 560
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public reqBtUnpair(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reqBtUnpair address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_IGlyBt"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    if-eqz v0, :cond_0

    .line 571
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->reqBtUnpair(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setA2dpAutoRejectConnStatus(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bReject"
        }
    .end annotation

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setA2dpAutoRejectConnStatus bReject:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_IGlyBt"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    if-eqz v0, :cond_0

    .line 580
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->setA2dpAutoRejectConnStatus(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setBLEScanEnable(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEnable"
        }
    .end annotation

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBLEScanEnable isEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_IGlyBt"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    if-eqz v0, :cond_0

    .line 589
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->setBLEScanEnable(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setBluetoothAutoConnect(Ljava/lang/String;IZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "address",
            "profile",
            "enabled"
        }
    .end annotation

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBluetoothAutoConnect address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",enabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_IGlyBt"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    if-eqz v0, :cond_0

    .line 607
    invoke-interface {v0, p1, p2, p3}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->setBluetoothAutoConnect(Ljava/lang/String;IZ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setBluetoothAutoConnect(Ljava/lang/String;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "address",
            "enabled"
        }
    .end annotation

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBluetoothAutoConnect address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",enabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_IGlyBt"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    if-eqz v0, :cond_0

    .line 598
    invoke-interface {v0, p1, p2}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->setBluetoothAutoConnect(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setBtEnable(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBtEnable enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_IGlyBt"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    if-eqz v0, :cond_0

    .line 616
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->setBtEnable(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setHfpAutoRejectConnStatus(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bReject"
        }
    .end annotation

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHfpAutoRejectConnStatus bReject:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_IGlyBt"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    if-eqz v0, :cond_0

    .line 625
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->setHfpAutoRejectConnStatus(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public startBtDiscovery()Z
    .locals 2

    const-string v0, "OneVehicleSDK_IGlyBt"

    const-string v1, "startBtDiscovery "

    .line 632
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    if-eqz v0, :cond_0

    .line 634
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->startBtDiscovery()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startDiscoveryOnlyClassic()Z
    .locals 2

    const-string v0, "OneVehicleSDK_IGlyBt"

    const-string v1, "startDiscoveryOnlyClassic "

    .line 641
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    if-eqz v0, :cond_0

    .line 643
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->startDiscoveryOnlyClassic()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterBtCallback(Lcom/geely/os/bt/IGlyBtExtensionCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cb"
        }
    .end annotation

    .line 650
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->btExtensionCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 652
    iget-object p1, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->mBtExtension:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl;->btExtensionCallback:Lcom/ecarx/xui/adaptapi/device/ext/IBtExtensionCallback;

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->unregisterBtCallback(Lcom/ecarx/xui/adaptapi/device/ext/IBtExtensionCallback;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
