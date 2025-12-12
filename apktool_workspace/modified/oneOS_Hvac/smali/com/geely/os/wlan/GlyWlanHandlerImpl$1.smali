.class Lcom/geely/os/wlan/GlyWlanHandlerImpl$1;
.super Ljava/lang/Object;
.source "GlyWlanHandlerImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/wifiap/ExternalWifiStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/wlan/GlyWlanHandlerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/wlan/GlyWlanHandlerImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/wlan/GlyWlanHandlerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/geely/os/wlan/GlyWlanHandlerImpl$1;->this$0:Lcom/geely/os/wlan/GlyWlanHandlerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onWifiStateChanged$0(ILcom/geely/os/wlan/IGlyWlanHandler$IGlyWlanCallback;)V
    .locals 0

    .line 28
    invoke-interface {p1, p0}, Lcom/geely/os/wlan/IGlyWlanHandler$IGlyWlanCallback;->onWlanStateChanged(I)V

    return-void
.end method


# virtual methods
.method public onWifiStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wifiState"
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wifiState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyWlanHandlerImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/geely/os/wlan/GlyWlanHandlerImpl$1;->this$0:Lcom/geely/os/wlan/GlyWlanHandlerImpl;

    invoke-static {v0}, Lcom/geely/os/wlan/GlyWlanHandlerImpl;->access$000(Lcom/geely/os/wlan/GlyWlanHandlerImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/wlan/-$$Lambda$GlyWlanHandlerImpl$1$y_dzO-tr83FJr6mPQvmuhaS5zCI;

    invoke-direct {v1, p1}, Lcom/geely/os/wlan/-$$Lambda$GlyWlanHandlerImpl$1$y_dzO-tr83FJr6mPQvmuhaS5zCI;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
