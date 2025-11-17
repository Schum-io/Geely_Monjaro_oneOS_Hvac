.class public Lcom/geely/os/wifiap/GlyWifi6ApImpl;
.super Ljava/lang/Object;
.source "GlyWifi6ApImpl.java"

# interfaces
.implements Lcom/geely/os/wifiap/IGlyWifi6Ap;


# instance fields
.field private connectWatcher:Lcom/ecarx/xui/adaptapi/binder/IConnectable$IConnectWatcher;

.field private final connectWatchers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/wifiap/IGlyWifiApConnectWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectable:Lcom/ecarx/xui/adaptapi/binder/IConnectable;

.field private mWifi6Ap:Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;

.field private wifiAPFrequencyChangeCallBack:Lcom/ecarx/xui/adaptapi/wifiap/IWifiAPHost$IWifiAPFrequencyChangeCallBack;

.field private final wifiAPFrequencyChangeCallBacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/wifiap/IGlyWifiAPFrequencyChangeCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private wifiApClientCallback:Lcom/ecarx/xui/adaptapi/wifiap/IWifiApClientCallback;

.field private final wifiApClientCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/wifiap/IGlyWifiApClientCallback;",
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

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->connectWatchers:Landroid/util/ArraySet;

    .line 20
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->wifiAPFrequencyChangeCallBacks:Landroid/util/ArraySet;

    .line 21
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->wifiApClientCallbacks:Landroid/util/ArraySet;

    .line 23
    new-instance v0, Lcom/geely/os/wifiap/GlyWifi6ApImpl$1;

    invoke-direct {v0, p0}, Lcom/geely/os/wifiap/GlyWifi6ApImpl$1;-><init>(Lcom/geely/os/wifiap/GlyWifi6ApImpl;)V

    iput-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->connectWatcher:Lcom/ecarx/xui/adaptapi/binder/IConnectable$IConnectWatcher;

    .line 35
    new-instance v0, Lcom/geely/os/wifiap/GlyWifi6ApImpl$2;

    invoke-direct {v0, p0}, Lcom/geely/os/wifiap/GlyWifi6ApImpl$2;-><init>(Lcom/geely/os/wifiap/GlyWifi6ApImpl;)V

    iput-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->wifiAPFrequencyChangeCallBack:Lcom/ecarx/xui/adaptapi/wifiap/IWifiAPHost$IWifiAPFrequencyChangeCallBack;

    .line 42
    new-instance v0, Lcom/geely/os/wifiap/GlyWifi6ApImpl$3;

    invoke-direct {v0, p0}, Lcom/geely/os/wifiap/GlyWifi6ApImpl$3;-><init>(Lcom/geely/os/wifiap/GlyWifi6ApImpl;)V

    iput-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->wifiApClientCallback:Lcom/ecarx/xui/adaptapi/wifiap/IWifiApClientCallback;

    .line 72
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->mWifi6Ap:Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;

    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->mConnectable:Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    if-nez v0, :cond_0

    .line 75
    instance-of v0, p1, Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    if-eqz v0, :cond_0

    .line 76
    check-cast p1, Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    iput-object p1, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->mConnectable:Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/geely/os/wifiap/GlyWifi6ApImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->connectWatchers:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$100(Lcom/geely/os/wifiap/GlyWifi6ApImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->wifiAPFrequencyChangeCallBacks:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$200(Lcom/geely/os/wifiap/GlyWifi6ApImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->wifiApClientCallbacks:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$300(Lcom/geely/os/wifiap/GlyWifi6ApImpl;)Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->mWifi6Ap:Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/geely/os/wifiap/GlyWifi6ApImpl;)Lcom/ecarx/xui/adaptapi/wifiap/IWifiAPHost$IWifiAPFrequencyChangeCallBack;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->wifiAPFrequencyChangeCallBack:Lcom/ecarx/xui/adaptapi/wifiap/IWifiAPHost$IWifiAPFrequencyChangeCallBack;

    return-object p0
.end method

.method public static create(Landroid/content/Context;)Lcom/geely/os/wifiap/IGlyWifi6Ap;
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

    .line 85
    new-instance v0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;

    invoke-direct {v0, p0}, Lcom/geely/os/wifiap/GlyWifi6ApImpl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public connect()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->mConnectable:Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/binder/IConnectable;->connect()V

    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->mConnectable:Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/binder/IConnectable;->disconnect()V

    :cond_0
    return-void
.end method

.method public getMaxConnections()I
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->mWifi6Ap:Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;->getMaxConnections()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWifi6ApEnabled()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->mWifi6Ap:Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;->getWifi6ApEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiAPHost()Lcom/geely/os/wifiap/IGlyWifiAPHost;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->mWifi6Ap:Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;->getWifiAPHost()Lcom/ecarx/xui/adaptapi/wifiap/IWifiAPHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Lcom/geely/os/wifiap/GlyWifi6ApImpl$5;

    invoke-direct {v0, p0}, Lcom/geely/os/wifiap/GlyWifi6ApImpl$5;-><init>(Lcom/geely/os/wifiap/GlyWifi6ApImpl;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiApClients()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/os/wifiap/IGlyWifiApClient;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    iget-object v1, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->mWifi6Ap:Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v1}, Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;->getWifiApClients()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 141
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 142
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ecarx/xui/adaptapi/wifiap/IWifiApClient;

    .line 143
    new-instance v3, Lcom/geely/os/wifiap/GlyWifi6ApImpl$4;

    invoke-direct {v3, p0, v2}, Lcom/geely/os/wifiap/GlyWifi6ApImpl$4;-><init>(Lcom/geely/os/wifiap/GlyWifi6ApImpl;Lcom/ecarx/xui/adaptapi/wifiap/IWifiApClient;)V

    .line 159
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isWifiAPSupported()I
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->mWifi6Ap:Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;->isWifiAPSupported()Lcom/ecarx/xui/adaptapi/FunctionStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result v0

    return v0

    .line 207
    :cond_0
    sget v0, Lcom/geely/os/car/GlySupportStatus;->error:I

    return v0
.end method

.method public isWifiSupported()I
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->mWifi6Ap:Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;->isWifiSupported()Lcom/ecarx/xui/adaptapi/FunctionStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result v0

    return v0

    .line 215
    :cond_0
    sget v0, Lcom/geely/os/car/GlySupportStatus;->error:I

    return v0
.end method

.method public registerConnectWatcher(Lcom/geely/os/wifiap/IGlyWifiApConnectWatcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "watcher"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->mConnectable:Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->connectWatchers:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object p1, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->mConnectable:Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->connectWatcher:Lcom/ecarx/xui/adaptapi/binder/IConnectable$IConnectWatcher;

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/binder/IConnectable;->registerConnectWatcher(Lcom/ecarx/xui/adaptapi/binder/IConnectable$IConnectWatcher;)V

    :cond_0
    return-void
.end method

.method public setMaxConnections(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->mWifi6Ap:Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0, p1}, Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;->setMaxConnections(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setWifi6ApConfiguration(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ssid",
            "pwd",
            "frenquency",
            "channel"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->mWifi6Ap:Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;->setWifi6ApConfiguration(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setWifi6ApEnabled(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->mWifi6Ap:Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0, p1}, Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;->setWifi6ApEnabled(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setWifiApClientCallback(Lcom/geely/os/wifiap/IGlyWifiApClientCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->mWifi6Ap:Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->wifiApClientCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object p1, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->mWifi6Ap:Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;

    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->wifiApClientCallback:Lcom/ecarx/xui/adaptapi/wifiap/IWifiApClientCallback;

    invoke-virtual {p1, v0}, Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;->setWifiApClientCallback(Lcom/ecarx/xui/adaptapi/wifiap/IWifiApClientCallback;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public unregisterConnectWatcher(Lcom/geely/os/wifiap/IGlyWifiApConnectWatcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "watcher"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->mConnectable:Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/binder/IConnectable;->unregisterConnectWatcher()V

    .line 116
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->connectWatchers:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unsetWifiApClientCallback(Lcom/geely/os/wifiap/IGlyWifiApClientCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->mWifi6Ap:Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->wifiApClientCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 255
    iget-object p1, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->mWifi6Ap:Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;

    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->wifiApClientCallback:Lcom/ecarx/xui/adaptapi/wifiap/IWifiApClientCallback;

    invoke-virtual {p1, v0}, Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;->unsetWifiApClientCallback(Lcom/ecarx/xui/adaptapi/wifiap/IWifiApClientCallback;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
