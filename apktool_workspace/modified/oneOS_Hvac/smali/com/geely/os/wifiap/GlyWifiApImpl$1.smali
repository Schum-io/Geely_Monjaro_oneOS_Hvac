.class Lcom/geely/os/wifiap/GlyWifiApImpl$1;
.super Ljava/lang/Object;
.source "GlyWifiApImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/binder/IConnectable$IConnectWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/wifiap/GlyWifiApImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/wifiap/GlyWifiApImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/wifiap/GlyWifiApImpl;)V
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
    iput-object p1, p0, Lcom/geely/os/wifiap/GlyWifiApImpl$1;->this$0:Lcom/geely/os/wifiap/GlyWifiApImpl;

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
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl$1;->this$0:Lcom/geely/os/wifiap/GlyWifiApImpl;

    invoke-static {v0}, Lcom/geely/os/wifiap/GlyWifiApImpl;->access$000(Lcom/geely/os/wifiap/GlyWifiApImpl;)Landroid/util/ArraySet;

    move-result-object v0

    sget-object v1, Lcom/geely/os/wifiap/-$$Lambda$GlyWifiApImpl$1$j5BIYtkkQzsO_9speVTvtcYBj7s;->INSTANCE:Lcom/geely/os/wifiap/-$$Lambda$GlyWifiApImpl$1$j5BIYtkkQzsO_9speVTvtcYBj7s;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onDisConnected()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl$1;->this$0:Lcom/geely/os/wifiap/GlyWifiApImpl;

    invoke-static {v0}, Lcom/geely/os/wifiap/GlyWifiApImpl;->access$000(Lcom/geely/os/wifiap/GlyWifiApImpl;)Landroid/util/ArraySet;

    move-result-object v0

    sget-object v1, Lcom/geely/os/wifiap/-$$Lambda$GlyWifiApImpl$1$7cVp5cJbUf12U_Cnm76ZazBOU58;->INSTANCE:Lcom/geely/os/wifiap/-$$Lambda$GlyWifiApImpl$1$7cVp5cJbUf12U_Cnm76ZazBOU58;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
