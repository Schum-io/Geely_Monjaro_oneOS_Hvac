package com.geely.lib.oneosapi.navi.ipc;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ITrafficSummaryInfoModelBean implements Parcelable {
    public static final Creator<ITrafficSummaryInfoModelBean> CREATOR = new Creator<ITrafficSummaryInfoModelBean>() { // from class: com.geely.lib.oneosapi.navi.ipc.ITrafficSummaryInfoModelBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ITrafficSummaryInfoModelBean createFromParcel(Parcel in) {
            return new ITrafficSummaryInfoModelBean(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ITrafficSummaryInfoModelBean[] newArray(int size) {
            return new ITrafficSummaryInfoModelBean[size];
        }
    };
    private Bundle extras;
    private int resultCode;
    private String trafficSummary;

    public ITrafficSummaryInfoModelBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Bundle getExtras() {
        return this.extras;
    }

    public int getResultCode() {
        return this.resultCode;
    }

    public String getTrafficSummary() {
        return this.trafficSummary;
    }

    public void readFromParcel(Parcel in) {
        this.trafficSummary = in.readString();
        this.resultCode = in.readInt();
        this.extras = in.readBundle(Bundle.class.getClassLoader());
    }

    public void setExtras(Bundle extras) {
        this.extras = extras;
    }

    public void setResultCode(int resultCode) {
        this.resultCode = resultCode;
    }

    public void setTrafficSummary(String trafficSummary) {
        this.trafficSummary = trafficSummary;
    }

    public String toString() {
        return "ITrafficSummaryInfoModelBean{trafficSummary='" + this.trafficSummary + "', resultCode=" + this.resultCode + ", extras=" + this.extras + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.trafficSummary);
        dest.writeInt(this.resultCode);
        dest.writeBundle(this.extras);
    }

    public ITrafficSummaryInfoModelBean(Parcel in) {
        this.trafficSummary = in.readString();
        this.resultCode = in.readInt();
        this.extras = in.readBundle(Bundle.class.getClassLoader());
    }
}
