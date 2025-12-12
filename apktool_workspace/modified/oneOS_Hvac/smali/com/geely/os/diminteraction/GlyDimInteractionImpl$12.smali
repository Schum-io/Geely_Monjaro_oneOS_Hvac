.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/geely/os/diminteraction/IGlyPhoneCallInteraction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->getPhoneCallInteraction()Lcom/geely/os/diminteraction/IGlyPhoneCallInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1395
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerPhoneCallback(Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1398
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    iget-object v0, v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iPhoneCallInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction$IPhoneCallInteractionCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1399
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1200(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1400
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1300(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    iget-object v0, v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iPhoneCallInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction$IPhoneCallInteractionCallback;

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction;->registerPhoneCallback(Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction$IPhoneCallInteractionCallback;)V

    :cond_0
    return-void
.end method

.method public unRegisterPhoneCallback(Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1406
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    iget-object v0, v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iPhoneCallInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction$IPhoneCallInteractionCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1200(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1408
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1300(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    iget-object v0, v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iPhoneCallInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction$IPhoneCallInteractionCallback;

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction;->unRegisterPhoneCallback(Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction$IPhoneCallInteractionCallback;)V

    :cond_0
    return-void
.end method

.method public updateCallInfo(Lcom/geely/os/diminteraction/IGlyCallInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callInfo"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1415
    new-instance v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12$1;

    invoke-direct {v0, p0, p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12$1;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12;Lcom/geely/os/diminteraction/IGlyCallInfo;)V

    .line 1481
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1300(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction;->updateCallInfo(Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction$ICallInfo;)V

    :cond_0
    return-void
.end method

.method public updateConnectedMobileDeviceState(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "deviceName",
            "batteryLevel",
            "signalLevel"
        }
    .end annotation

    .line 1487
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1300(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction;->updateConnectedMobileDeviceState(Ljava/lang/String;II)V

    return-void
.end method

.method public updateSecondCallInfo(Lcom/geely/os/diminteraction/IGlyCallInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callInfo"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1493
    new-instance v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12$2;

    invoke-direct {v0, p0, p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12$2;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12;Lcom/geely/os/diminteraction/IGlyCallInfo;)V

    .line 1559
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1300(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction;->updateSecondCallInfo(Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction$ICallInfo;)V

    :cond_0
    return-void
.end method

.method public writeCallLog2DBCompleted()V
    .locals 1

    .line 1565
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1300(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction;->writeCallLog2DBCompleted()V

    return-void
.end method

.method public writeContact2DBCompleted()V
    .locals 1

    .line 1570
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1300(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction;->writeContact2DBCompleted()V

    return-void
.end method
