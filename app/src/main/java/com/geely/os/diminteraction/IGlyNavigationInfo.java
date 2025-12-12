package com.geely.os.diminteraction;

import android.os.Bundle;

/* loaded from: classes.dex */
public interface IGlyNavigationInfo {
    int getDayNightMode();

    long getDistanceToDestination();

    long getDistanceToNextGuidancePoint();

    int getDrivingDirection();

    long getETA();

    Bundle getExtensionInfo();

    IGlyHighwayExitInfo getHighwayExitInfo();

    IGlyLaneInfo[] getLaneInfo();

    int getMuteState();

    int getNavigationStatus();

    int getNavigationTurnId();

    String getNavigationTurnSVG();

    String getNextGuidancePointName();

    IGlyRoadCamera getRoadCameraInfo();

    IGlyServiceArea getServiceAreaInfo();
}
