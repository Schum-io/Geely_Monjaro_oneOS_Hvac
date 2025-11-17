package com.ecarx.xui.adaptapi.diminteraction;

import android.graphics.Bitmap;
import android.os.Bundle;
import java.util.List;

public interface INaviInteraction {
    interface IAddress {
        String getAddressName();
        String getCityName();
        long getDistance();
        String getFullAddress();
        double getLatitude();
        double getLongitude();
    }

    interface IHighwayExitInfo {
        String getExitNumber();
        String getExitDirection();
        int getEtaDistance();
        int getEtaTime();
    }

    interface ILaneInfo {
        int getLaneNumber();
        int getLaneBackIconId();
        Bitmap getLaneBackIcon();
    }

    interface INavigationInfo {
        int getNavigationStatus();
        int getNavigationTurnId();
        String getNavigationTurnSVG();
        String getNextGuidancePointName();
        long getDistanceToNextGuidancePoint();
        long getDistanceToDestination();
        long getETA();
        int getDrivingDirection();
        int getMuteState();
        int getDayNightMode();
        ILaneInfo[] getLaneInfo();
        IHighwayExitInfo getHighwayExitInfo();
        IServiceArea getServiceAreaInfo();
        IRoadCamera getRoadCameraInfo();
        Bundle getExtensionInfo();
    }

    interface IRoadCamera {
        int getCameraType();
        int getAreaDistance();
        int getLimitSpeed();
    }

    interface IServiceArea {
        int getAreaType();
        String getAreaName();
        int getAreaDistance();
        int getEtaTime();
    }

    interface INavigationInteractionCallback {
        void onDoInteractionAction(int i, IAddress iAddress);
        void onSearchAddress(String s);
    }

    void notifyTurnByTurnStarted();
    void notifyTurnByTurnStopped();
    void notifyNavigationStatus(int status);
    void updateETA(int eta);
    void updateDistanceToDestination(int distanceToDestination);
    void updateDistanceToNextGuidancePoint(int distanceToNextGuidancePoint);
    void UpdateDistanceToNextGuidancePoint(String paramDistance, int paramUnit);
    void updateNextGuidancePointName(String nextGuidancePointName);
    void updateTurnByTurnArrow(Bitmap arrowBitmap);
    void notifyDestinationReached(String message, Bitmap reachedIcon);
    void updateDriveDirection(int direction);
    void updateMuteState(int state);
    void updateDayNightMode(int mode);
    void updateLaneInfo(ILaneInfo[] laneInfo);
    void updateHighwayExitInfo(IHighwayExitInfo info);
    void updateServiceAreaInfo(IServiceArea serviceArea);
    void updateRoadCameraInfo(IRoadCamera roadCamera);
    void updateNaviInfo(NaviInfo info);
    void updateNaviStatus(NaviStatus status);
    void updateLastRangeInfo(LastRangeInfo info);
    void updateExtensionInfo(Bundle extensionInfo);
    void updateNavigationInfo(INavigationInfo info);
    void updateAddresses(int type, List<IAddress> addresses);
    void registerNavigationInteractionCallback(INavigationInteractionCallback callback);
    void unregisterNavigationInteractionCallback(INavigationInteractionCallback callback);
}