.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$INavigationInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->updateNavigationInfo(Lcom/geely/os/diminteraction/IGlyNavigationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;

.field final synthetic val$info:Lcom/geely/os/diminteraction/IGlyNavigationInfo;


# direct methods
.method constructor <init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;Lcom/geely/os/diminteraction/IGlyNavigationInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1048
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;->this$1:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;

    iput-object p2, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;->val$info:Lcom/geely/os/diminteraction/IGlyNavigationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDayNightMode()I
    .locals 1

    .line 1096
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;->val$info:Lcom/geely/os/diminteraction/IGlyNavigationInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyNavigationInfo;->getDayNightMode()I

    move-result v0

    return v0
.end method

.method public getDistanceToDestination()J
    .locals 2

    .line 1076
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;->val$info:Lcom/geely/os/diminteraction/IGlyNavigationInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyNavigationInfo;->getDistanceToDestination()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDistanceToNextGuidancePoint()J
    .locals 2

    .line 1071
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;->val$info:Lcom/geely/os/diminteraction/IGlyNavigationInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyNavigationInfo;->getDistanceToNextGuidancePoint()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDrivingDirection()I
    .locals 1

    .line 1086
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;->val$info:Lcom/geely/os/diminteraction/IGlyNavigationInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyNavigationInfo;->getDrivingDirection()I

    move-result v0

    return v0
.end method

.method public getETA()J
    .locals 2

    .line 1081
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;->val$info:Lcom/geely/os/diminteraction/IGlyNavigationInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyNavigationInfo;->getETA()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExtensionInfo()Landroid/os/Bundle;
    .locals 1

    .line 1216
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;->val$info:Lcom/geely/os/diminteraction/IGlyNavigationInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyNavigationInfo;->getExtensionInfo()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getHighwayExitInfo()Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IHighwayExitInfo;
    .locals 2

    .line 1131
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;->val$info:Lcom/geely/os/diminteraction/IGlyNavigationInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyNavigationInfo;->getHighwayExitInfo()Lcom/geely/os/diminteraction/IGlyHighwayExitInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1135
    :cond_0
    new-instance v1, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$2;

    invoke-direct {v1, p0, v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$2;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;Lcom/geely/os/diminteraction/IGlyHighwayExitInfo;)V

    return-object v1
.end method

.method public getLaneInfo()[Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$ILaneInfo;
    .locals 5

    .line 1101
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;->val$info:Lcom/geely/os/diminteraction/IGlyNavigationInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyNavigationInfo;->getLaneInfo()[Lcom/geely/os/diminteraction/IGlyLaneInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1105
    :cond_0
    array-length v1, v0

    new-array v1, v1, [Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$ILaneInfo;

    const/4 v2, 0x0

    .line 1106
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 1107
    aget-object v3, v0, v2

    .line 1108
    new-instance v4, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$1;

    invoke-direct {v4, p0, v3}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$1;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;Lcom/geely/os/diminteraction/IGlyLaneInfo;)V

    .line 1124
    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getMuteState()I
    .locals 1

    .line 1091
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;->val$info:Lcom/geely/os/diminteraction/IGlyNavigationInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyNavigationInfo;->getMuteState()I

    move-result v0

    return v0
.end method

.method public getNavigationStatus()I
    .locals 1

    .line 1051
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;->val$info:Lcom/geely/os/diminteraction/IGlyNavigationInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyNavigationInfo;->getNavigationStatus()I

    move-result v0

    return v0
.end method

.method public getNavigationTurnId()I
    .locals 1

    .line 1056
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;->val$info:Lcom/geely/os/diminteraction/IGlyNavigationInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyNavigationInfo;->getNavigationTurnId()I

    move-result v0

    return v0
.end method

.method public getNavigationTurnSVG()Ljava/lang/String;
    .locals 1

    .line 1061
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;->val$info:Lcom/geely/os/diminteraction/IGlyNavigationInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyNavigationInfo;->getNavigationTurnSVG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextGuidancePointName()Ljava/lang/String;
    .locals 1

    .line 1066
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;->val$info:Lcom/geely/os/diminteraction/IGlyNavigationInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyNavigationInfo;->getNextGuidancePointName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoadCameraInfo()Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IRoadCamera;
    .locals 2

    .line 1191
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;->val$info:Lcom/geely/os/diminteraction/IGlyNavigationInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyNavigationInfo;->getRoadCameraInfo()Lcom/geely/os/diminteraction/IGlyRoadCamera;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1195
    :cond_0
    new-instance v1, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$4;

    invoke-direct {v1, p0, v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$4;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;Lcom/geely/os/diminteraction/IGlyRoadCamera;)V

    return-object v1
.end method

.method public getServiceAreaInfo()Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IServiceArea;
    .locals 2

    .line 1161
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;->val$info:Lcom/geely/os/diminteraction/IGlyNavigationInfo;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyNavigationInfo;->getServiceAreaInfo()Lcom/geely/os/diminteraction/IGlyServiceArea;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1165
    :cond_0
    new-instance v1, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$3;

    invoke-direct {v1, p0, v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5$3;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;Lcom/geely/os/diminteraction/IGlyServiceArea;)V

    return-object v1
.end method
