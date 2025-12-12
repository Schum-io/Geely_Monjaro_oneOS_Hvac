package com.geely.lib.cloud.appstore.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class AppList implements Parcelable {
    public static final Creator<AppList> CREATOR = new Creator<AppList>() { // from class: com.geely.lib.cloud.appstore.bean.AppList.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppList createFromParcel(Parcel in) {
            return new AppList(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppList[] newArray(int size) {
            return new AppList[size];
        }
    };
    private String appPackage;
    private int version;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public AppList() {
    }

    public AppList(String appPackage, int version) {
        this.appPackage = appPackage;
        this.version = version;
    }

    protected AppList(Parcel in) {
        this.appPackage = in.readString();
        this.version = in.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.appPackage);
        dest.writeInt(this.version);
    }

    public String getAppPackage() {
        return this.appPackage;
    }

    public void setAppPackage(String appPackage) {
        this.appPackage = appPackage;
    }

    public int getVersion() {
        return this.version;
    }

    public void setVersion(int version) {
        this.version = version;
    }
}
