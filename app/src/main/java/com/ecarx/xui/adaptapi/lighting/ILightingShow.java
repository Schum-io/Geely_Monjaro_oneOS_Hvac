package com.ecarx.xui.adaptapi.lighting;

import com.ecarx.xui.adaptapi.FunctionStatus;

public interface ILightingShow {

    interface ILightingShowWatcher {
        void onLightingShowEnableChanged(FunctionStatus functionStatus);
        void onLightingShowStateChanged(int i);
        void onLightingShowError(int[] ints);
        void onLightingShowFileDownloadState(int i);
        void onLightingShowFileDownloadFunctionStatus(FunctionStatus functionStatus);
        void onWelcomeLightFileDownloadFunctionStatus(FunctionStatus functionStatus);
    }

    interface ILightingShowInfo {
        String getUUID();
        int getShowType();
        int getShowMode();
        int getPayType();
        String getName();
        String getPath();
        String getDescription();
    }

    FunctionStatus isLightingShowEnabled();
    int getLightingShowState();
    int[] getLightingShowError();
    boolean setLightingShowType(int type);
    int getLightingShowType();
    boolean setLightingShowMode(int mode);
    int getLightingShowMode();
    ILightingShowInfo[] getLightingShowInfo(int type);
    int[] getVehicleIpTable(int vehicleIpType);
    boolean sendIpMessage(int ip, String cmdMsg);
    boolean sendLightingShowSourceStart();
    boolean sendLightingShowSourceEnd();
    boolean sendLightingShowSource(byte[] source);
    void startLightingShow();
    void stopLightingShow();
    void registerLightingShowWatcher(ILightingShowWatcher watcher);
    void unregisterLightingShowWatcher(ILightingShowWatcher watcher);
    int getLightShowFileDownloadReq();
    int setLightShowFileRequestResult(int state);
    int setLightShowFileDownloadResult(int result);
    FunctionStatus isLightingShowFileDownload();
    FunctionStatus isWelcomeLightFileDownload();
}