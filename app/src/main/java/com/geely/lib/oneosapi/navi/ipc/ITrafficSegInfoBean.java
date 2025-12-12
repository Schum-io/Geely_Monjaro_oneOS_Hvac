package com.geely.lib.oneosapi.navi.ipc;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ITrafficSegInfoBean implements Parcelable {
    public static final Creator<ITrafficSegInfoBean> CREATOR = new Creator<ITrafficSegInfoBean>() { // from class: com.geely.lib.oneosapi.navi.ipc.ITrafficSegInfoBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ITrafficSegInfoBean createFromParcel(Parcel in) {
            return new ITrafficSegInfoBean(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ITrafficSegInfoBean[] newArray(int size) {
            return new ITrafficSegInfoBean[size];
        }
    };
    private Bundle extras;
    private double inPercent;
    private int index;
    private int trafficDistance;
    private int trafficLevel;
    private int trafficTime;

    public ITrafficSegInfoBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Bundle getExtras() {
        return this.extras;
    }

    public double getInPercent() {
        return this.inPercent;
    }

    public int getIndex() {
        return this.index;
    }

    public int getTrafficDistance() {
        return this.trafficDistance;
    }

    public int getTrafficLevel() {
        return this.trafficLevel;
    }

    public int getTrafficTime() {
        return this.trafficTime;
    }

    public void readFromParcel(Parcel in) {
        this.trafficLevel = in.readInt();
        this.trafficDistance = in.readInt();
        this.trafficTime = in.readInt();
        this.index = in.readInt();
        this.inPercent = in.readDouble();
        this.extras = in.readBundle(Bundle.class.getClassLoader());
    }

    public void setExtras(Bundle extras) {
        this.extras = extras;
    }

    public void setInPercent(double inPercent) {
        this.inPercent = inPercent;
    }

    public void setIndex(int index) {
        this.index = index;
    }

    public void setTrafficDistance(int trafficDistance) {
        this.trafficDistance = trafficDistance;
    }

    public void setTrafficLevel(int trafficLevel) {
        this.trafficLevel = trafficLevel;
    }

    public void setTrafficTime(int trafficTime) {
        this.trafficTime = trafficTime;
    }

    public String toString() {
        return "ITrafficSegInfoBean{trafficLevel=" + this.trafficLevel + ", trafficDistance=" + this.trafficDistance + ", trafficTime=" + this.trafficTime + ", index=" + this.index + ", inPercent=" + this.inPercent + ", extras=" + this.extras + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.trafficLevel);
        dest.writeInt(this.trafficDistance);
        dest.writeInt(this.trafficTime);
        dest.writeInt(this.index);
        dest.writeDouble(this.inPercent);
        dest.writeBundle(this.extras);
    }

    public ITrafficSegInfoBean(Parcel in) {
        this.trafficLevel = in.readInt();
        this.trafficDistance = in.readInt();
        this.trafficTime = in.readInt();
        this.index = in.readInt();
        this.inPercent = in.readDouble();
        this.extras = in.readBundle(Bundle.class.getClassLoader());
    }
}
