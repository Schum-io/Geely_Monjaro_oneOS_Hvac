package com.geely.lib.cloud.usercenter.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ApkParam implements Parcelable {
    public static final Creator<ApkParam> CREATOR = new Creator<ApkParam>() { // from class: com.geely.lib.cloud.usercenter.bean.ApkParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ApkParam createFromParcel(Parcel in) {
            return new ApkParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ApkParam[] newArray(int size) {
            return new ApkParam[size];
        }
    };
    private String apkId;
    private String apkName;
    private String apkUrl;
    private String applicationName;
    private String iconUrl;
    private String vehicleModel;
    private String versionCode;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ApkParam() {
    }

    public ApkParam(String apkId, String applicationName, String iconUrl, String vehicleModel, String versionCode, String apkName, String apkUrl) {
        this.apkId = apkId;
        this.applicationName = applicationName;
        this.iconUrl = iconUrl;
        this.vehicleModel = vehicleModel;
        this.versionCode = versionCode;
        this.apkName = apkName;
        this.apkUrl = apkUrl;
    }

    protected ApkParam(Parcel in) {
        this.apkId = in.readString();
        this.applicationName = in.readString();
        this.iconUrl = in.readString();
        this.vehicleModel = in.readString();
        this.versionCode = in.readString();
        this.apkName = in.readString();
        this.apkUrl = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.apkId);
        dest.writeString(this.applicationName);
        dest.writeString(this.iconUrl);
        dest.writeString(this.vehicleModel);
        dest.writeString(this.versionCode);
        dest.writeString(this.apkName);
        dest.writeString(this.apkUrl);
    }

    public String getApkId() {
        return this.apkId;
    }

    public void setApkId(String apkId) {
        this.apkId = apkId;
    }

    public String getApplicationName() {
        return this.applicationName;
    }

    public void setApplicationName(String applicationName) {
        this.applicationName = applicationName;
    }

    public String getIconUrl() {
        return this.iconUrl;
    }

    public void setIconUrl(String iconUrl) {
        this.iconUrl = iconUrl;
    }

    public String getVehicleModel() {
        return this.vehicleModel;
    }

    public void setVehicleModel(String vehicleModel) {
        this.vehicleModel = vehicleModel;
    }

    public String getVersionCode() {
        return this.versionCode;
    }

    public void setVersionCode(String versionCode) {
        this.versionCode = versionCode;
    }

    public String getApkName() {
        return this.apkName;
    }

    public void setApkName(String apkName) {
        this.apkName = apkName;
    }

    public String getApkUrl() {
        return this.apkUrl;
    }

    public void setApkUrl(String apkUrl) {
        this.apkUrl = apkUrl;
    }
}
