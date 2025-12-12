.class Lcom/geely/os/wifiap/GlyWifiApImpl$2;
.super Ljava/lang/Object;
.source "GlyWifiApImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/wifiap/IWifiAPHost$IWifiAPFrequencyChangeCallBack;


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

    .line 35
    iput-object p1, p0, Lcom/geely/os/wifiap/GlyWifiApImpl$2;->this$0:Lcom/geely/os/wifiap/GlyWifiApImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onWifiAPFrequencyChange$0(ILcom/geely/os/wifiap/IGlyWifiAPFrequencyChangeCallBack;)V
    .locals 0

    .line 38
    invoke-interface {p1, p0}, Lcom/geely/os/wifiap/IGlyWifiAPFrequencyChangeCallBack;->onWifiAPFrequencyChange(I)V

    return-void
.end method


# virtual methods
.method public onWifiAPFrequencyChange(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyWifiApImpl$2;->this$0:Lcom/geely/os/wifiap/GlyWifiApImpl;

    invoke-static {v0}, Lcom/geely/os/wifiap/GlyWifiApImpl;->access$100(Lcom/geely/os/wifiap/GlyWifiApImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/wifiap/-$$Lambda$GlyWifiApImpl$2$0y7TBMbpxvpb-_hzyemdM2cT090;

    invoke-direct {v1, p1}, Lcom/geely/os/wifiap/-$$Lambda$GlyWifiApImpl$2$0y7TBMbpxvpb-_hzyemdM2cT090;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
