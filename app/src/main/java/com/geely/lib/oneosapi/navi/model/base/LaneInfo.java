package com.geely.lib.oneosapi.navi.model.base;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class LaneInfo implements Parcelable {
    public static final Creator<LaneInfo> CREATOR = new Creator<LaneInfo>() { // from class: com.geely.lib.oneosapi.navi.model.base.LaneInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LaneInfo createFromParcel(Parcel source) {
            return new LaneInfo(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LaneInfo[] newArray(int size) {
            return new LaneInfo[size];
        }
    };
    private int laneIconId;
    private int laneIndex;

    public LaneInfo() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getLaneIconId() {
        return this.laneIconId;
    }

    public int getLaneIndex() {
        return this.laneIndex;
    }

    public void setLaneIconId(int laneIconId) {
        this.laneIconId = laneIconId;
    }

    public void setLaneIndex(int laneIndex) {
        this.laneIndex = laneIndex;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LaneInfo{");
        sb.append("laneIndex='").append(this.laneIndex).append('\'');
        sb.append(", laneIconId='").append(this.laneIconId).append('\'');
        sb.append('}');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.laneIndex);
        dest.writeInt(this.laneIconId);
    }

    public LaneInfo(Parcel in) {
        this.laneIndex = in.readInt();
        this.laneIconId = in.readInt();
    }
}
