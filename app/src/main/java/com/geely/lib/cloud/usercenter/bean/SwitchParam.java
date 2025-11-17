package com.geely.lib.cloud.usercenter.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class SwitchParam implements Parcelable {
    public static final Creator<SwitchParam> CREATOR = new Creator<SwitchParam>() { // from class: com.geely.lib.cloud.usercenter.bean.SwitchParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SwitchParam createFromParcel(Parcel in) {
            return new SwitchParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SwitchParam[] newArray(int size) {
            return new SwitchParam[size];
        }
    };
    private String switchStatus;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public SwitchParam() {
    }

    public SwitchParam(String vin, String switchStatus) {
        this.vin = vin;
        this.switchStatus = switchStatus;
    }

    public String getVin() {
        return this.vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }

    public String getSwitchStatus() {
        return this.switchStatus;
    }

    public void setSwitchStatus(String switchStatus) {
        this.switchStatus = switchStatus;
    }

    protected SwitchParam(Parcel in) {
        this.vin = in.readString();
        this.switchStatus = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.vin);
        dest.writeString(this.switchStatus);
    }
}
