package com.geely.lib.oneosapi.navi.model.service;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class TrafficInfo implements Parcelable {
    public static final Creator<TrafficInfo> CREATOR = new Creator<TrafficInfo>() { // from class: com.geely.lib.oneosapi.navi.model.service.TrafficInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TrafficInfo createFromParcel(Parcel source) {
            return new TrafficInfo(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TrafficInfo[] newArray(int size) {
            return new TrafficInfo[size];
        }
    };
    public static final int TMC_STATUS_HEAVY_JAM = 4;
    public static final int TMC_STATUS_INVALID = -1;
    public static final int TMC_STATUS_JAM = 3;
    public static final int TMC_STATUS_SLOWLY = 2;
    public static final int TMC_STATUS_UNBLOCKED = 1;
    public static final int TMC_STATUS_UNKNOWN = 0;
    private double percent;
    private int segIndex;
    private int tmcStatus;

    public TrafficInfo() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public double getPercent() {
        return this.percent;
    }

    public int getSegIndex() {
        return this.segIndex;
    }

    public int getTmcStatus() {
        return this.tmcStatus;
    }

    public void setPercent(double percent) {
        this.percent = percent;
    }

    public void setSegIndex(int segIndex) {
        this.segIndex = segIndex;
    }

    public void setTmcStatus(int tmcStatus) {
        this.tmcStatus = tmcStatus;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("TrafficInfo{");
        sb.append("tmcStatus=").append(this.tmcStatus);
        sb.append(", segIndex=").append(this.segIndex);
        sb.append(", percent=").append(this.percent);
        sb.append('}');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.tmcStatus);
        dest.writeInt(this.segIndex);
        dest.writeDouble(this.percent);
    }

    public TrafficInfo(Parcel in) {
        this.tmcStatus = in.readInt();
        this.segIndex = in.readInt();
        this.percent = in.readDouble();
    }
}
