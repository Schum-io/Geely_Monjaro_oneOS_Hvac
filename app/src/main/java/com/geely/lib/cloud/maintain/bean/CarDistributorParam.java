package com.geely.lib.cloud.maintain.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class CarDistributorParam implements Parcelable {
    public static final Creator<CarDistributorParam> CREATOR = new Creator<CarDistributorParam>() { // from class: com.geely.lib.cloud.maintain.bean.CarDistributorParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CarDistributorParam createFromParcel(Parcel in) {
            return new CarDistributorParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CarDistributorParam[] newArray(int size) {
            return new CarDistributorParam[size];
        }
    };
    private String latitude;
    private String longitude;
    private int operatorCode;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public CarDistributorParam() {
    }

    public CarDistributorParam(String longitude, String latitude, int operatorCode) {
        this.longitude = longitude;
        this.latitude = latitude;
        this.operatorCode = operatorCode;
    }

    protected CarDistributorParam(Parcel in) {
        this.longitude = in.readString();
        this.latitude = in.readString();
        this.operatorCode = in.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.longitude);
        dest.writeString(this.latitude);
        dest.writeInt(this.operatorCode);
    }

    public String getLongitude() {
        return this.longitude;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }

    public String getLatitude() {
        return this.latitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    public int getOperatorCode() {
        return this.operatorCode;
    }

    public void setOperatorCode(int operatorCode) {
        this.operatorCode = operatorCode;
    }
}
