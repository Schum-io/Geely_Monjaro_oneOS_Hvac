package com.geely.os.system;

import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes.dex */
public interface IGlySystem {
    boolean areNotificationsEnabledForPackage(String packageName);

    int checkAppOp(String permission, String packageName);

    List<GlyAppInfo> getAppInfoList();

    int getCarVehicleType();

    Locale getCurrentLocale();

    int getDrivingEntertainmentRestriction();

    float getFontBold();

    float getFontSize();

    float getIconSize();

    String getIhuId();

    String getMpuSoftwareVersion();

    int getOperatorCode();

    String getOperatorName();

    String getSerialNo();

    TimeZone getTimeZone();

    int getUidPolicy(String packageName, boolean isWlan);

    String getVehicleName();

    String getVehicleType();

    String getVehicleTypeConfig();

    String getVin();

    void grantAppOp(String permission, String packageName, int mode);

    boolean isAutoTimeZone();

    boolean isDateTimeAuto();

    GlyStorageStatsResult loadStorageStats();

    void restoreFactorySettings();

    void setAutoDateTime(boolean isEnabled);

    void setAutoTimeZone(boolean isEnabled);

    void setCurrentLocale(Locale locale);

    void setDrivingEntertainmentRestriction(int restriction);

    void setFontBold(float scale);

    void setFontSize(float scale);

    void setIconSize(float scale);

    void setNotificationsEnabledForPackage(String packageName, boolean enable);

    void setSystemDate(int year, int month, int day);

    void setSystemTime(int hour, int minute);

    void setTimeZone(TimeZone timeZone);

    void setUidPolicy(String packageName, int mode, boolean isWlan);
}
