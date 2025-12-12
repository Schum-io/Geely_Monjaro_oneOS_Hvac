.class public Lcom/geely/os/wlan/GlyWlanHandlerImpl;
.super Ljava/lang/Object;
.source "GlyWlanHandlerImpl.java"

# interfaces
.implements Lcom/geely/os/wlan/IGlyWlanHandler;


# instance fields
.field private externalWifiManager:Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiManager;

.field private wifiStateListener:Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiStateListener;

.field private final wlanCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/wlan/IGlyWlanHandler$IGlyWlanCallback;",
            ">;"
        }
    .end annotation
.end field


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

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/wlan/GlyWlanHandlerImpl;->wlanCallbacks:Landroid/util/ArraySet;

    .line 19
    new-instance v0, Lcom/geely/os/wlan/GlyWlanHandlerImpl$1;

    invoke-direct {v0, p0}, Lcom/geely/os/wlan/GlyWlanHandlerImpl$1;-><init>(Lcom/geely/os/wlan/GlyWlanHandlerImpl;)V

    iput-object v0, p0, Lcom/geely/os/wlan/GlyWlanHandlerImpl;->wifiStateListener:Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiStateListener;

    .line 33
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiManager;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiManager;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/wlan/GlyWlanHandlerImpl;->externalWifiManager:Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiManager;

    if-eqz p1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/geely/os/wlan/GlyWlanHandlerImpl;->wifiStateListener:Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiStateListener;

    invoke-virtual {p1, v0}, Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiManager;->registerWifiStateListener(Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiStateListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/geely/os/wlan/GlyWlanHandlerImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/geely/os/wlan/GlyWlanHandlerImpl;->wlanCallbacks:Landroid/util/ArraySet;

    return-object p0
.end method


# virtual methods
.method public connectEncryptWifi(Lcom/geely/os/wlan/GlyWifiInfo;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "wifiInfo",
            "psw"
        }
    .end annotation

    return-void
.end method

.method public connectOpenWifi(Lcom/geely/os/wlan/GlyWifiInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wifiInfo"
        }
    .end annotation

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, p1, v0}, Lcom/geely/os/wlan/GlyWlanHandlerImpl;->connectEncryptWifi(Lcom/geely/os/wlan/GlyWifiInfo;Ljava/lang/String;)V

    return-void
.end method

.method public connectSavedWifi(Lcom/geely/os/wlan/GlyWifiInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wifiInfo"
        }
    .end annotation

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, p1, v0}, Lcom/geely/os/wlan/GlyWlanHandlerImpl;->connectEncryptWifi(Lcom/geely/os/wlan/GlyWifiInfo;Ljava/lang/String;)V

    return-void
.end method

.method public disconnectWifi(Lcom/geely/os/wlan/GlyWifiInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wifiInfo"
        }
    .end annotation

    return-void
.end method

.method public forgetWifi(Lcom/geely/os/wlan/GlyWifiInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wifiInfo"
        }
    .end annotation

    return-void
.end method

.method public getAvailableWifiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/os/wlan/GlyWifiInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSavedWifiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/os/wlan/GlyWifiInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public isWlanFuncSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isWlanOpen()Z
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/geely/os/wlan/GlyWlanHandlerImpl;->externalWifiManager:Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiManager;->getWifiState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWifiState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/os/wlan/GlyWlanHandlerImpl;->externalWifiManager:Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiManager;

    invoke-virtual {v2}, Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiManager;->getWifiState()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OneVehicleSDK_GlyWlanHandlerImpl"

    invoke-static {v2, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method public registerWlanCallback(Lcom/geely/os/wlan/IGlyWlanHandler$IGlyWlanCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/geely/os/wlan/GlyWlanHandlerImpl;->wlanCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "OneVehicleSDK_GlyWlanHandlerImpl"

    const-string v1, "release"

    .line 46
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/geely/os/wlan/GlyWlanHandlerImpl;->externalWifiManager:Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiManager;

    if-eqz v0, :cond_0

    .line 48
    iget-object v1, p0, Lcom/geely/os/wlan/GlyWlanHandlerImpl;->wifiStateListener:Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiStateListener;

    invoke-virtual {v0, v1}, Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiManager;->unregisterWifiStateListener(Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiStateListener;)V

    :cond_0
    return-void
.end method

.method public setWlanOnOff(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onOff"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/geely/os/wlan/GlyWlanHandlerImpl;->externalWifiManager:Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiManager;

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWlanOnOff("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyWlanHandlerImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/geely/os/wlan/GlyWlanHandlerImpl;->externalWifiManager:Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiManager;

    invoke-virtual {v0, p1}, Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiManager;->setWifiEnabled(Z)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public startScan()V
    .locals 0

    return-void
.end method

.method public unregisterWlanCallback(Lcom/geely/os/wlan/IGlyWlanHandler$IGlyWlanCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/geely/os/wlan/GlyWlanHandlerImpl;->wlanCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
