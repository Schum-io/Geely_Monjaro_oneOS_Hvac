package com.geely.lib.oneosapi.navi.ipc;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ICommuteInfoBean implements Parcelable {
    public static final Creator<ICommuteInfoBean> CREATOR = new Creator<ICommuteInfoBean>() { // from class: com.geely.lib.oneosapi.navi.ipc.ICommuteInfoBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ICommuteInfoBean createFromParcel(Parcel in) {
            return new ICommuteInfoBean(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ICommuteInfoBean[] newArray(int size) {
            return new ICommuteInfoBean[size];
        }
    };
    private int commuteType;
    private Bundle extras;
    private int resultCode;
    private ITrafficConditionInfoBean trafficCondition;

    public ICommuteInfoBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getCommuteType() {
        return this.commuteType;
    }

    public Bundle getExtras() {
        return this.extras;
    }

    public int getResultCode() {
        return this.resultCode;
    }

    public ITrafficConditionInfoBean getTrafficCondition() {
        return this.trafficCondition;
    }

    public void readFromParcel(Parcel in) {
        this.commuteType = in.readInt();
        this.trafficCondition = (ITrafficConditionInfoBean) in.readParcelable(ITrafficConditionInfoBean.class.getClassLoader());
        this.resultCode = in.readInt();
        this.extras = in.readBundle(Bundle.class.getClassLoader());
    }

    public void setCommuteType(int commuteType) {
        this.commuteType = commuteType;
    }

    public void setExtras(Bundle extras) {
        this.extras = extras;
    }

    public void setResultCode(int resultCode) {
        this.resultCode = resultCode;
    }

    public void setTrafficCondition(ITrafficConditionInfoBean trafficCondition) {
        this.trafficCondition = trafficCondition;
    }

    public String toString() {
        return "ICommuteInfoBean{commuteType=" + this.commuteType + ", trafficCondition=" + this.trafficCondition + ", resultCode=" + this.resultCode + ", extras=" + this.extras + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.commuteType);
        dest.writeParcelable(this.trafficCondition, flags);
        dest.writeInt(this.resultCode);
        dest.writeBundle(this.extras);
    }

    public ICommuteInfoBean(Parcel in) {
        this.commuteType = in.readInt();
        this.trafficCondition = (ITrafficConditionInfoBean) in.readParcelable(ITrafficConditionInfoBean.class.getClassLoader());
        this.resultCode = in.readInt();
        this.extras = in.readBundle(Bundle.class.getClassLoader());
    }
}
