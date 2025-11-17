package com.ecarx.xui.adaptapi.ota;

import android.content.Context;
import java.util.Calendar;

public class OTA {

    public enum SupportStatus {
        SUPPORTED,
        NOT_SUPPORTED,
        UNKNOWN
    }

    public static class DecryptionKeyType {
        private String key;
        private String hashRoot;

        public String getKey() {
            return key;
        }

        public void setKey(String key) {
            this.key = key;
        }

        public String getHashRoot() {
            return hashRoot;
        }

        public void setHashRoot(String hashRoot) {
            this.hashRoot = hashRoot;
        }
    }

    public static OTA create(Context context) {
        // This is a placeholder
        return null;
    }

    public SupportStatus isOtaTypeSupported(int type) {
        return SupportStatus.UNKNOWN;
    }

    public boolean supportNoRecoveryOta() {
        return false;
    }

    public IOtaSession requestOta(boolean preferRecoveryOta, IOtaSessionCallback callback) {
        return null;
    }

    public IOtaSession requestOta(int type, IOtaSessionCallback callback) {
        return null;
    }

    public IOtaSession requestOta(int priority, boolean preferRecoveryOta, IOtaSessionCallback callback) {
        return null;
    }

    public void releaseOtaCallback(IOtaSessionCallback callback) {
    }

    public boolean installPackage(IOtaSession otaSession, String otaPackagePath) {
        return false;
    }

    public int getSysVersionCode() {
        return 0;
    }

    public String getSysVersionName() {
        return "";
    }

    public int getOtaBaseSysVersionCode() {
        return 0;
    }

    public String getOtaBaseSysVersionName() {
        return "";
    }

    public String getOtaPkgRootPath() {
        return "";
    }

    public boolean setOtaUpdateTime(Calendar calendar) {
        return false;
    }
}