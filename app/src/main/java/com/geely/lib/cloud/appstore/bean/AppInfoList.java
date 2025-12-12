package com.geely.lib.cloud.appstore.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class AppInfoList implements Parcelable {
    public static final Creator<AppInfoList> CREATOR = new Creator<AppInfoList>() { // from class: com.geely.lib.cloud.appstore.bean.AppInfoList.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppInfoList createFromParcel(Parcel in) {
            return new AppInfoList(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppInfoList[] newArray(int size) {
            return new AppInfoList[size];
        }
    };
    private int appCurrentVersion;
    private int appInitVersion;
    private int appLastVersion;
    private String appPackageName;
    private String appUpdateDate;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public AppInfoList() {
    }

    public AppInfoList(String appPackageName, int appCurrentVersion, String appUpdateDate, int appLastVersion, int appInitVersion) {
        this.appPackageName = appPackageName;
        this.appCurrentVersion = appCurrentVersion;
        this.appUpdateDate = appUpdateDate;
        this.appLastVersion = appLastVersion;
        this.appInitVersion = appInitVersion;
    }

    protected AppInfoList(Parcel in) {
        this.appPackageName = in.readString();
        this.appCurrentVersion = in.readInt();
        this.appUpdateDate = in.readString();
        this.appLastVersion = in.readInt();
        this.appInitVersion = in.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.appPackageName);
        dest.writeInt(this.appCurrentVersion);
        dest.writeString(this.appUpdateDate);
        dest.writeInt(this.appLastVersion);
        dest.writeInt(this.appInitVersion);
    }

    public String getAppPackageName() {
        return this.appPackageName;
    }

    public void setAppPackageName(String appPackageName) {
        this.appPackageName = appPackageName;
    }

    public int getAppCurrentVersion() {
        return this.appCurrentVersion;
    }

    public void setAppCurrentVersion(int appCurrentVersion) {
        this.appCurrentVersion = appCurrentVersion;
    }

    public String getAppUpdateDate() {
        return this.appUpdateDate;
    }

    public void setAppUpdateDate(String appUpdateDate) {
        this.appUpdateDate = appUpdateDate;
    }

    public int getAppLastVersion() {
        return this.appLastVersion;
    }

    public void setAppLastVersion(int appLastVersion) {
        this.appLastVersion = appLastVersion;
    }

    public int getAppInitVersion() {
        return this.appInitVersion;
    }

    public void setAppInitVersion(int appInitVersion) {
        this.appInitVersion = appInitVersion;
    }
}
