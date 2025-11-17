.class Lcom/geely/os/wifiap/GlyWifi6ApImpl$1;
.super Ljava/lang/Object;
.source "GlyWifi6ApImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/binder/IConnectable$IConnectWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/wifiap/GlyWifi6ApImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/wifiap/GlyWifi6ApImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/wifiap/GlyWifi6ApImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl$1;->this$0:Lcom/geely/os/wifiap/GlyWifi6ApImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onConnected$0(Lcom/geely/os/wifiap/IGlyWifiApConnectWatcher;)V
    .locals 0

    .line 26
    invoke-interface {p0}, Lcom/geely/os/wifiap/IGlyWifiApConnectWatcher;->onConnected()V

    return-void
.end method

.method static synthetic lambda$onDisConnected$1(Lcom/geely/os/wifiap/IGlyWifiApConnectWatcher;)V
    .locals 0

    .line 31
    invoke-interface {p0}, Lcom/geely/os/wifiap/IGlyWifiApConnectWatcher;->onConnected()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl$1;->this$0:Lcom/geely/os/wifiap/GlyWifi6ApImpl;

    invoke-static {v0}, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->access$000(Lcom/geely/os/wifiap/GlyWifi6ApImpl;)Landroid/util/ArraySet;

    move-result-object v0

    sget-object v1, Lcom/geely/os/wifiap/-$$Lambda$GlyWifi6ApImpl$1$D72XjVJAi_eWqCpu0-WdKvQOwh8;->INSTANCE:Lcom/geely/os/wifiap/-$$Lambda$GlyWifi6ApImpl$1$D72XjVJAi_eWqCpu0-WdKvQOwh8;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onDisConnected()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl$1;->this$0:Lcom/geely/os/wifiap/GlyWifi6ApImpl;

    invoke-static {v0}, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->access$000(Lcom/geely/os/wifiap/GlyWifi6ApImpl;)Landroid/util/ArraySet;

    move-result-object v0

    sget-object v1, Lcom/geely/os/wifiap/-$$Lambda$GlyWifi6ApImpl$1$oYLBkC8s7rV88EaRxecrQLwDmbM;->INSTANCE:Lcom/geely/os/wifiap/-$$Lambda$GlyWifi6ApImpl$1$oYLBkC8s7rV88EaRxecrQLwDmbM;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
