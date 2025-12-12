package com.geely.os.ota;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public interface IGlyOtaSessionCallback {
    public static final int DOWNLOAD_RESPONSE_DOWNLOADING_EXCEPTION = 101;
    public static final int DOWNLOAD_RESPONSE_HASH_CHECK_FAILED = 102;
    public static final int DOWNLOAD_RESPONSE_KEY_AUTH_FAILED = 98;
    public static final int DOWNLOAD_RESPONSE_KEY_AUTH_SUCCEED = 97;
    public static final int DOWNLOAD_RESPONSE_REQUEST_ACCEPT = 96;
    public static final int DOWNLOAD_RESPONSE_REQUEST_VBF_DECRYPTION_KEY = 103;
    public static final int DOWNLOAD_RESPONSE_RESTORE_KEY_FAILED = 104;
    public static final int DOWNLOAD_RESPONSE_SSOC_FTP_TRANSMISSION_FAILED = 106;
    public static final int DOWNLOAD_RESPONSE_TCAM_NETWORK_ACCESS_FAILED = 99;
    public static final int DOWNLOAD_RESPONSE_URL_INVALID = 52;
    public static final int DOWNLOAD_RESPONSE_VBF_DECRYPTION_FAILED = 105;
    public static final int DOWNLOAD_RESPONSE_VBF_EXTRACTION_FAILED = 107;
    public static final int INSTALLATION_RESPONSE_BLOCK_VERIFICATION_FAILED_MSOC = 108;
    public static final int INSTALLATION_RESPONSE_BLOCK_VERIFICATION_FAILED_SSOC = 111;
    public static final int INSTALLATION_RESPONSE_DIFF_REDUCE_FAILED_MSOC = 109;
    public static final int INSTALLATION_RESPONSE_DIFF_REDUCE_FAILED_SSOC = 112;
    public static final int INSTALLATION_RESPONSE_FLASH_PARTITION_FAILED_MSOC = 110;
    public static final int INSTALLATION_RESPONSE_FLASH_PARTITION_FAILED_SSOC = 113;
    public static final int UPDATE_FAILED_CHARGE_CONNECTED = 15;
    public static final int UPDATE_FAILED_CONFIGURATION_MISMATCH = 38;
    public static final int UPDATE_FAILED_CONFIG_ERROR = 6;
    public static final int UPDATE_FAILED_CONNECTIVITY_NOK = 34;
    public static final int UPDATE_FAILED_CRITICAL_CONFIGURATION_MISMATCH_OR_OTHER = 14;
    public static final int UPDATE_FAILED_DOOR_LOCKING = 8;
    public static final int UPDATE_FAILED_GEARS_NOK = 33;
    public static final int UPDATE_FAILED_GEAR_POSITION = 22;
    public static final int UPDATE_FAILED_HV_BATTERY_TEMP_HIGH = 40;
    public static final int UPDATE_FAILED_HV_SYSTEM_FAILURE = 25;
    public static final int UPDATE_FAILED_INSTALLATION_FINISHED = 39;
    public static final int UPDATE_FAILED_LOW_BATTERY = 4;
    public static final int UPDATE_FAILED_LOW_HV_SYSTEM_ENERGY_LEVEL = 24;
    public static final int UPDATE_FAILED_MEMORY_ERROR = 10;
    public static final int UPDATE_FAILED_NETWORK_ERROR = 3;
    public static final int UPDATE_FAILED_POWER_ON_FAILED = 19;
    public static final int UPDATE_FAILED_PROPULSION = 37;
    public static final int UPDATE_FAILED_REASON_DEFAULT = 0;
    public static final int UPDATE_FAILED_REASON_INSUFFICIENT_STORAGE = 2;
    public static final int UPDATE_FAILED_REASON_INVALID_PACKAGE = 1;
    public static final int UPDATE_FAILED_REGRET_WINDOW_TIMEOUT = 32;
    public static final int UPDATE_FAILED_SCENE_MODE_NOK = 36;
    public static final int UPDATE_FAILED_SERVICE_ERROR = 9;
    public static final int UPDATE_FAILED_SPEED_NOK = 35;
    public static final int UPDATE_FAILED_SYSTEM = 18;
    public static final int UPDATE_FAILED_TEMPERATURE_LOW = 16;
    public static final int UPDATE_FAILED_THEFT_DOOR = 23;
    public static final int UPDATE_FAILED_THEFT_HOOD = 20;
    public static final int UPDATE_FAILED_THEFT_TRUNK = 21;
    public static final int UPDATE_FAILED_TIME_OUT = 5;
    public static final int UPDATE_FAILED_UPDATING_ERROR = 11;
    public static final int UPDATE_FAILED_VEHICLE_IN_USE = 12;
    public static final int UPDATE_FAILED_VEHICLE_NOT_SECURED = 13;
    public static final int UPDATE_FAILED_WINDOW = 17;

    @Retention(RetentionPolicy.SOURCE)
    public @interface DownloadResponse {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface InstallationResponse {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface UpdateFailedReason {
    }

    void onDownloadProgressReport(int state);

    void onDownloadResponse(int state);

    void onFailed(int reason);

    void onInstallProgressReport(int state, int total, int progress);

    void onInstallationResponse(int state);

    void onNotificationCurrentCarVersionName(String displayedVersion);

    void onProgressUpdate(int progress);

    void onRebootingAfterOta();

    void onSessionCanceled();

    void onShouldBeginInstall();

    void onSucceeded();

    void onVGMStatusReport(int state);

    void requestBSSIDDisplayedVersionInfo();
}
