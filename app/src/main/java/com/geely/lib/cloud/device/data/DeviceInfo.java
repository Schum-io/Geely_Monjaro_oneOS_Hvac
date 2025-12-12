package com.geely.lib.cloud.device.data;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class DeviceInfo implements Parcelable {
    public static final Creator<DeviceInfo> CREATOR = new Creator<DeviceInfo>() { // from class: com.geely.lib.cloud.device.data.DeviceInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DeviceInfo createFromParcel(Parcel in) {
            return new DeviceInfo(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DeviceInfo[] newArray(int size) {
            return new DeviceInfo[size];
        }
    };
    private String snCode;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public DeviceInfo() {
    }

    protected DeviceInfo(Parcel in) {
        this.vin = in.readString();
        this.snCode = in.readString();
    }

    public String getVin() {
        return this.vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }

    public String getSnCode() {
        return this.snCode;
    }

    public void setSnCode(String snCode) {
        this.snCode = snCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.vin);
        dest.writeString(this.snCode);
    }

    public String toString() {
        return "DeviceInfo{, vin=" + this.vin + ", snCode=" + this.snCode + '}';
    }
}
