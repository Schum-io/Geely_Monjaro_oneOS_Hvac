package com.geely.lib.cloud.appstore.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class VinPackageParam implements Parcelable {
    public static final Creator<VinPackageParam> CREATOR = new Creator<VinPackageParam>() { // from class: com.geely.lib.cloud.appstore.bean.VinPackageParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VinPackageParam createFromParcel(Parcel in) {
            return new VinPackageParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VinPackageParam[] newArray(int size) {
            return new VinPackageParam[size];
        }
    };
    private String appPackage;
    private int appVersion;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public VinPackageParam() {
    }

    public VinPackageParam(String vin, String appPackage) {
        this.vin = vin;
        this.appPackage = appPackage;
    }

    protected VinPackageParam(Parcel in) {
        this.vin = in.readString();
        this.appPackage = in.readString();
        this.appVersion = in.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.vin);
        dest.writeString(this.appPackage);
        dest.writeInt(this.appVersion);
    }

    public String getVin() {
        return this.vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }

    public String getAppPackage() {
        return this.appPackage;
    }

    public void setAppPackage(String appPackage) {
        this.appPackage = appPackage;
    }

    public int getAppVersion() {
        return this.appVersion;
    }

    public void setAppVersion(int appVersion) {
        this.appVersion = appVersion;
    }
}
