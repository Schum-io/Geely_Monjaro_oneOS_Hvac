package com.geely.lib.oneosapi.navi.model.service;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;

/* loaded from: classes.dex */
public class RspHighwayExitInfo extends NaviBaseModel implements Parcelable {
    public static final Creator<RspHighwayExitInfo> CREATOR = new Creator<RspHighwayExitInfo>() { // from class: com.geely.lib.oneosapi.navi.model.service.RspHighwayExitInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspHighwayExitInfo createFromParcel(Parcel source) {
            return new RspHighwayExitInfo(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspHighwayExitInfo[] newArray(int size) {
            return new RspHighwayExitInfo[size];
        }
    };
    private static final int CUR_VERSION = 2;
    private long etaDistance;
    private long etaTime;
    private int exitCount;
    private String exitDirection;
    private String exitNumStr;

    public RspHighwayExitInfo(NaviBaseModel reqModel) {
        copyBaseInfo(reqModel);
        setProtocolVersion(2);
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getEtaDistance() {
        return this.etaDistance;
    }

    public long getEtaTime() {
        return this.etaTime;
    }

    public int getExitCount() {
        return this.exitCount;
    }

    public String getExitDirection() {
        return this.exitDirection;
    }

    public String getExitNumStr() {
        return this.exitNumStr;
    }

    public void setEtaDistance(long etaDistance) {
        this.etaDistance = etaDistance;
    }

    public void setEtaTime(long etaTime) {
        this.etaTime = etaTime;
    }

    public void setExitCount(int exitCount) {
        this.exitCount = exitCount;
    }

    public void setExitDirection(String exitDirection) {
        this.exitDirection = exitDirection;
    }

    public void setExitNumStr(String exitNumStr) {
        this.exitNumStr = exitNumStr;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        StringBuilder sb = new StringBuilder("RspHighwayExitInfo{");
        sb.append("exitCount='").append(this.exitCount).append('\'');
        sb.append(", exitNumStr='").append(this.exitNumStr).append('\'');
        sb.append(", exitDirection='").append(this.exitDirection).append('\'');
        sb.append(", etaDistance=").append(this.etaDistance);
        sb.append(", etaTime=").append(this.etaTime);
        sb.append("{base=").append(super.toString()).append("}; ");
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeString(this.exitNumStr);
        dest.writeString(this.exitDirection);
        dest.writeLong(this.etaDistance);
        dest.writeLong(this.etaTime);
        if (getProtocolVersion() > 1) {
            dest.writeInt(this.exitCount);
        }
    }

    public RspHighwayExitInfo(Parcel in) {
        super(in);
        this.exitNumStr = in.readString();
        this.exitDirection = in.readString();
        this.etaDistance = in.readLong();
        this.etaTime = in.readLong();
        if (getProtocolVersion() > 1) {
            this.exitCount = in.readInt();
        }
    }
}
