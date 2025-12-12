package com.geely.os.ota;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Calendar;
import java.util.List;

/* loaded from: classes.dex */
public interface IGlyOtaSession {
    public static final int DOWNLOAD_FAILED = 4;
    public static final int DOWNLOAD_SUCCESS = 9;
    public static final int DOWNLOAD_URL_INVALID = 5;
    public static final int FILE_VERIFICATION_FAILED = 6;
    public static final int NONE = 11;
    public static final int OCSP_FAILED = 7;
    public static final int OCSP_SUCCESS = 10;
    public static final int OCSP_VERIFICATION_FAILED = 8;
    public static final int OTA_MODE_DOWNLOAD_INSTALL = 2;
    public static final int OTA_MODE_INSTALL_DIRECTLY = 1;
    public static final int OTA_MODE_SELF_DOWNLOAD_INSTALL = 3;
    public static final int OTA_PRIORITY_HIGH = 2;
    public static final int OTA_PRIORITY_LOW = 0;
    public static final int OTA_PRIORITY_NORMAL = 1;
    public static final int OTA_PRIORITY_SET_TIME = 3;
    public static final int OTA_PRIORITY_UNKNOWN = 0;
    public static final int OTA_UPDATE_INPROGRESS_STATE_IDLE = 1;
    public static final int OTA_UPDATE_INPROGRESS_STATE_IMMEDIATE = 3;
    public static final int OTA_UPDATE_INPROGRESS_STATE_UPGRADE = 2;
    public static final int REGRET_TERMINATE = 2;
    public static final int REGRET_TIMEOUT = 1;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface InstallRegretState {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface OTADownloadStatus {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface OTADownloadreason {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface OtaMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface OtaPriority {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface OtaUpdateInProgressState {
    }

    boolean cancel();

    boolean cancelOtaUpgradeTime();

    void changeSlot();

    void checkConnectivityStatus();

    boolean checkSceneModeAlive();

    boolean checkUpdate();

    boolean couldBeginInstallRightNow();

    boolean download();

    boolean download(String uuid);

    String getCurrentCarVersionName();

    List<String> getDownloadUrls();

    int getEstimatedInstallationTime();

    List<String> getFileNames();

    List<Integer> getInstallationtimes();

    boolean getOtaAutoDownload();

    boolean getOtaAutoInstallation();

    boolean getOtaAutoSync();

    int getOtaBaseSysVersionCode();

    String getOtaBaseSysVersionName();

    int getOtaMode();

    int getOtaPriority();

    int getOtaProgress();

    boolean getOtaSetting();

    int getOtaType();

    int getOtaUpdateInProgressState();

    Calendar getOtaUpdateTime();

    String getSignatureCertificate();

    List<String> getSoftwareSignature();

    String getSysBssId();

    int getSysVersionCode();

    String getSysVersionName();

    int getTotalSize();

    String getUUID();

    String getUpgradeInfo();

    boolean ifSystemWillRebootAfterOta();

    boolean isInstallationStarted();

    boolean isPopupEnable();

    boolean isRecoveryOta();

    void reportDownloadFailedName(String fileName);

    void requestOtaUpdateTime();

    void sendBSSIDDisplayedVersionInfo(String bssid, String displayedVersion);

    void sendUserDownloadCancel();

    void sendUserDownloadRequest(String msg, String key_auth, String url);

    void sendUserDownloadResume();

    void sendUserDownloadSuspend();

    void sendVbfDecryptionKey(List<DecryptionKeyType> list);

    void setInstallRegretState(int state);

    void setOTADownloadSize(int size);

    void setOTADownloadStatus(int status, int reason);

    boolean setOtaUpdateTime(Calendar calendar);

    void setOtaUserSettings(boolean otaSetting, boolean autoSync, boolean autoDownload, boolean autoInstall);

    boolean setPowerState(int state);
}
