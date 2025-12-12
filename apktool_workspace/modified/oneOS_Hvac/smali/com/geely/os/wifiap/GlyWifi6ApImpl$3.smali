.class Lcom/geely/os/wifiap/GlyWifi6ApImpl$3;
.super Ljava/lang/Object;
.source "GlyWifi6ApImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/wifiap/IWifiApClientCallback;


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

    .line 42
    iput-object p1, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl$3;->this$0:Lcom/geely/os/wifiap/GlyWifi6ApImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onWifiApClientChanged$0(Ljava/util/List;Lcom/geely/os/wifiap/IGlyWifiApClientCallback;)V
    .locals 0

    .line 67
    invoke-interface {p1, p0}, Lcom/geely/os/wifiap/IGlyWifiApClientCallback;->onWifiApClientChanged(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onWifiApClientChanged(Ljava/util/List;)V
    .locals 3
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
            "Lcom/ecarx/xui/adaptapi/wifiap/IWifiApClient;",
            ">;)V"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/xui/adaptapi/wifiap/IWifiApClient;

    .line 48
    new-instance v2, Lcom/geely/os/wifiap/GlyWifi6ApImpl$3$1;

    invoke-direct {v2, p0, v1}, Lcom/geely/os/wifiap/GlyWifi6ApImpl$3$1;-><init>(Lcom/geely/os/wifiap/GlyWifi6ApImpl$3;Lcom/ecarx/xui/adaptapi/wifiap/IWifiApClient;)V

    .line 64
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/geely/os/wifiap/GlyWifi6ApImpl$3;->this$0:Lcom/geely/os/wifiap/GlyWifi6ApImpl;

    invoke-static {p1}, Lcom/geely/os/wifiap/GlyWifi6ApImpl;->access$200(Lcom/geely/os/wifiap/GlyWifi6ApImpl;)Landroid/util/ArraySet;

    move-result-object p1

    new-instance v1, Lcom/geely/os/wifiap/-$$Lambda$GlyWifi6ApImpl$3$96jmsvVz32uN6MbwsZ4lHJ9Y5Ds;

    invoke-direct {v1, v0}, Lcom/geely/os/wifiap/-$$Lambda$GlyWifi6ApImpl$3$96jmsvVz32uN6MbwsZ4lHJ9Y5Ds;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
