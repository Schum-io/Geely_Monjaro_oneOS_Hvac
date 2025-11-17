.class public Lcom/geely/os/wifiap/GlyApHandlerImpl;
.super Ljava/lang/Object;
.source "GlyApHandlerImpl.java"

# interfaces
.implements Lcom/geely/os/wifiap/IGlyApHandler;


# instance fields
.field private externalApStateListener:Lcom/ecarx/xui/adaptapi/wifiap/ExternalApStateListener;

.field private final mCallbackSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/wifiap/IGlyApHandler$OnApClientDeviceChanged;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalWifiAP:Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiAP;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/wifiap/GlyApHandlerImpl;->mCallbackSet:Landroid/util/ArraySet;

    .line 20
    new-instance v0, Lcom/geely/os/wifiap/GlyApHandlerImpl$1;

    invoke-direct {v0, p0}, Lcom/geely/os/wifiap/GlyApHandlerImpl$1;-><init>(Lcom/geely/os/wifiap/GlyApHandlerImpl;)V

    iput-object v0, p0, Lcom/geely/os/wifiap/GlyApHandlerImpl;->externalApStateListener:Lcom/ecarx/xui/adaptapi/wifiap/ExternalApStateListener;

    .line 29
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiAP;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiAP;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/wifiap/GlyApHandlerImpl;->mExternalWifiAP:Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiAP;

    .line 30
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyApHandlerImpl;->externalApStateListener:Lcom/ecarx/xui/adaptapi/wifiap/ExternalApStateListener;

    invoke-virtual {p1, v0}, Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiAP;->registerApStateChangeListener(Lcom/ecarx/xui/adaptapi/wifiap/ExternalApStateListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/geely/os/wifiap/GlyApHandlerImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/geely/os/wifiap/GlyApHandlerImpl;->mCallbackSet:Landroid/util/ArraySet;

    return-object p0
.end method


# virtual methods
.method public addToBlacklist(Lcom/geely/os/wifiap/GlyApClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "client"
        }
    .end annotation

    return-void
.end method

.method public disableWifiAp()V
    .locals 4

    const-string v0, "OneVehicleSDK_GlyApHandlerImpl"

    const-string v1, "disableWifiAp"

    .line 77
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/geely/os/wifiap/GlyApHandlerImpl;->mExternalWifiAP:Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiAP;

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v1}, Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiAP;->stopSoftAp()Z

    move-result v1

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopSoftAp  result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public enableWifiAp()V
    .locals 4

    const-string v0, "OneVehicleSDK_GlyApHandlerImpl"

    const-string v1, "enableWifiAp "

    .line 67
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/geely/os/wifiap/GlyApHandlerImpl;->mExternalWifiAP:Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiAP;

    if-eqz v1, :cond_0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSoftAp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/os/wifiap/GlyApHandlerImpl;->mExternalWifiAP:Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiAP;

    invoke-virtual {v2}, Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiAP;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/geely/os/wifiap/GlyApHandlerImpl;->mExternalWifiAP:Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiAP;

    invoke-virtual {v1}, Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiAP;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiAP;->startSoftAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSoftAp  result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getBlacklist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/os/wifiap/GlyApClient;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxConnectCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getWifiApClients()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/os/wifiap/GlyApClient;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiApHost()Lcom/geely/os/wifiap/GlyApHost;
    .locals 3

    const-string v0, "OneVehicleSDK_GlyApHandlerImpl"

    const-string v1, "getWifiApHost"

    .line 93
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/geely/os/wifiap/GlyApHost;

    const-string v1, "G636"

    const-string v2, "12345678"

    invoke-direct {v0, v1, v2}, Lcom/geely/os/wifiap/GlyApHost;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/geely/os/wifiap/GlyApHandlerImpl;->mExternalWifiAP:Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiAP;

    invoke-virtual {v1}, Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiAP;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 96
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/geely/os/wifiap/GlyApHost;->setApName(Ljava/lang/String;)V

    .line 97
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/geely/os/wifiap/GlyApHost;->setPassword(Ljava/lang/String;)V

    .line 98
    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v0, v1}, Lcom/geely/os/wifiap/GlyApHost;->setFrequency(I)V

    return-object v0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public isDualBandSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isWifiApOpen()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyApHandlerImpl;->mExternalWifiAP:Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiAP;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiAP;->isWifiApEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isWifiApSupport()Z
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyApHandlerImpl;->mExternalWifiAP:Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiAP;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWifiApSupport ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/os/wifiap/GlyApHandlerImpl;->mExternalWifiAP:Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiAP;

    invoke-virtual {v2}, Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiAP;->isWifiAPSupported()Lcom/ecarx/xui/adaptapi/FunctionStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OneVehicleSDK_GlyApHandlerImpl"

    invoke-static {v2, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyApHandlerImpl;->mExternalWifiAP:Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiAP;

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiAP;->isWifiAPSupported()Lcom/ecarx/xui/adaptapi/FunctionStatus;

    move-result-object v0

    sget-object v2, Lcom/ecarx/xui/adaptapi/FunctionStatus;->active:Lcom/ecarx/xui/adaptapi/FunctionStatus;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public registerApCallback(Lcom/geely/os/wifiap/IGlyApHandler$OnApClientDeviceChanged;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyApHandlerImpl;->mCallbackSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "OneVehicleSDK_GlyApHandlerImpl"

    const-string v1, "release"

    .line 41
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyApHandlerImpl;->mCallbackSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public removeFromBlackList(Lcom/geely/os/wifiap/GlyApClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "client"
        }
    .end annotation

    return-void
.end method

.method public setWifiApHost(Lcom/geely/os/wifiap/GlyApHost;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "host"
        }
    .end annotation

    return-void
.end method

.method public unregisterApCallback(Lcom/geely/os/wifiap/IGlyApHandler$OnApClientDeviceChanged;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyApHandlerImpl;->mCallbackSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
