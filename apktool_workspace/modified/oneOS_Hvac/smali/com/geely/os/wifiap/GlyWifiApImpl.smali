.class public Lcom/geely/os/wifiap/GlyWifiApImpl;
.super Ljava/lang/Object;
.source "GlyWifiApImpl.java"

# interfaces
.implements Lcom/geely/os/wifiap/IGlyWifiAp;


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

.field private mWifiAp:Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;

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

    iput-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->connectWatchers:Landroid/util/ArraySet;

    .line 20
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->wifiAPFrequencyChangeCallBacks:Landroid/util/ArraySet;

    .line 21
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->wifiApClientCallbacks:Landroid/util/ArraySet;

    .line 23
    new-instance v0, Lcom/geely/os/wifiap/GlyWifiApImpl$1;

    invoke-direct {v0, p0}, Lcom/geely/os/wifiap/GlyWifiApImpl$1;-><init>(Lcom/geely/os/wifiap/GlyWifiApImpl;)V

    iput-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->connectWatcher:Lcom/ecarx/xui/adaptapi/binder/IConnectable$IConnectWatcher;

    .line 35
    new-instance v0, Lcom/geely/os/wifiap/GlyWifiApImpl$2;

    invoke-direct {v0, p0}, Lcom/geely/os/wifiap/GlyWifiApImpl$2;-><init>(Lcom/geely/os/wifiap/GlyWifiApImpl;)V

    iput-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->wifiAPFrequencyChangeCallBack:Lcom/ecarx/xui/adaptapi/wifiap/IWifiAPHost$IWifiAPFrequencyChangeCallBack;

    .line 42
    new-instance v0, Lcom/geely/os/wifiap/GlyWifiApImpl$3;

    invoke-direct {v0, p0}, Lcom/geely/os/wifiap/GlyWifiApImpl$3;-><init>(Lcom/geely/os/wifiap/GlyWifiApImpl;)V

    iput-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->wifiApClientCallback:Lcom/ecarx/xui/adaptapi/wifiap/IWifiApClientCallback;

    .line 72
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->mWifiAp:Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;

    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->mConnectable:Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    if-nez v0, :cond_0

    .line 75
    instance-of v0, p1, Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    if-eqz v0, :cond_0

    .line 76
    check-cast p1, Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    iput-object p1, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->mConnectable:Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/geely/os/wifiap/GlyWifiApImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->connectWatchers:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$100(Lcom/geely/os/wifiap/GlyWifiApImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->wifiAPFrequencyChangeCallBacks:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$200(Lcom/geely/os/wifiap/GlyWifiApImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->wifiApClientCallbacks:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$300(Lcom/geely/os/wifiap/GlyWifiApImpl;)Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->mWifiAp:Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;

    return-object p0
.end method

.method static synthetic access$400(Lcom/geely/os/wifiap/GlyWifiApImpl;)Lcom/ecarx/xui/adaptapi/wifiap/IWifiAPHost$IWifiAPFrequencyChangeCallBack;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->wifiAPFrequencyChangeCallBack:Lcom/ecarx/xui/adaptapi/wifiap/IWifiAPHost$IWifiAPFrequencyChangeCallBack;

    return-object p0
.end method

.method public static create(Landroid/content/Context;)Lcom/geely/os/wifiap/IGlyWifiAp;
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
    new-instance v0, Lcom/geely/os/wifiap/GlyWifiApImpl;

    invoke-direct {v0, p0}, Lcom/geely/os/wifiap/GlyWifiApImpl;-><init>(Landroid/content/Context;)V

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
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->mConnectable:Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/binder/IConnectable;->connect()V

    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->mConnectable:Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/binder/IConnectable;->disconnect()V

    :cond_0
    return-void
.end method

.method public getMaxConnections()I
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->mWifiAp:Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;->getMaxConnections()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiAPHost()Lcom/geely/os/wifiap/IGlyWifiAPHost;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->mWifiAp:Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;->getWifiAPHost()Lcom/ecarx/xui/adaptapi/wifiap/IWifiAPHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Lcom/geely/os/wifiap/GlyWifiApImpl$5;

    invoke-direct {v0, p0}, Lcom/geely/os/wifiap/GlyWifiApImpl$5;-><init>(Lcom/geely/os/wifiap/GlyWifiApImpl;)V

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

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    iget-object v1, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->mWifiAp:Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v1}, Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;->getWifiApClients()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 133
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 134
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ecarx/xui/adaptapi/wifiap/IWifiApClient;

    .line 135
    new-instance v3, Lcom/geely/os/wifiap/GlyWifiApImpl$4;

    invoke-direct {v3, p0, v2}, Lcom/geely/os/wifiap/GlyWifiApImpl$4;-><init>(Lcom/geely/os/wifiap/GlyWifiApImpl;Lcom/ecarx/xui/adaptapi/wifiap/IWifiApClient;)V

    .line 151
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isWifi5GModeSupported()I
    .locals 1

    .line 204
    sget v0, Lcom/geely/os/car/GlySupportStatus;->error:I

    return v0
.end method

.method public isWifiAPSupported()I
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->mWifiAp:Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;->isWifiAPSupported()Lcom/ecarx/xui/adaptapi/FunctionStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->mWifiAp:Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;->isWifiAPSupported()Lcom/ecarx/xui/adaptapi/FunctionStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result v0

    return v0

    .line 199
    :cond_0
    sget v0, Lcom/geely/os/car/GlySupportStatus;->error:I

    return v0
.end method

.method public isWifiSupported()I
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->mWifiAp:Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;->isWifiSupported()Lcom/ecarx/xui/adaptapi/FunctionStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->mWifiAp:Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;->isWifiSupported()Lcom/ecarx/xui/adaptapi/FunctionStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result v0

    return v0

    .line 212
    :cond_0
    sget v0, Lcom/geely/os/car/GlySupportStatus;->error:I

    return v0
.end method

.method public query5GMode()Z
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->mWifiAp:Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;->query5GMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

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
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->mConnectable:Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->connectWatchers:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object p1, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->mConnectable:Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->connectWatcher:Lcom/ecarx/xui/adaptapi/binder/IConnectable$IConnectWatcher;

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/binder/IConnectable;->registerConnectWatcher(Lcom/ecarx/xui/adaptapi/binder/IConnectable$IConnectWatcher;)V

    :cond_0
    return-void
.end method

.method public set5GMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->mWifiAp:Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0, p1}, Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;->set5GMode(Z)V

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

    .line 232
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->mWifiAp:Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0, p1}, Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;->setMaxConnections(I)Z

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

    .line 240
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->mWifiAp:Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->wifiApClientCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object p1, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->mWifiAp:Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;

    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->wifiApClientCallback:Lcom/ecarx/xui/adaptapi/wifiap/IWifiApClientCallback;

    invoke-virtual {p1, v0}, Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;->setWifiApClientCallback(Lcom/ecarx/xui/adaptapi/wifiap/IWifiApClientCallback;)Z

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
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->mConnectable:Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/binder/IConnectable;->unregisterConnectWatcher()V

    .line 116
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->connectWatchers:Landroid/util/ArraySet;

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

    .line 249
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->mWifiAp:Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->wifiApClientCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 251
    iget-object p1, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->mWifiAp:Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;

    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl;->wifiApClientCallback:Lcom/ecarx/xui/adaptapi/wifiap/IWifiApClientCallback;

    invoke-virtual {p1, v0}, Lcom/ecarx/xui/adaptapi/wifiap/WifiAp;->unsetWifiApClientCallback(Lcom/ecarx/xui/adaptapi/wifiap/IWifiApClientCallback;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
