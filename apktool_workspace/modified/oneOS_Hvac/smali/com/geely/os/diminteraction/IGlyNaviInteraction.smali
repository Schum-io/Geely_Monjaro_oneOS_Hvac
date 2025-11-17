.class public interface abstract Lcom/geely/os/diminteraction/IGlyNaviInteraction;
.super Ljava/lang/Object;
.source "IGlyNaviInteraction.java"


# virtual methods
.method public abstract UpdateDistanceToNextGuidancePoint(Ljava/lang/String;I)V
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
.end method

.method public abstract notifyDestinationReached(Ljava/lang/String;Landroid/graphics/Bitmap;)V
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
.end method

.method public abstract notifyNavigationStatus(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method public abstract notifyTurnByTurnStarted()V
.end method

.method public abstract notifyTurnByTurnStopped()V
.end method

.method public abstract registerNavigationInteractionCallback(Lcom/geely/os/diminteraction/IGlyNavigationInteractionCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract unregisterNavigationInteractionCallback(Lcom/geely/os/diminteraction/IGlyNavigationInteractionCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract updateAddresses(ILjava/util/List;)V
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
.end method

.method public abstract updateDayNightMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract updateDistanceToDestination(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "distanceToDestination"
        }
    .end annotation
.end method

.method public abstract updateDistanceToNextGuidancePoint(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "distanceToNextGuidancePoint"
        }
    .end annotation
.end method

.method public abstract updateDriveDirection(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation
.end method

.method public abstract updateETA(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eta"
        }
    .end annotation
.end method

.method public abstract updateExtensionInfo(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extensionInfo"
        }
    .end annotation
.end method

.method public abstract updateHighwayExitInfo(Lcom/geely/os/diminteraction/IGlyHighwayExitInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation
.end method

.method public abstract updateLaneInfo([Lcom/geely/os/diminteraction/IGlyLaneInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "laneInfo"
        }
    .end annotation
.end method

.method public abstract updateLastRangeInfo(Lcom/geely/os/diminteraction/IGlyLastRangeInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation
.end method

.method public abstract updateMuteState(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public abstract updateNaviInfo(Lcom/geely/os/diminteraction/IGlyNaviInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation
.end method

.method public abstract updateNaviStatus(Lcom/geely/os/diminteraction/IGlyNaviStatus;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method public abstract updateNavigationInfo(Lcom/geely/os/diminteraction/IGlyNavigationInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation
.end method

.method public abstract updateNextGuidancePointName(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextGuidancePointName"
        }
    .end annotation
.end method

.method public abstract updateRoadCameraInfo(Lcom/geely/os/diminteraction/IGlyRoadCamera;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roadCamera"
        }
    .end annotation
.end method

.method public abstract updateSearchAddresses(ILjava/util/List;Ljava/lang/String;)V
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
.end method

.method public abstract updateServiceAreaInfo(Lcom/geely/os/diminteraction/IGlyServiceArea;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serviceArea"
        }
    .end annotation
.end method

.method public abstract updateTotalDistanceToDestination(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalDistanceToDestination"
        }
    .end annotation
.end method

.method public abstract updateTurnByTurnArrow(Landroid/graphics/Bitmap;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arrowBitmap"
        }
    .end annotation
.end method
