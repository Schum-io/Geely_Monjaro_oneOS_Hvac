.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$4;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IRoadCamera;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->updateRoadCameraInfo(Lcom/geely/os/diminteraction/IGlyRoadCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;

.field final synthetic val$roadCamera:Lcom/geely/os/diminteraction/IGlyRoadCamera;


# direct methods
.method constructor <init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;Lcom/geely/os/diminteraction/IGlyRoadCamera;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$roadCamera"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 993
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$4;->this$1:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;

    iput-object p2, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$4;->val$roadCamera:Lcom/geely/os/diminteraction/IGlyRoadCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAreaDistance()I
    .locals 1

    .line 1001
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$4;->val$roadCamera:Lcom/geely/os/diminteraction/IGlyRoadCamera;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyRoadCamera;->getAreaDistance()I

    move-result v0

    return v0
.end method

.method public getCameraType()I
    .locals 1

    .line 996
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$4;->val$roadCamera:Lcom/geely/os/diminteraction/IGlyRoadCamera;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyRoadCamera;->getCameraType()I

    move-result v0

    return v0
.end method

.method public getLimitSpeed()I
    .locals 1

    .line 1006
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$4;->val$roadCamera:Lcom/geely/os/diminteraction/IGlyRoadCamera;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyRoadCamera;->getLimitSpeed()I

    move-result v0

    return v0
.end method
