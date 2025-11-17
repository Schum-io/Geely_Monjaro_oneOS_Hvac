.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$4;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IRoadCamera;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;->getRoadCameraInfo()Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IRoadCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;

.field final synthetic val$roadCamera:Lcom/geely/os/diminteraction/IGlyRoadCamera;


# direct methods
.method constructor <init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;Lcom/geely/os/diminteraction/IGlyRoadCamera;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$roadCamera"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1195
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$4;->this$2:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;

    iput-object p2, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$4;->val$roadCamera:Lcom/geely/os/diminteraction/IGlyRoadCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAreaDistance()I
    .locals 1

    .line 1203
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$4;->val$roadCamera:Lcom/geely/os/diminteraction/IGlyRoadCamera;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyRoadCamera;->getAreaDistance()I

    move-result v0

    return v0
.end method

.method public getCameraType()I
    .locals 1

    .line 1198
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$4;->val$roadCamera:Lcom/geely/os/diminteraction/IGlyRoadCamera;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyRoadCamera;->getCameraType()I

    move-result v0

    return v0
.end method

.method public getLimitSpeed()I
    .locals 1

    .line 1208
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$4;->val$roadCamera:Lcom/geely/os/diminteraction/IGlyRoadCamera;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyRoadCamera;->getLimitSpeed()I

    move-result v0

    return v0
.end method
