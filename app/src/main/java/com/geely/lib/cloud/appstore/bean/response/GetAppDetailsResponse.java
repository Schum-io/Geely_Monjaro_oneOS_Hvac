package com.geely.lib.cloud.appstore.bean.response;

import com.geely.lib.cloud.appstore.bean.Category;
import java.util.List;

/* loaded from: classes.dex */
public class GetAppDetailsResponse {
    private String data;
    private String message;
    private String status;

    private class Data {
        private App app;
        private Category category;

        private Data() {
        }
    }

    private class App {
        private String UpdateTime;
        private String activityCode;
        private String apkHash;
        private String apkId;
        private String apkPath;
        private String apkSize;
        private String appDownNumbers;
        private String appPackageType;
        private String appSign;
        private String bindType;
        private String description;
        private String developer;
        private String features;
        private String forceUpdate;
        private boolean hasLinkedApps;
        private String icon;
        private boolean isAffectDrivingSafety;
        private boolean isPopupWarmTip;
        private String linkedDescription;
        private String linkedType;
        private String name;
        private String packageMetaType;
        private String packageName;
        private List previews;
        private String recommendAutoUpdateDesc;
        private String silent;
        private String updateInfo;
        private String useType;
        private String versionCode;
        private String versionName;
        private String warmTip;

        private App() {
        }

        public String getName() {
            return this.name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public String getIcon() {
            return this.icon;
        }

        public void setIcon(String icon) {
            this.icon = icon;
        }

        public String getApkSize() {
            return this.apkSize;
        }

        public void setApkSize(String apkSize) {
            this.apkSize = apkSize;
        }

        public String getPackageName() {
            return this.packageName;
        }

        public void setPackageName(String packageName) {
            this.packageName = packageName;
        }

        public String getVersionName() {
            return this.versionName;
        }

        public void setVersionName(String versionName) {
            this.versionName = versionName;
        }

        public String getFeatures() {
            return this.features;
        }

        public void setFeatures(String features) {
            this.features = features;
        }

        public boolean isAffectDrivingSafety() {
            return this.isAffectDrivingSafety;
        }

        public void setAffectDrivingSafety(boolean affectDrivingSafety) {
            this.isAffectDrivingSafety = affectDrivingSafety;
        }

        public boolean isPopupWarmTip() {
            return this.isPopupWarmTip;
        }

        public void setPopupWarmTip(boolean popupWarmTip) {
            this.isPopupWarmTip = popupWarmTip;
        }

        public String getWarmTip() {
            return this.warmTip;
        }

        public void setWarmTip(String warmTip) {
            this.warmTip = warmTip;
        }

        public String getUseType() {
            return this.useType;
        }

        public void setUseType(String useType) {
            this.useType = useType;
        }

        public String getBindType() {
            return this.bindType;
        }

        public void setBindType(String bindType) {
            this.bindType = bindType;
        }

        public String getActivityCode() {
            return this.activityCode;
        }

        public void setActivityCode(String activityCode) {
            this.activityCode = activityCode;
        }

        public String getLinkedType() {
            return this.linkedType;
        }

        public void setLinkedType(String linkedType) {
            this.linkedType = linkedType;
        }

        public String getLinkedDescription() {
            return this.linkedDescription;
        }

        public void setLinkedDescription(String linkedDescription) {
            this.linkedDescription = linkedDescription;
        }

        public boolean isHasLinkedApps() {
            return this.hasLinkedApps;
        }

        public void setHasLinkedApps(boolean hasLinkedApps) {
            this.hasLinkedApps = hasLinkedApps;
        }

        public String getApkId() {
            return this.apkId;
        }

        public void setApkId(String apkId) {
            this.apkId = apkId;
        }

        public String getVersionCode() {
            return this.versionCode;
        }

        public void setVersionCode(String versionCode) {
            this.versionCode = versionCode;
        }

        public String getApkPath() {
            return this.apkPath;
        }

        public void setApkPath(String apkPath) {
            this.apkPath = apkPath;
        }

        public String getApkHash() {
            return this.apkHash;
        }

        public void setApkHash(String apkHash) {
            this.apkHash = apkHash;
        }

        public String getAppPackageType() {
            return this.appPackageType;
        }

        public void setAppPackageType(String appPackageType) {
            this.appPackageType = appPackageType;
        }

        public String getPackageMetaType() {
            return this.packageMetaType;
        }

        public void setPackageMetaType(String packageMetaType) {
            this.packageMetaType = packageMetaType;
        }

        public String getDeveloper() {
            return this.developer;
        }

        public void setDeveloper(String developer) {
            this.developer = developer;
        }

        public List getPreviews() {
            return this.previews;
        }

        public void setPreviews(List previews) {
            this.previews = previews;
        }

        public String getUpdateInfo() {
            return this.updateInfo;
        }

        public void setUpdateInfo(String updateInfo) {
            this.updateInfo = updateInfo;
        }

        public String getUpdateTime() {
            return this.UpdateTime;
        }

        public void setUpdateTime(String updateTime) {
            this.UpdateTime = updateTime;
        }

        public String getDescription() {
            return this.description;
        }

        public void setDescription(String description) {
            this.description = description;
        }

        public String getForceUpdate() {
            return this.forceUpdate;
        }

        public void setForceUpdate(String forceUpdate) {
            this.forceUpdate = forceUpdate;
        }

        public String getRecommendAutoUpdateDesc() {
            return this.recommendAutoUpdateDesc;
        }

        public void setRecommendAutoUpdateDesc(String recommendAutoUpdateDesc) {
            this.recommendAutoUpdateDesc = recommendAutoUpdateDesc;
        }

        public String getAppDownNumbers() {
            return this.appDownNumbers;
        }

        public void setAppDownNumbers(String appDownNumbers) {
            this.appDownNumbers = appDownNumbers;
        }

        public String getAppSign() {
            return this.appSign;
        }

        public void setAppSign(String appSign) {
            this.appSign = appSign;
        }

        public String getSilent() {
            return this.silent;
        }

        public void setSilent(String silent) {
            this.silent = silent;
        }
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getData() {
        return this.data;
    }

    public void setData(String data) {
        this.data = data;
    }
}
