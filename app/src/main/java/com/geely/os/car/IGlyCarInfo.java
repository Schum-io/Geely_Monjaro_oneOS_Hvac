package com.geely.os.car;

import android.view.Display;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public interface IGlyCarInfo {
    public static final int CONFIG_INFO_360CAM = 8389888;
    public static final int CONFIG_INFO_DVR = 8389376;
    public static final int CONFIG_INFO_DVR_INNERCAM = 8389632;
    public static final int CONFIG_INFO_EN_START_BUTTON = 8392192;
    public static final int CONFIG_INFO_FACE_CAM = 8391936;
    public static final int CONFIG_INFO_FINGERPRINT = 8389120;
    public static final int CONFIG_INFO_KING_MODE_AVAILABLE = 8392480;
    public static final int CONFIG_INFO_MIRROR_SAVE_RESET = 8392464;
    public static final int CONFIG_INFO_NAVI_AR_AVAILABLE = 8392448;
    public static final int CONFIG_INFO_RADAR = 8391424;
    public static final int CONFIG_INFO_REARVIEW_CAM = 8391680;
    public static final int CONFIG_INFO_REAR_CAM = 8390144;
    public static final int CONFIG_INFO_STEERING_SLIDE_AVAILABLE = -1;
    public static final int CONFIG_INFO_SUNROOF = 8390912;
    public static final int CONFIG_INFO_TCAM = 8391168;
    public static final int CONFIG_INFO_TEM = 8388864;
    public static final int CONFIG_INFO_VALUE_CONFIG = 8388610;
    public static final int CONFIG_INFO_VALUE_FAULT = 8388862;
    public static final int CONFIG_INFO_VALUE_NOT_CONFIG = 8388609;
    public static final int CONFIG_INFO_VALUE_PRELOAD = 8388611;
    public static final int CONFIG_INFO_VALUE_UNKNOWN = 8388863;
    public static final int CONFIG_INFO_WIFI = 8390400;
    public static final int CONFIG_INFO_WPC = 8390656;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface ConfigInfo {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface ConfigValue {
    }

    int getCarInfoConfig(int configId);

    int getIntelligentEnergyManagement();

    Display getPresentationDisplay(int display);

    boolean hasMultiAmbience();
}
