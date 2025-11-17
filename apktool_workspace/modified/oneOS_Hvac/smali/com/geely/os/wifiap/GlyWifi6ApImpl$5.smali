.class Lcom/geely/os/wifiap/GlyWifi6ApImpl$5;
.super Ljava/lang/Object;
.source "GlyWifi6ApImpl.java"

# interfaces
.implements Lcom/geely/os/wifiap/IGlyWifiAPHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/wifiap/GlyWifi6ApImpl;->getWifiAPHost()Lcom/geely/os/wifiap/IGlyWifiAPHost;
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

    .line 169
    iput-object p1, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl$5;->this$0:Lcom/geely/os/wifiap/GlyWifi6ApImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentFrequencyMode()I
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl$5;->this$0:Lcom/geely/os/wifiap/GlyWifi6ApImpl;

    invoke-static {v0}, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->access$300(Lcom/geely/os/wifiap/GlyWifi6ApImpl;)Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;->getWifiAPHost()Lcom/ecarx/xui/adaptapi/wifiap/IWifiAPHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/wifiap/IWifiAPHost;->getCurrentFrequencyMode()I

    move-result v0

    return v0
.end method

.method public getSupportedWifiAPFrequency()[I
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl$5;->this$0:Lcom/geely/os/wifiap/GlyWifi6ApImpl;

    invoke-static {v0}, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->access$300(Lcom/geely/os/wifiap/GlyWifi6ApImpl;)Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;->getWifiAPHost()Lcom/ecarx/xui/adaptapi/wifiap/IWifiAPHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/wifiap/IWifiAPHost;->getSupportedWifiAPFrequency()[I

    move-result-object v0

    return-object v0
.end method

.method public registerWifiAPFrequencyCallBack(Lcom/geely/os/wifiap/IGlyWifiAPFrequencyChangeCallBack;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callBack"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl$5;->this$0:Lcom/geely/os/wifiap/GlyWifi6ApImpl;

    invoke-static {v0}, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->access$100(Lcom/geely/os/wifiap/GlyWifi6ApImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object p1, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl$5;->this$0:Lcom/geely/os/wifiap/GlyWifi6ApImpl;

    invoke-static {p1}, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->access$300(Lcom/geely/os/wifiap/GlyWifi6ApImpl;)Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;->getWifiAPHost()Lcom/ecarx/xui/adaptapi/wifiap/IWifiAPHost;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl$5;->this$0:Lcom/geely/os/wifiap/GlyWifi6ApImpl;

    invoke-static {v0}, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->access$400(Lcom/geely/os/wifiap/GlyWifi6ApImpl;)Lcom/ecarx/xui/adaptapi/wifiap/IWifiAPHost$IWifiAPFrequencyChangeCallBack;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/wifiap/IWifiAPHost;->registerWifiAPFrequencyCallBack(Lcom/ecarx/xui/adaptapi/wifiap/IWifiAPHost$IWifiAPFrequencyChangeCallBack;)Z

    move-result p1

    return p1
.end method

.method public setFrequencyMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl$5;->this$0:Lcom/geely/os/wifiap/GlyWifi6ApImpl;

    invoke-static {v0}, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->access$300(Lcom/geely/os/wifiap/GlyWifi6ApImpl;)Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;->getWifiAPHost()Lcom/ecarx/xui/adaptapi/wifiap/IWifiAPHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/wifiap/IWifiAPHost;->setFrequencyMode(I)V

    return-void
.end method

.method public unregisterWifiAPFrequencyCallBack(Lcom/geely/os/wifiap/IGlyWifiAPFrequencyChangeCallBack;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callBack"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl$5;->this$0:Lcom/geely/os/wifiap/GlyWifi6ApImpl;

    invoke-static {v0}, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->access$100(Lcom/geely/os/wifiap/GlyWifi6ApImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 194
    iget-object p1, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl$5;->this$0:Lcom/geely/os/wifiap/GlyWifi6ApImpl;

    invoke-static {p1}, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->access$300(Lcom/geely/os/wifiap/GlyWifi6ApImpl;)Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/wifiap/Wifi6Ap;->getWifiAPHost()Lcom/ecarx/xui/adaptapi/wifiap/IWifiAPHost;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl$5;->this$0:Lcom/geely/os/wifiap/GlyWifi6ApImpl;

    invoke-static {v0}, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->access$400(Lcom/geely/os/wifiap/GlyWifi6ApImpl;)Lcom/ecarx/xui/adaptapi/wifiap/IWifiAPHost$IWifiAPFrequencyChangeCallBack;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/wifiap/IWifiAPHost;->unregisterWifiAPFrequencyCallBack(Lcom/ecarx/xui/adaptapi/wifiap/IWifiAPHost$IWifiAPFrequencyChangeCallBack;)Z

    move-result p1

    return p1
.end method
