package com.ecarx.xui.adaptapi.ota;

public interface IOtaSessionCallback {
    void onShouldBeginInstall();
    void onFailed(int i);
    void onSucceeded();
    void onRebootingAfterOta();
    void onSessionCanceled();
    void onProgressUpdate(int i);
    void onDownloadResponse(int i);
    void requestBSSIDDisplayedVersionInfo();
    void onDownloadProgressReport(int i);
    void onInstallationResponse(int i);
    void onInstallProgressReport(int i, int i1, int i2);
    void onNotificationCurrentCarVersionName(String s);
    void onVGMStatusReport(int i);
}