package com.geely.lib.cloud.appstore.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class AppPackageParam implements Parcelable {
    public static final Creator<AppPackageParam> CREATOR = new Creator<AppPackageParam>() { // from class: com.geely.lib.cloud.appstore.bean.AppPackageParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppPackageParam createFromParcel(Parcel in) {
            return new AppPackageParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppPackageParam[] newArray(int size) {
            return new AppPackageParam[size];
        }
    };
    private String appPackage;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public AppPackageParam(String appPackage) {
        this.appPackage = appPackage;
    }

    protected AppPackageParam(Parcel in) {
        this.appPackage = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.appPackage);
    }

    public String getAppPackage() {
        return this.appPackage;
    }

    public void setAppPackage(String appPackage) {
        this.appPackage = appPackage;
    }
}
