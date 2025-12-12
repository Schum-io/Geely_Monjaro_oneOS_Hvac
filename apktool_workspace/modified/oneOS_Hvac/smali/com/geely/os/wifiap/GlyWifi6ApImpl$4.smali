.class Lcom/geely/os/wifiap/GlyWifi6ApImpl$4;
.super Ljava/lang/Object;
.source "GlyWifi6ApImpl.java"

# interfaces
.implements Lcom/geely/os/wifiap/IGlyWifiApClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/wifiap/GlyWifi6ApImpl;->getWifiApClients()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/wifiap/GlyWifi6ApImpl;

.field final synthetic val$wifiApClient:Lcom/ecarx/xui/adaptapi/wifiap/IWifiApClient;


# direct methods
.method constructor <init>(Lcom/geely/os/wifiap/GlyWifi6ApImpl;Lcom/ecarx/xui/adaptapi/wifiap/IWifiApClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$wifiApClient"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl$4;->this$0:Lcom/geely/os/wifiap/GlyWifi6ApImpl;

    iput-object p2, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl$4;->val$wifiApClient:Lcom/ecarx/xui/adaptapi/wifiap/IWifiApClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIP()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl$4;->val$wifiApClient:Lcom/ecarx/xui/adaptapi/wifiap/IWifiApClient;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/wifiap/IWifiApClient;->getIP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl$4;->val$wifiApClient:Lcom/ecarx/xui/adaptapi/wifiap/IWifiApClient;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/wifiap/IWifiApClient;->getMac()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl$4;->val$wifiApClient:Lcom/ecarx/xui/adaptapi/wifiap/IWifiApClient;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/wifiap/IWifiApClient;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
