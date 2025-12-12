package com.geely.lib.oneosapi.smart.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class AirPurificationInfo implements Parcelable {
    public static final Creator<AirPurificationInfo> CREATOR = new Creator<AirPurificationInfo>() { // from class: com.geely.lib.oneosapi.smart.bean.AirPurificationInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AirPurificationInfo createFromParcel(Parcel in) {
            return new AirPurificationInfo(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AirPurificationInfo[] newArray(int size) {
            return new AirPurificationInfo[size];
        }
    };
    private int switchOpen;
    private int windSpeed;
    private String workModel;

    public AirPurificationInfo() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getSwitchOpen() {
        return this.switchOpen;
    }

    public int getWindSpeed() {
        return this.windSpeed;
    }

    public String getWorkModel() {
        return this.workModel;
    }

    public void setSwitchOpen(int switchOpen) {
        this.switchOpen = switchOpen;
    }

    public void setWindSpeed(int windSpeed) {
        this.windSpeed = windSpeed;
    }

    public void setWorkModel(String workModel) {
        this.workModel = workModel;
    }

    public String toString() {
        return "AirPurificationInfo{switchOpen=" + this.switchOpen + ", windSpeed=" + this.windSpeed + ", workModel='" + this.workModel + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.switchOpen);
        dest.writeInt(this.windSpeed);
        dest.writeString(this.workModel);
    }

    public AirPurificationInfo(Parcel in) {
        this.switchOpen = in.readInt();
        this.windSpeed = in.readInt();
        this.workModel = in.readString();
    }
}
