package com.geely.os.diminteraction;

import android.graphics.Bitmap;
import android.os.Bundle;
import java.util.List;

/* loaded from: classes.dex */
public interface IGlyNaviInteraction {
    void UpdateDistanceToNextGuidancePoint(String paramDistance, int paramUnit);

    void notifyDestinationReached(String message, Bitmap reachedIcon);

    void notifyNavigationStatus(int status);

    void notifyTurnByTurnStarted();

    void notifyTurnByTurnStopped();

    void registerNavigationInteractionCallback(IGlyNavigationInteractionCallback callback);

    void unregisterNavigationInteractionCallback(IGlyNavigationInteractionCallback callback);

    void updateAddresses(int type, List<IGlyAddress> addresses);

    void updateDayNightMode(int mode);

    void updateDistanceToDestination(int distanceToDestination);

    void updateDistanceToNextGuidancePoint(int distanceToNextGuidancePoint);

    void updateDriveDirection(int direction);

    void updateETA(int eta);

    void updateExtensionInfo(Bundle extensionInfo);

    void updateHighwayExitInfo(IGlyHighwayExitInfo info);

    void updateLaneInfo(IGlyLaneInfo[] laneInfo);

    void updateLastRangeInfo(IGlyLastRangeInfo info);

    void updateMuteState(int state);

    void updateNaviInfo(IGlyNaviInfo info);

    void updateNaviStatus(IGlyNaviStatus status);

    void updateNavigationInfo(IGlyNavigationInfo info);

    void updateNextGuidancePointName(String nextGuidancePointName);

    void updateRoadCameraInfo(IGlyRoadCamera roadCamera);

    void updateSearchAddresses(int type, List<IGlyAddress> addresses, String keyword);

    void updateServiceAreaInfo(IGlyServiceArea serviceArea);

    void updateTotalDistanceToDestination(int totalDistanceToDestination);

    void updateTurnByTurnArrow(Bitmap arrowBitmap);
}
