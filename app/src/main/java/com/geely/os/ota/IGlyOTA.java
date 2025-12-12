package com.geely.os.ota;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Calendar;

/* loaded from: classes.dex */
public interface IGlyOTA {
    public static final int OTA_TYPE_IHU = 1;
    public static final int OTA_TYPE_IHU_DVR = 34;
    public static final int OTA_TYPE_IHU_VP = 18;
    public static final int OTA_TYPE_TBOX = 33;
    public static final int OTA_TYPE_VP = 17;
    public static final int OTA_TYPE_WHOLE_CAR = 2;
    public static final int UPDATE_FAILED_REASON_DEFAULT = 0;
    public static final int UPDATE_FAILED_REASON_INSUFFICIENT_STORAGE = 2;
    public static final int UPDATE_FAILED_REASON_INVALID_PACKAGE = 1;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface OtaType {
    }

    int getOtaBaseSysVersionCode();

    String getOtaBaseSysVersionName();

    String getOtaPkgRootPath();

    int getSysVersionCode();

    String getSysVersionName();

    boolean installPackage(IGlyOtaSession otaSession, String otaPackagePath);

    int isOtaTypeSupported(int type);

    void releaseOtaCallback(IGlyOtaSessionCallback callback);

    IGlyOtaSession requestOta(int type, IGlyOtaSessionCallback callback);

    IGlyOtaSession requestOta(int priority, boolean preferRecoveryOta, IGlyOtaSessionCallback callback);

    IGlyOtaSession requestOta(boolean preferRecoveryOta, IGlyOtaSessionCallback callback);

    boolean setOtaUpdateTime(Calendar calendar);

    boolean supportNoRecoveryOta();
}
