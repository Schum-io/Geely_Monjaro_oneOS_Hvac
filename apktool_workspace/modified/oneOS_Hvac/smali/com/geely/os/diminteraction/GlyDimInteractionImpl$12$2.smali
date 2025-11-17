.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12$2;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction$ICallInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12;->updateSecondCallInfo(Lcom/geely/os/diminteraction/IGlyCallInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12;

.field final synthetic val$callInfo:Lcom/geely/os/diminteraction/IGlyCallInfo;


# direct methods
.method constructor <init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12;Lcom/geely/os/diminteraction/IGlyCallInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$callInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1493
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12$2;->this$1:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12;

    iput-object p2, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12$2;->val$callInfo:Lcom/geely/os/diminteraction/IGlyCallInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiveCallId()I
    .locals 1

    .line 1501
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12$2;->val$callInfo:Lcom/geely/os/diminteraction/IGlyCallInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyCallInfo;->getActiveCallId()I

    move-result v0

    return v0
.end method

.method public getAvatar()Landroid/graphics/Bitmap;
    .locals 1

    .line 1496
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12$2;->val$callInfo:Lcom/geely/os/diminteraction/IGlyCallInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyCallInfo;->getAvatar()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCallCount()I
    .locals 1

    .line 1546
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12$2;->val$callInfo:Lcom/geely/os/diminteraction/IGlyCallInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyCallInfo;->getCallCount()I

    move-result v0

    return v0
.end method

.method public getCallDuration()J
    .locals 2

    .line 1541
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12$2;->val$callInfo:Lcom/geely/os/diminteraction/IGlyCallInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyCallInfo;->getCallDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCallId()I
    .locals 1

    .line 1521
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12$2;->val$callInfo:Lcom/geely/os/diminteraction/IGlyCallInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyCallInfo;->getCallId()I

    move-result v0

    return v0
.end method

.method public getCallStatus()I
    .locals 1

    .line 1536
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12$2;->val$callInfo:Lcom/geely/os/diminteraction/IGlyCallInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyCallInfo;->getCallStatus()I

    move-result v0

    return v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    .line 1551
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12$2;->val$callInfo:Lcom/geely/os/diminteraction/IGlyCallInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyCallInfo;->getCompany()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactName()Ljava/lang/String;
    .locals 1

    .line 1526
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12$2;->val$callInfo:Lcom/geely/os/diminteraction/IGlyCallInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyCallInfo;->getContactName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactNumber()Ljava/lang/String;
    .locals 1

    .line 1531
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12$2;->val$callInfo:Lcom/geely/os/diminteraction/IGlyCallInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyCallInfo;->getContactNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1556
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12$2;->val$callInfo:Lcom/geely/os/diminteraction/IGlyCallInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyCallInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isHandFree()Z
    .locals 1

    .line 1516
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12$2;->val$callInfo:Lcom/geely/os/diminteraction/IGlyCallInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyCallInfo;->isHandFree()Z

    move-result v0

    return v0
.end method

.method public isMicOnVehicleMuted()Z
    .locals 1

    .line 1506
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12$2;->val$callInfo:Lcom/geely/os/diminteraction/IGlyCallInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyCallInfo;->isMicOnVehicleMuted()Z

    move-result v0

    return v0
.end method

.method public isRingtoneMuted()Z
    .locals 1

    .line 1511
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$12$2;->val$callInfo:Lcom/geely/os/diminteraction/IGlyCallInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyCallInfo;->isRingtoneMuted()Z

    move-result v0

    return v0
.end method
