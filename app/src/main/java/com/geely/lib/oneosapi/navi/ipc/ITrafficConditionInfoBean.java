package com.geely.lib.oneosapi.navi.ipc;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public class ITrafficConditionInfoBean implements Parcelable {
    public static final Creator<ITrafficConditionInfoBean> CREATOR = new Creator<ITrafficConditionInfoBean>() { // from class: com.geely.lib.oneosapi.navi.ipc.ITrafficConditionInfoBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ITrafficConditionInfoBean createFromParcel(Parcel in) {
            return new ITrafficConditionInfoBean(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ITrafficConditionInfoBean[] newArray(int size) {
            return new ITrafficConditionInfoBean[size];
        }
    };
    private Bundle extras;
    private int remainDistance;
    private int remainTime;
    private int resultCode;
    private int totalDistance;
    private int totalTime;
    private List<ITrafficSegInfoBean> trafficSegInfos;

    public ITrafficConditionInfoBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Bundle getExtras() {
        return this.extras;
    }

    public int getRemainDistance() {
        return this.remainDistance;
    }

    public int getRemainTime() {
        return this.remainTime;
    }

    public int getResultCode() {
        return this.resultCode;
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

    public void readFromParcel(Parcel in) {
        this.totalDistance = in.readInt();
        this.remainDistance = in.readInt();
        this.trafficSegInfos = in.createTypedArrayList(ITrafficSegInfoBean.CREATOR);
        this.totalTime = in.readInt();
        this.remainTime = in.readInt();
        this.resultCode = in.readInt();
        this.extras = in.readBundle(Bundle.class.getClassLoader());
    }

    public void setExtras(Bundle extras) {
        this.extras = extras;
    }

    public void setRemainDistance(int remainDistance) {
        this.remainDistance = remainDistance;
    }

    public void setRemainTime(int remainTime) {
        this.remainTime = remainTime;
    }

    public void setResultCode(int resultCode) {
        this.resultCode = resultCode;
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

    public String toString() {
        return "ITrafficConditionInfoBean{totalDistance=" + this.totalDistance + ", remainDistance=" + this.remainDistance + ", trafficSegInfos=" + this.trafficSegInfos + ", totalTime=" + this.totalTime + ", remainTime=" + this.remainTime + ", resultCode=" + this.resultCode + ", extras=" + this.extras + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.totalDistance);
        dest.writeInt(this.remainDistance);
        dest.writeTypedList(this.trafficSegInfos);
        dest.writeInt(this.totalTime);
        dest.writeInt(this.remainTime);
        dest.writeInt(this.resultCode);
        dest.writeBundle(this.extras);
    }

    public ITrafficConditionInfoBean(Parcel in) {
        this.totalDistance = in.readInt();
        this.remainDistance = in.readInt();
        this.trafficSegInfos = in.createTypedArrayList(ITrafficSegInfoBean.CREATOR);
        this.totalTime = in.readInt();
        this.remainTime = in.readInt();
        this.resultCode = in.readInt();
        this.extras = in.readBundle(Bundle.class.getClassLoader());
    }
}
