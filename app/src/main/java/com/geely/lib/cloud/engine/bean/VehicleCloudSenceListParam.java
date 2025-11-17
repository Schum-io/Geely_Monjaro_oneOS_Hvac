package com.geely.lib.cloud.engine.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class VehicleCloudSenceListParam implements Parcelable {
    public static final Creator<VehicleCloudSenceListParam> CREATOR = new Creator<VehicleCloudSenceListParam>() { // from class: com.geely.lib.cloud.engine.bean.VehicleCloudSenceListParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VehicleCloudSenceListParam createFromParcel(Parcel in) {
            return new VehicleCloudSenceListParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VehicleCloudSenceListParam[] newArray(int size) {
            return new VehicleCloudSenceListParam[size];
        }
    };
    private String code;
    private String versionCode;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public VehicleCloudSenceListParam() {
    }

    public VehicleCloudSenceListParam(String code, String versionCode) {
        this.code = code;
        this.versionCode = versionCode;
    }

    protected VehicleCloudSenceListParam(Parcel in) {
        this.code = in.readString();
        this.versionCode = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.code);
        dest.writeString(this.versionCode);
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getVersionCode() {
        return this.versionCode;
    }

    public void setVersionCode(String versionCode) {
        this.versionCode = versionCode;
    }
}
