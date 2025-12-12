.class Lcom/geely/os/system/GlySystemModeImpl$2;
.super Ljava/lang/Object;
.source "GlySystemModeImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode$DIMAnimationStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/system/GlySystemModeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/system/GlySystemModeImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/system/GlySystemModeImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/geely/os/system/GlySystemModeImpl$2;->this$0:Lcom/geely/os/system/GlySystemModeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onDIMAnimationStateResponse$0(ILcom/geely/os/system/IGlyDIMAnimationStateCallback;)V
    .locals 0

    .line 29
    invoke-interface {p1, p0}, Lcom/geely/os/system/IGlyDIMAnimationStateCallback;->onDIMAnimationStateResponse(I)V

    return-void
.end method


# virtual methods
.method public onDIMAnimationStateResponse(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDIMAnimationStateResponse state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlySystemModeImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl$2;->this$0:Lcom/geely/os/system/GlySystemModeImpl;

    invoke-static {v0}, Lcom/geely/os/system/GlySystemModeImpl;->access$100(Lcom/geely/os/system/GlySystemModeImpl;)Landroidx/collection/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/system/-$$Lambda$GlySystemModeImpl$2$rT7q663vIpHh6XDuTdhhNutSX-A;

    invoke-direct {v1, p1}, Lcom/geely/os/system/-$$Lambda$GlySystemModeImpl$2$rT7q663vIpHh6XDuTdhhNutSX-A;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
