.class Lcom/geely/os/system/GlySystemModeImpl$3;
.super Ljava/lang/Object;
.source "GlySystemModeImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode$DIMAnimationStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/system/GlySystemModeImpl;->setProvisionStatus(ILcom/geely/os/system/IGlyDIMAnimationStateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/system/GlySystemModeImpl;

.field final synthetic val$callback:Lcom/geely/os/system/IGlyDIMAnimationStateCallback;


# direct methods
.method constructor <init>(Lcom/geely/os/system/GlySystemModeImpl;Lcom/geely/os/system/IGlyDIMAnimationStateCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/geely/os/system/GlySystemModeImpl$3;->this$0:Lcom/geely/os/system/GlySystemModeImpl;

    iput-object p2, p0, Lcom/geely/os/system/GlySystemModeImpl$3;->val$callback:Lcom/geely/os/system/IGlyDIMAnimationStateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 133
    iget-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl$3;->val$callback:Lcom/geely/os/system/IGlyDIMAnimationStateCallback;

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProvisionStatus onDIMAnimationStateResponse state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlySystemModeImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl$3;->val$callback:Lcom/geely/os/system/IGlyDIMAnimationStateCallback;

    invoke-interface {v0, p1}, Lcom/geely/os/system/IGlyDIMAnimationStateCallback;->onDIMAnimationStateResponse(I)V

    :cond_0
    return-void
.end method
