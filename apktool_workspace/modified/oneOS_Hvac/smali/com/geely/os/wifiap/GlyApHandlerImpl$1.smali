.class Lcom/geely/os/wifiap/GlyApHandlerImpl$1;
.super Ljava/lang/Object;
.source "GlyApHandlerImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/wifiap/ExternalApStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/wifiap/GlyApHandlerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/wifiap/GlyApHandlerImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/wifiap/GlyApHandlerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/geely/os/wifiap/GlyApHandlerImpl$1;->this$0:Lcom/geely/os/wifiap/GlyApHandlerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onApStateChanged$0(ILcom/geely/os/wifiap/IGlyApHandler$OnApClientDeviceChanged;)V
    .locals 0

    .line 24
    invoke-interface {p1, p0}, Lcom/geely/os/wifiap/IGlyApHandler$OnApClientDeviceChanged;->onApStateChanged(I)V

    return-void
.end method


# virtual methods
.method public onApStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyApHandlerImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyApHandlerImpl$1;->this$0:Lcom/geely/os/wifiap/GlyApHandlerImpl;

    invoke-static {v0}, Lcom/geely/os/wifiap/GlyApHandlerImpl;->access$000(Lcom/geely/os/wifiap/GlyApHandlerImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/wifiap/-$$Lambda$GlyApHandlerImpl$1$3dRqwdBgloq0soF_RNyBEu7nBZs;

    invoke-direct {v1, p1}, Lcom/geely/os/wifiap/-$$Lambda$GlyApHandlerImpl$1$3dRqwdBgloq0soF_RNyBEu7nBZs;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
