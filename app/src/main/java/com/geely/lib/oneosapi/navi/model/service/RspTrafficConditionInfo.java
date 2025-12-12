package com.geely.lib.oneosapi.navi.model.service;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.ipc.ITrafficSegInfoBean;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class RspTrafficConditionInfo extends NaviBaseModel implements Parcelable {
    public static final Creator<RspTrafficConditionInfo> CREATOR = new Creator<RspTrafficConditionInfo>() { // from class: com.geely.lib.oneosapi.navi.model.service.RspTrafficConditionInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspTrafficConditionInfo createFromParcel(Parcel source) {
            return new RspTrafficConditionInfo(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspTrafficConditionInfo[] newArray(int size) {
            return new RspTrafficConditionInfo[size];
        }
    };
    private int remainDistance;
    private int remainTime;
    private int totalDistance;
    private int totalTime;
    private List<ITrafficSegInfoBean> trafficSegInfos;

    public RspTrafficConditionInfo() {
        this.trafficSegInfos = new ArrayList();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return super.describeContents();
    }

    public int getRemainDistance() {
        return this.remainDistance;
    }

    public int getRemainTime() {
        return this.remainTime;
    }

    public int getTotalDistance() {
        return this.totalDistance;
    }

    public int getTotalTime() {
        return this.totalTime;
    }

    public List<ITrafficSegInfoBean> getTrafficSegInfos() {
        return this.trafficSegInfos;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public void readFromParcel(Parcel in) {
        super.readFromParcel(in);
        this.totalDistance = in.readInt();
        this.remainDistance = in.readInt();
        this.totalTime = in.readInt();
        this.remainTime = in.readInt();
        this.trafficSegInfos = in.createTypedArrayList(ITrafficSegInfoBean.CREATOR);
    }

    public void setRemainDistance(int remainDistance) {
        this.remainDistance = remainDistance;
    }

    public void setRemainTime(int remainTime) {
        this.remainTime = remainTime;
    }

    public void setTotalDistance(int totalDistance) {
        this.totalDistance = totalDistance;
    }

    public void setTotalTime(int totalTime) {
        this.totalTime = totalTime;
    }

    public void setTrafficSegInfos(List<ITrafficSegInfoBean> trafficSegInfos) {
        this.trafficSegInfos = trafficSegInfos;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        StringBuilder sb = new StringBuilder("RspCurrPageHotWord{");
        sb.append("getTotalDistance=").append(this.totalDistance);
        sb.append("getRemainDistance=").append(this.remainDistance);
        sb.append("getTotalTime=").append(this.totalTime);
        sb.append("getRemainTime=").append(this.remainTime);
        sb.append("{base=").append(super.toString()).append("}; ");
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeInt(this.totalDistance);
        dest.writeInt(this.remainDistance);
        dest.writeInt(this.totalTime);
        dest.writeInt(this.remainTime);
        dest.writeTypedList(this.trafficSegInfos);
    }

    public RspTrafficConditionInfo(Parcel in) {
        super(in);
        this.trafficSegInfos = new ArrayList();
        this.totalDistance = in.readInt();
        this.remainDistance = in.readInt();
        this.totalTime = in.readInt();
        this.remainTime = in.readInt();
        this.trafficSegInfos = in.createTypedArrayList(ITrafficSegInfoBean.CREATOR);
    }
}
