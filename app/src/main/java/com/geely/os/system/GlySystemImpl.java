package com.geely.os.system;

import android.app.AlarmManager;
import android.app.AppOpsManager;
import android.app.NotificationManager;
import android.app.backup.BackupManager;
import android.app.usage.ExternalStorageStats;
import android.app.usage.StorageStats;
import android.app.usage.StorageStatsManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PermissionInfo;
import android.content.res.Configuration;
import android.os.Environment;
import android.os.LocaleList;
import android.os.Process;
import android.os.StatFs;
import android.os.SystemClock;
import android.os.UserHandle;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.ecarx.xui.adaptapi.device.Device;
import com.geely.os.car.GlyLog;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;

/* loaded from: classes.dex */
class GlySystemImpl implements IGlySystem {
    private Device device;
    private final AppOpsManager mAppOpsManager;
    private final Context mContext;

    @Override // com.geely.os.system.IGlySystem
    public int getCarVehicleType() {
        return 5;
    }

    private GlySystemImpl(Context context) {
        this.mContext = context;
        this.device = Device.create(context);
        this.mAppOpsManager = (AppOpsManager) context.getSystemService("appops");
    }

    public static IGlySystem create(Context context) {
        if (context != null) {
            return new GlySystemImpl(context);
        }
        return null;
    }

    @Override // com.geely.os.system.IGlySystem
    public Locale getCurrentLocale() {
        Locale locale = LocaleList.getDefault().get(0);
        GlyLog.i("OneVehicleSDK_GlySystemImpl", "getCurrentLocale: " + locale.toString());
        return locale;
    }

    @Override // com.geely.os.system.IGlySystem
    public void setCurrentLocale(Locale locale) {
        GlyLog.i("OneVehicleSDK_GlySystemImpl", "setCurrentLocale: " + locale.toString());
        try {
            Class<?> cls = Class.forName("android.app.IActivityManager");
            Class<?> cls2 = Class.forName("android.app.ActivityManagerNative");
            Object objInvoke = cls2.getDeclaredMethod("getDefault", new Class[0]).invoke(cls2, new Object[0]);
            Configuration configuration = (Configuration) cls.getDeclaredMethod("getConfiguration", new Class[0]).invoke(objInvoke, new Object[0]);
            configuration.setLocale(locale);
            Class.forName("android.content.res.Configuration").getField("userSetLocale").set(configuration, true);
            cls.getDeclaredMethod("updateConfiguration", Configuration.class).invoke(objInvoke, configuration);
            BackupManager.dataChanged("com.android.providers.settings");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.geely.os.system.IGlySystem
    public boolean isDateTimeAuto() {
        try {
            boolean z = Settings.Global.getInt(this.mContext.getContentResolver(), "auto_time") > 0;
            GlyLog.d("OneVehicleSDK_GlySystemImpl", "isDateTimeAuto result = " + z);
            return z;
        } catch (Settings.SettingNotFoundException e) {
            GlyLog.e("OneVehicleSDK_GlySystemImpl", "Error isDateTimeAuto");
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.geely.os.system.IGlySystem
    public void setAutoDateTime(boolean z) {
        GlyLog.d("OneVehicleSDK_GlySystemImpl", "setAutoDateTime checked = " + (z ? 1 : 0));
        try {
            Settings.Global.putInt(this.mContext.getContentResolver(), "auto_time", z ? 1 : 0);
        } catch (Exception unused) {
        }
    }

    @Override // com.geely.os.system.IGlySystem
    public void setSystemDate(int year, int month, int day) {
        GlyLog.i("OneVehicleSDK_GlySystemImpl", "setSystemDate  year: " + year + ", month: " + month + ", day: " + day);
        Calendar calendar = Calendar.getInstance();
        calendar.set(1, year);
        calendar.set(2, month);
        calendar.set(5, day);
        SystemClock.setCurrentTimeMillis(calendar.getTimeInMillis());
    }

    @Override // com.geely.os.system.IGlySystem
    public void setSystemTime(int hour, int minute) {
        GlyLog.i("OneVehicleSDK_GlySystemImpl", "setSystemTime  hour: " + hour + ", minute: " + minute);
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, hour);
        calendar.set(12, minute);
        SystemClock.setCurrentTimeMillis(calendar.getTimeInMillis());
    }

    @Override // com.geely.os.system.IGlySystem
    public boolean isAutoTimeZone() {
        try {
            boolean z = Settings.Global.getInt(this.mContext.getContentResolver(), "auto_time_zone") > 0;
            GlyLog.d("OneVehicleSDK_GlySystemImpl", "isTimeZoneAuto result = " + z);
            return z;
        } catch (Settings.SettingNotFoundException e) {
            GlyLog.e("OneVehicleSDK_GlySystemImpl", "Error isDateTimeAuto");
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.geely.os.system.IGlySystem
    public void setAutoTimeZone(boolean z) {
        GlyLog.d("OneVehicleSDK_GlySystemImpl", "setAutoTimeZone checked = " + (z ? 1 : 0));
        try {
            Settings.Global.putInt(this.mContext.getContentResolver(), "auto_time_zone", z ? 1 : 0);
        } catch (Exception unused) {
        }
    }

    @Override // com.geely.os.system.IGlySystem
    public TimeZone getTimeZone() {
        return TimeZone.getDefault();
    }

    @Override // com.geely.os.system.IGlySystem
    public void setTimeZone(TimeZone timeZone) {
        ((AlarmManager) this.mContext.getSystemService(NotificationCompat.CATEGORY_ALARM)).setTimeZone(timeZone.getID());
    }

    @Override // com.geely.os.system.IGlySystem
    public void restoreFactorySettings() {
        Intent intent = new Intent("android.intent.action.FACTORY_RESET");
        intent.setPackage("android");
        intent.addFlags(268435456);
        intent.putExtra("android.intent.extra.REASON", "MasterClearConfirm");
        this.mContext.sendBroadcast(intent);
    }

    @Override // com.geely.os.system.IGlySystem
    public GlyStorageStatsResult loadStorageStats() {
        GlyStorageStatsResult glyStorageStatsResult = new GlyStorageStatsResult();
        StorageManager storageManager = (StorageManager) this.mContext.getSystemService("storage");
        StorageStatsManager storageStatsManager = (StorageStatsManager) this.mContext.getSystemService(StorageStatsManager.class);
        PackageManager packageManager = this.mContext.getPackageManager();
        UserHandle userHandleMyUserHandle = Process.myUserHandle();
        try {
            List<PackageInfo> installedPackages = packageManager.getInstalledPackages(0);
            for (StorageVolume storageVolume : storageManager.getStorageVolumes()) {
                UUID uuid = storageVolume.getUuid() == null ? StorageManager.UUID_DEFAULT : UUID.fromString(storageVolume.getUuid());
                if (installedPackages != null && installedPackages.size() > 0) {
                    Iterator<PackageInfo> it = installedPackages.iterator();
                    while (it.hasNext()) {
                        try {
                            StorageStats storageStatsQueryStatsForPackage = storageStatsManager.queryStatsForPackage(uuid, it.next().packageName, userHandleMyUserHandle);
                            glyStorageStatsResult.mAppBytes += storageStatsQueryStatsForPackage.getAppBytes() + storageStatsQueryStatsForPackage.getDataBytes() + storageStatsQueryStatsForPackage.getCacheBytes();
                        } catch (Exception e) {
                            GlyLog.e("OneVehicleSDK_GlySystemImpl", "get app storage error : " + e.getMessage());
                        }
                    }
                }
                ExternalStorageStats externalStorageStatsQueryExternalStatsForUser = storageStatsManager.queryExternalStatsForUser(uuid, userHandleMyUserHandle);
                glyStorageStatsResult.mImageBytes += externalStorageStatsQueryExternalStatsForUser.getImageBytes();
                glyStorageStatsResult.mAudioBytes += externalStorageStatsQueryExternalStatsForUser.getAudioBytes();
                glyStorageStatsResult.mVideoBytes += externalStorageStatsQueryExternalStatsForUser.getVideoBytes();
                glyStorageStatsResult.mApkBytes += externalStorageStatsQueryExternalStatsForUser.getAppBytes();
                glyStorageStatsResult.mDocumentBytes += (((externalStorageStatsQueryExternalStatsForUser.getTotalBytes() - externalStorageStatsQueryExternalStatsForUser.getAudioBytes()) - externalStorageStatsQueryExternalStatsForUser.getVideoBytes()) - externalStorageStatsQueryExternalStatsForUser.getImageBytes()) - externalStorageStatsQueryExternalStatsForUser.getAppBytes();
                glyStorageStatsResult.mTotalBytes += storageStatsManager.getTotalBytes(uuid);
                glyStorageStatsResult.mFreeBytes += storageStatsManager.getFreeBytes(uuid);
            }
            glyStorageStatsResult.mSystemBytes = new StatFs(Environment.getRootDirectory().getPath()).getTotalBytes();
        } catch (Exception e2) {
            GlyLog.d("OneVehicleSDK_GlySystemImpl", "getTotalUseSystem error ==" + e2.getMessage());
        }
        GlyLog.d("OneVehicleSDK_GlySystemImpl", "loadStorageStats: " + glyStorageStatsResult);
        return glyStorageStatsResult;
    }

    @Override // com.geely.os.system.IGlySystem
    public List<GlyAppInfo> getAppInfoList() {
        ArrayList arrayList = new ArrayList();
        PackageManager packageManager = this.mContext.getPackageManager();
        List<PackageInfo> installedPackages = packageManager.getInstalledPackages(0);
        if (installedPackages != null && installedPackages.size() > 0) {
            for (PackageInfo packageInfo : installedPackages) {
                try {
                    String[] strArr = packageManager.getPackageInfo(packageInfo.packageName, 4096).requestedPermissions;
                    boolean z = true;
                    if ((packageInfo.applicationInfo.flags & 1) == 0) {
                        z = false;
                    }
                    GlyAppInfo glyAppInfo = new GlyAppInfo(z, packageInfo.applicationInfo.loadLabel(packageManager), packageInfo.packageName, packageInfo.applicationInfo.loadIcon(packageManager));
                    if (strArr != null && strArr.length > 0) {
                        for (String str : strArr) {
                            try {
                                if (!"android.permission.INTERNET".equals(str) || packageInfo.applicationInfo.uid >= 10000) {
                                    PermissionInfo permissionInfo = packageManager.getPermissionInfo(str, 128);
                                    GlyAppPermInfo glyAppPermInfo = new GlyAppPermInfo(packageInfo.packageName, str, permissionInfo.loadLabel(packageManager), permissionInfo.loadIcon(packageManager));
                                    glyAppPermInfo.setAppLabel(glyAppInfo.getLabel());
                                    glyAppPermInfo.setAppIcon(glyAppInfo.getIcon());
                                    glyAppInfo.addPermission(glyAppPermInfo);
                                }
                            } catch (Exception unused) {
                            }
                        }
                    }
                    if ((packageInfo.applicationInfo.flags & 8) != 0) {
                        GlyAppPermInfo glyAppPermInfo2 = new GlyAppPermInfo(packageInfo.packageName, GlySystemPropertyValue.BOOT_AUTO_PERSISTENT_START, "", null);
                        glyAppPermInfo2.setAppLabel(glyAppInfo.getLabel());
                        glyAppPermInfo2.setAppIcon(glyAppInfo.getIcon());
                        glyAppInfo.addPermission(glyAppPermInfo2);
                    }
                    arrayList.add(glyAppInfo);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return arrayList;
    }

    @Override // com.geely.os.system.IGlySystem
    public void setFontSize(float scale) {
        GlyLog.d("OneVehicleSDK_GlySystemImpl", "setFontSize " + scale);
        Settings.System.putFloat(this.mContext.getContentResolver(), "font_scale", scale);
    }

    @Override // com.geely.os.system.IGlySystem
    public float getFontSize() {
        float f = Settings.System.getFloat(this.mContext.getContentResolver(), "font_scale", 1.0f);
        GlyLog.d("OneVehicleSDK_GlySystemImpl", "getFontSize: " + f);
        return f;
    }

    @Override // com.geely.os.system.IGlySystem
    public void setFontBold(float scale) {
        GlyLog.d("OneVehicleSDK_GlySystemImpl", "setFontBold " + scale);
        Settings.System.putFloat(this.mContext.getContentResolver(), GlySystemPropertyValue.FONT_WEIGHT_SCALE, scale);
    }

    @Override // com.geely.os.system.IGlySystem
    public float getFontBold() {
        float f = Settings.System.getFloat(this.mContext.getContentResolver(), GlySystemPropertyValue.FONT_WEIGHT_SCALE, 1.0f);
        GlyLog.d("OneVehicleSDK_GlySystemImpl", "getFontBold: " + f);
        return f;
    }

    @Override // com.geely.os.system.IGlySystem
    public void setIconSize(float scale) {
        GlyLog.d("OneVehicleSDK_GlySystemImpl", "setIconSize: " + scale);
        Settings.System.putFloat(this.mContext.getContentResolver(), GlySystemPropertyValue.ICON_SCALE, scale);
    }

    @Override // com.geely.os.system.IGlySystem
    public float getIconSize() {
        float f = Settings.System.getFloat(this.mContext.getContentResolver(), GlySystemPropertyValue.ICON_SCALE, 1.0f);
        GlyLog.d("OneVehicleSDK_GlySystemImpl", "getIconSize: " + f);
        return f;
    }

    @Override // com.geely.os.system.IGlySystem
    public int checkAppOp(String permission, String packageName) {
        int iUnsafeCheckOpRaw = 3;
        String strPermissionToOp = GlySystemPropertyValue.BOOT_AUTO_PERSISTENT_START.equals(permission) ? GlySystemPropertyValue.OPSTR_PERSISTENT_START : AppOpsManager.permissionToOp(permission);
        if (!TextUtils.isEmpty(strPermissionToOp)) {
            try {
                java.lang.reflect.Method method = AppOpsManager.class.getMethod("unsafeCheckOpRaw", String.class, int.class, String.class);
                iUnsafeCheckOpRaw = (int) method.invoke(this.mAppOpsManager, strPermissionToOp, this.mContext.getPackageManager().getApplicationInfo(packageName, 128).uid, packageName);
            } catch (Exception e) {
                GlyLog.e("OneVehicleSDK_GlySystemImpl", "checkAppOp error : " + e.getMessage());
            }
        }
        GlyLog.i("OneVehicleSDK_GlySystemImpl", "checkAppOp: packageName[" + packageName + "],permission[" + permission + "],opStr[" + strPermissionToOp + "] : " + iUnsafeCheckOpRaw);
        return iUnsafeCheckOpRaw;
    }

    @Override // com.geely.os.system.IGlySystem
    public void grantAppOp(String permission, String packageName, int mode) {
        String strPermissionToOp = GlySystemPropertyValue.BOOT_AUTO_PERSISTENT_START.equals(permission) ? GlySystemPropertyValue.OPSTR_PERSISTENT_START : AppOpsManager.permissionToOp(permission);
        GlyLog.i(GlyLog.DEFAULT_TAG, "grantAppOp: packageName[" + packageName + "],permission[" + permission + "],opStr[" + strPermissionToOp + "] : " + mode);
        if (TextUtils.isEmpty(strPermissionToOp)) {
            GlyLog.e(GlyLog.DEFAULT_TAG, "permissionToOp is null : " + permission);
            return;
        }
        try {
            PackageManager packageManager = this.mContext.getPackageManager();
            try {
                 // Use reflection for setMode(String, ...)
                 java.lang.reflect.Method method = AppOpsManager.class.getMethod("setMode", String.class, int.class, String.class, int.class);
                 method.invoke(this.mAppOpsManager, strPermissionToOp, packageManager.getApplicationInfo(packageName, 128).uid, packageName, mode);
            } catch (Exception nsme) {
                 GlyLog.e("OneVehicleSDK_GlySystemImpl", "setMode reflection failed: " + nsme.getMessage());
            }
            
            try {
                // Use reflection for updatePermissionFlags
                java.lang.reflect.Method updateFlagsMethod = PackageManager.class.getMethod("updatePermissionFlags", String.class, String.class, int.class, int.class, UserHandle.class);
                updateFlagsMethod.invoke(packageManager, permission, packageName, 3, 0, Process.myUserHandle());
            } catch(Exception e) {
                 GlyLog.e("OneVehicleSDK_GlySystemImpl", "updatePermissionFlags reflection failed: " + e.getMessage());
            }

        } catch (Exception e) {
            GlyLog.e("OneVehicleSDK_GlySystemImpl", "grantAppOp error : " + e.getMessage());
        }
    }

    @Override // com.geely.os.system.IGlySystem
    public void setUidPolicy(String packageName, int mode, boolean isWlan) {
        GlyLog.i("OneVehicleSDK_GlySystemImpl", "setUidPolicy: packageName[" + packageName + "], mode[" + mode + "], isWlan[" + isWlan + "]");
        try {
            Object networkPolicyManager = this.mContext.getSystemService("netpolicy");
            if (networkPolicyManager == null) return;

            java.lang.reflect.Method setUidPolicyMethod = networkPolicyManager.getClass().getMethod("setUidPolicy", int.class, int.class);

            ApplicationInfo applicationInfo = this.mContext.getPackageManager().getApplicationInfo(packageName, 128);

            int uidPolicy = getUidPolicy(packageName, !isWlan);

            int policyToSet = -1;

            if (mode == 0 && uidPolicy == 0) {
                policyToSet = 5;
            } else if (mode == 1 && uidPolicy == 1) {
                policyToSet = 8;
            } else if (isWlan) {
                if (mode == 0 && uidPolicy == 1) {
                    policyToSet = 7;
                } else if (mode == 1 && uidPolicy == 0) {
                    policyToSet = 6;
                }
            } else if (mode == 0 && uidPolicy == 1) {
                policyToSet = 6;
            } else if (mode == 1 && uidPolicy == 0) {
                policyToSet = 7;
            }

            if (policyToSet != -1) {
                setUidPolicyMethod.invoke(networkPolicyManager, applicationInfo.uid, policyToSet);
            }

        } catch (Exception e) {
            GlyLog.e("OneVehicleSDK_GlySystemImpl", "setUidPolicy error : " + e.getMessage());
            e.printStackTrace();
        }
    }

    @Override // com.geely.os.system.IGlySystem
    public int getUidPolicy(String packageName, boolean isWlan) {
        int i = 0;
        try {
            Object networkPolicyManager = this.mContext.getSystemService("netpolicy");
            if (networkPolicyManager == null) return 0;

            int uid = this.mContext.getPackageManager().getApplicationInfo(packageName, 128).uid;

            java.lang.reflect.Method getUidPolicyMethod = networkPolicyManager.getClass().getMethod("getUidPolicy", int.class);
            int uidPolicy = (int) getUidPolicyMethod.invoke(networkPolicyManager, uid);

            GlyLog.i("OneVehicleSDK_GlySystemImpl", "getUidPolicy: packageName[" + packageName + "], policy[" + uidPolicy + "], isWlan[" + isWlan + "]");
            if (!isWlan ? uidPolicy == 7 || uidPolicy == 8 : uidPolicy == 6 || uidPolicy == 8) {
                i = 1;
            }
        } catch (Exception e) {
            GlyLog.e("OneVehicleSDK_GlySystemImpl", "getUidPolicy error : " + e.getMessage());
        }
        GlyLog.i("OneVehicleSDK_GlySystemImpl", "getUidPolicy: packageName[" + packageName + "], mode[" + i + "], isWlan[" + isWlan + "]");
        return i;
    }

    @Override // com.geely.os.system.IGlySystem
    public boolean areNotificationsEnabledForPackage(String packageName) {
        boolean zAreNotificationsEnabledForPackage = false;
        try {
            java.lang.reflect.Method getServiceMethod = NotificationManager.class.getMethod("getService");
            Object service = getServiceMethod.invoke(null);

            if (service == null) {
                GlyLog.d("OneVehicleSDK_GlySystemImpl", "iNotificationService is null");
                return false;
            }

            int uid = this.mContext.getPackageManager().getApplicationInfo(packageName, 128).uid;

            java.lang.reflect.Method method = service.getClass().getMethod("areNotificationsEnabledForPackage", String.class, int.class);
            zAreNotificationsEnabledForPackage = (boolean) method.invoke(service, packageName, uid);
        } catch (Exception e) {
            GlyLog.e("OneVehicleSDK_GlySystemImpl", "areNotificationsEnabledForPackage error : " + e.getMessage());
        }
        GlyLog.d("OneVehicleSDK_GlySystemImpl", "areNotificationsEnabledForPackage: packageName = " + packageName + ", ret = " + zAreNotificationsEnabledForPackage);
        return zAreNotificationsEnabledForPackage;
    }

    @Override // com.geely.os.system.IGlySystem
    public void setNotificationsEnabledForPackage(String packageName, boolean enable) {
        GlyLog.d(GlyLog.DEFAULT_TAG, "setNotificationsEnabledForPackage: packageName = " + packageName + ", enable = " + enable);
        try {
            java.lang.reflect.Method getServiceMethod = NotificationManager.class.getMethod("getService");
            Object service = getServiceMethod.invoke(null);

            if (service == null) {
                GlyLog.d("OneVehicleSDK_GlySystemImpl", "iNotificationService is null");
                return;
            }

            int uid = this.mContext.getPackageManager().getApplicationInfo(packageName, 128).uid;

            java.lang.reflect.Method method = service.getClass().getMethod("setNotificationsEnabledForPackage", String.class, int.class, boolean.class);
            method.invoke(service, packageName, uid, enable);
        } catch (Exception e) {
            GlyLog.e("OneVehicleSDK_GlySystemImpl", "setNotificationsEnabledForPackage error : " + e.getMessage());
        }
    }

    @Override // com.geely.os.system.IGlySystem
    public int getDrivingEntertainmentRestriction() {
        int i = Settings.System.getInt(this.mContext.getContentResolver(), GlySystemPropertyValue.FUNCTION_DRIVING_ENTERTAINMENT_RESTRICTION, 1);
        GlyLog.d("OneVehicleSDK_GlySystemImpl", "getDrivingEntertainmentRestriction: " + i);
        return i;
    }

    @Override // com.geely.os.system.IGlySystem
    public void setDrivingEntertainmentRestriction(int restriction) {
        GlyLog.d("OneVehicleSDK_GlySystemImpl", "setDrivingEntertainmentRestriction: " + restriction);
        try {
            Settings.System.putInt(this.mContext.getContentResolver(), GlySystemPropertyValue.FUNCTION_DRIVING_ENTERTAINMENT_RESTRICTION, restriction);
        } catch (Exception e) {
            GlyLog.e("OneVehicleSDK_GlySystemImpl", "setDrivingEntertainmentRestriction error : " + e.getMessage());
        }
    }

    @Override // com.geely.os.system.IGlySystem
    public String getVin() {
        Device device = this.device;
        return device != null ? device.getVin() : "";
    }

    @Override // com.geely.os.system.IGlySystem
    public String getVehicleName() {
        String defaultValue = "G636";
        String str = defaultValue;
        try {
            Class<?> clazz = Class.forName("android.os.SystemProperties");
            java.lang.reflect.Method getMethod = clazz.getMethod("get", String.class, String.class);
            str = (String) getMethod.invoke(null, "ro.product.model", defaultValue);
        } catch (Exception e) {
            GlyLog.e("OneVehicleSDK_GlySystemImpl", "Failed to get vehicle name via reflection: " + e.getMessage());
            e.printStackTrace();
        }

        GlyLog.i("OneVehicleSDK_GlySystemImpl", "vehicleName = " + str);
        return str;
    }

    @Override // com.geely.os.system.IGlySystem
    public int getOperatorCode() {
        Device device = this.device;
        if (device == null) {
            return 0;
        }
        int operatorCode = device.getOperatorCode();
        GlyLog.i("OneVehicleSDK_GlySystemImpl", "operatorCode = " + operatorCode);
        return operatorCode;
    }

    @Override // com.geely.os.system.IGlySystem
    public String getIhuId() {
        Device device = this.device;
        if (device == null) {
            return "";
        }
        String ihuId = device.getIhuId();
        GlyLog.i("OneVehicleSDK_GlySystemImpl", "ihuId = " + ihuId);
        return ihuId;
    }

    @Override // com.geely.os.system.IGlySystem
    public String getVehicleType() {
        Device device = this.device;
        if (device == null) {
            return "";
        }
        String vehicleType = device.getVehicleType();
        GlyLog.i("OneVehicleSDK_GlySystemImpl", "vehicleType = " + vehicleType);
        return vehicleType;
    }

    @Override // com.geely.os.system.IGlySystem
    public String getOperatorName() {
        Device device = this.device;
        if (device == null) {
            return "";
        }
        String operatorName = device.getOperatorName();
        GlyLog.i("OneVehicleSDK_GlySystemImpl", "operatorName = " + operatorName);
        return operatorName;
    }

    @Override // com.geely.os.system.IGlySystem
    public String getMpuSoftwareVersion() {
        Device device = this.device;
        if (device == null) {
            return "";
        }
        String mpuSoftwareVersion = device.getMpuSoftwareVersion();
        GlyLog.i("OneVehicleSDK_GlySystemImpl", "mpuSoftwareVersion = " + mpuSoftwareVersion);
        return mpuSoftwareVersion;
    }

    @Override // com.geely.os.system.IGlySystem
    public String getSerialNo() {
        Device device = this.device;
        if (device == null) {
            return "";
        }
        String serialNo = device.getSerialNo();
        GlyLog.i("OneVehicleSDK_GlySystemImpl", "serialNo = " + serialNo);
        return serialNo;
    }

    @Override // com.geely.os.system.IGlySystem
    public String getVehicleTypeConfig() {
        Device device = this.device;
        if (device == null) {
            return "";
        }
        String vehicleTypeConfig = device.getVehicleTypeConfig();
        GlyLog.i("OneVehicleSDK_GlySystemImpl", "VehicleTypeConfig = " + vehicleTypeConfig);
        return vehicleTypeConfig;
    }
}
