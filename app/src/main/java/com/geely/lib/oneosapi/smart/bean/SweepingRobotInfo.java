package com.geely.lib.oneosapi.smart.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class SweepingRobotInfo implements Parcelable {
    public static final Creator<SweepingRobotInfo> CREATOR = new Creator<SweepingRobotInfo>() { // from class: com.geely.lib.oneosapi.smart.bean.SweepingRobotInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SweepingRobotInfo createFromParcel(Parcel in) {
            return new SweepingRobotInfo(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SweepingRobotInfo[] newArray(int size) {
            return new SweepingRobotInfo[size];
        }
    };
    private int energyValue;
    private int switchOpen;

    public SweepingRobotInfo() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getEnergyValue() {
        return this.energyValue;
    }

    public int getSwitchOpen() {
        return this.switchOpen;
    }

    public void setEnergyValue(int energyValue) {
        this.energyValue = energyValue;
    }

    public void setSwitchOpen(int switchOpen) {
        this.switchOpen = switchOpen;
    }

    public String toString() {
        return "SweepingRobotInfo{switchOpen=" + this.switchOpen + ", energyValue=" + this.energyValue + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.switchOpen);
        dest.writeInt(this.energyValue);
    }

    public SweepingRobotInfo(Parcel in) {
        this.switchOpen = in.readInt();
        this.energyValue = in.readInt();
    }
}
