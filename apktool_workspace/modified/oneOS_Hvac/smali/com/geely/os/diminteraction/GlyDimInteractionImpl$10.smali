.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/geely/os/diminteraction/IGlyNaviInteraction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->getNaviInteraction()Lcom/geely/os/diminteraction/IGlyNaviInteraction;
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

    .line 835
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public UpdateDistanceToNextGuidancePoint(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "paramDistance",
            "paramUnit"
        }
    .end annotation

    .line 873
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;->UpdateDistanceToNextGuidancePoint(Ljava/lang/String;I)V

    return-void
.end method

.method public notifyDestinationReached(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "reachedIcon"
        }
    .end annotation

    .line 888
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;->notifyDestinationReached(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public notifyNavigationStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 848
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;->notifyNavigationStatus(I)V

    return-void
.end method

.method public notifyTurnByTurnStarted()V
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;->notifyTurnByTurnStarted()V

    return-void
.end method

.method public notifyTurnByTurnStopped()V
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;->notifyTurnByTurnStopped()V

    return-void
.end method

.method public registerNavigationInteractionCallback(Lcom/geely/os/diminteraction/IGlyNavigationInteractionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1309
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    iget-object v0, v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iNavigationInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$INavigationInteractionCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1310
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1000(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1311
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    iget-object v0, v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iNavigationInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$INavigationInteractionCallback;

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;->registerNavigationInteractionCallback(Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$INavigationInteractionCallback;)V

    :cond_0
    return-void
.end method

.method public unregisterNavigationInteractionCallback(Lcom/geely/os/diminteraction/IGlyNavigationInteractionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1317
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    iget-object v0, v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iNavigationInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$INavigationInteractionCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1000(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1319
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    iget-object v0, v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iNavigationInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$INavigationInteractionCallback;

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;->unregisterNavigationInteractionCallback(Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$INavigationInteractionCallback;)V

    :cond_0
    return-void
.end method

.method public updateAddresses(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "addresses"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/geely/os/diminteraction/IGlyAddress;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1227
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/os/diminteraction/IGlyAddress;

    .line 1228
    new-instance v2, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$6;

    invoke-direct {v2, p0, v1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$6;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;Lcom/geely/os/diminteraction/IGlyAddress;)V

    .line 1259
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1261
    :cond_0
    iget-object p2, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p2}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;->updateAddresses(ILjava/util/List;)V

    :cond_1
    return-void
.end method

.method public updateDayNightMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 903
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;->updateDayNightMode(I)V

    return-void
.end method

.method public updateDistanceToDestination(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "distanceToDestination"
        }
    .end annotation

    .line 858
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;->updateDistanceToDestination(I)V

    return-void
.end method

.method public updateDistanceToNextGuidancePoint(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "distanceToNextGuidancePoint"
        }
    .end annotation

    .line 868
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;->updateDistanceToNextGuidancePoint(I)V

    return-void
.end method

.method public updateDriveDirection(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 893
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;->updateDriveDirection(I)V

    return-void
.end method

.method public updateETA(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eta"
        }
    .end annotation

    .line 853
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;->updateETA(I)V

    return-void
.end method

.method public updateExtensionInfo(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extensionInfo"
        }
    .end annotation

    .line 1042
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;->updateExtensionInfo(Landroid/os/Bundle;)V

    return-void
.end method

.method public updateHighwayExitInfo(Lcom/geely/os/diminteraction/IGlyHighwayExitInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 937
    new-instance v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$2;

    invoke-direct {v0, p0, p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$2;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;Lcom/geely/os/diminteraction/IGlyHighwayExitInfo;)V

    .line 958
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;->updateHighwayExitInfo(Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IHighwayExitInfo;)V

    :cond_0
    return-void
.end method

.method public updateLaneInfo([Lcom/geely/os/diminteraction/IGlyLaneInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "laneInfo"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 909
    array-length v0, p1

    new-array v0, v0, [Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$ILaneInfo;

    const/4 v1, 0x0

    .line 910
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 911
    aget-object v2, p1, v1

    .line 912
    new-instance v3, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$1;

    invoke-direct {v3, p0, v2}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$1;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;Lcom/geely/os/diminteraction/IGlyLaneInfo;)V

    .line 928
    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 930
    :cond_0
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;->updateLaneInfo([Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$ILaneInfo;)V

    :cond_1
    return-void
.end method

.method public updateLastRangeInfo(Lcom/geely/os/diminteraction/IGlyLastRangeInfo;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1033
    new-instance v11, Lcom/ecarx/xui/adaptapi/diminteraction/LastRangeInfo;

    invoke-interface {p1}, Lcom/geely/os/diminteraction/IGlyLastRangeInfo;->getLongitudeE6()D

    move-result-wide v1

    .line 1034
    invoke-interface {p1}, Lcom/geely/os/diminteraction/IGlyLastRangeInfo;->getLatitudeE6()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/geely/os/diminteraction/IGlyLastRangeInfo;->getLongitudeE61()D

    move-result-wide v5

    invoke-interface {p1}, Lcom/geely/os/diminteraction/IGlyLastRangeInfo;->getLatitudeE61()D

    move-result-wide v7

    .line 1035
    invoke-interface {p1}, Lcom/geely/os/diminteraction/IGlyLastRangeInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1}, Lcom/geely/os/diminteraction/IGlyLastRangeInfo;->getMsgSubTitle()Ljava/lang/String;

    move-result-object v10

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/ecarx/xui/adaptapi/diminteraction/LastRangeInfo;-><init>(DDDDLjava/lang/String;Ljava/lang/String;)V

    .line 1036
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    move-result-object p1

    invoke-interface {p1, v11}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;->updateLastRangeInfo(Lcom/ecarx/xui/adaptapi/diminteraction/LastRangeInfo;)V

    :cond_0
    return-void
.end method

.method public updateMuteState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 898
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;->updateMuteState(I)V

    return-void
.end method

.method public updateNaviInfo(Lcom/geely/os/diminteraction/IGlyNaviInfo;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1016
    new-instance v10, Lcom/ecarx/xui/adaptapi/diminteraction/NaviInfo;

    invoke-interface {p1}, Lcom/geely/os/diminteraction/IGlyNaviInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1017
    invoke-interface {p1}, Lcom/geely/os/diminteraction/IGlyNaviInfo;->gatLatitude()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/geely/os/diminteraction/IGlyNaviInfo;->gatLongitude()D

    move-result-wide v4

    invoke-interface {p1}, Lcom/geely/os/diminteraction/IGlyNaviInfo;->getRemainDistance()J

    move-result-wide v6

    invoke-interface {p1}, Lcom/geely/os/diminteraction/IGlyNaviInfo;->getRemainTime()J

    move-result-wide v8

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/ecarx/xui/adaptapi/diminteraction/NaviInfo;-><init>(Ljava/lang/String;DDJJ)V

    .line 1018
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    move-result-object p1

    invoke-interface {p1, v10}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;->updateNaviInfo(Lcom/ecarx/xui/adaptapi/diminteraction/NaviInfo;)V

    :cond_0
    return-void
.end method

.method public updateNaviStatus(Lcom/geely/os/diminteraction/IGlyNaviStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1025
    new-instance v0, Lcom/ecarx/xui/adaptapi/diminteraction/NaviStatus;

    invoke-interface {p1}, Lcom/geely/os/diminteraction/IGlyNaviStatus;->getStatus()I

    move-result v1

    invoke-interface {p1}, Lcom/geely/os/diminteraction/IGlyNaviStatus;->isYawing()Z

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/ecarx/xui/adaptapi/diminteraction/NaviStatus;-><init>(IZ)V

    .line 1026
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;->updateNaviStatus(Lcom/ecarx/xui/adaptapi/diminteraction/NaviStatus;)V

    :cond_0
    return-void
.end method

.method public updateNavigationInfo(Lcom/geely/os/diminteraction/IGlyNavigationInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1048
    new-instance v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;

    invoke-direct {v0, p0, p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$5;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;Lcom/geely/os/diminteraction/IGlyNavigationInfo;)V

    .line 1219
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;->updateNavigationInfo(Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$INavigationInfo;)V

    :cond_0
    return-void
.end method

.method public updateNextGuidancePointName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextGuidancePointName"
        }
    .end annotation

    .line 878
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;->updateNextGuidancePointName(Ljava/lang/String;)V

    return-void
.end method

.method public updateRoadCameraInfo(Lcom/geely/os/diminteraction/IGlyRoadCamera;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roadCamera"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 993
    new-instance v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$4;

    invoke-direct {v0, p0, p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$4;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;Lcom/geely/os/diminteraction/IGlyRoadCamera;)V

    .line 1009
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;->updateRoadCameraInfo(Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IRoadCamera;)V

    :cond_0
    return-void
.end method

.method public updateSearchAddresses(ILjava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "addresses",
            "keyword"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/geely/os/diminteraction/IGlyAddress;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1268
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 1269
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/os/diminteraction/IGlyAddress;

    .line 1270
    new-instance v1, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$7;

    invoke-direct {v1, p0, v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$7;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;Lcom/geely/os/diminteraction/IGlyAddress;)V

    .line 1301
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1303
    :cond_0
    iget-object p2, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p2}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;->updateAddresses(ILjava/util/List;)V

    :cond_1
    return-void
.end method

.method public updateServiceAreaInfo(Lcom/geely/os/diminteraction/IGlyServiceArea;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serviceArea"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 965
    new-instance v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$3;

    invoke-direct {v0, p0, p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10$3;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;Lcom/geely/os/diminteraction/IGlyServiceArea;)V

    .line 986
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;->updateServiceAreaInfo(Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction$IServiceArea;)V

    :cond_0
    return-void
.end method

.method public updateTotalDistanceToDestination(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalDistanceToDestination"
        }
    .end annotation

    .line 863
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;->updateDistanceToDestination(I)V

    return-void
.end method

.method public updateTurnByTurnArrow(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arrowBitmap"
        }
    .end annotation

    .line 883
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$10;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/diminteraction/INaviInteraction;->updateTurnByTurnArrow(Landroid/graphics/Bitmap;)V

    return-void
.end method
