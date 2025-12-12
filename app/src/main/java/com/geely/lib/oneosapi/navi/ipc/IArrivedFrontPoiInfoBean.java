package com.geely.lib.oneosapi.navi.ipc;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class IArrivedFrontPoiInfoBean implements Parcelable {
    public static final Creator<IArrivedFrontPoiInfoBean> CREATOR = new Creator<IArrivedFrontPoiInfoBean>() { // from class: com.geely.lib.oneosapi.navi.ipc.IArrivedFrontPoiInfoBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IArrivedFrontPoiInfoBean createFromParcel(Parcel in) {
            return new IArrivedFrontPoiInfoBean(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IArrivedFrontPoiInfoBean[] newArray(int size) {
            return new IArrivedFrontPoiInfoBean[size];
        }
    };
    private Bundle extras;
    private int remainDistance;
    private int remainTime;
    private int resultCode;

    public IArrivedFrontPoiInfoBean() {
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

    public void readFromParcel(Parcel in) {
        this.remainDistance = in.readInt();
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

    public String toString() {
        return "IArrivedFrontPoiInfoImp{remainDistance=" + this.remainDistance + ", remainTime=" + this.remainTime + ", resultCode=" + this.resultCode + ", extras=" + this.extras + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.remainDistance);
        dest.writeInt(this.remainTime);
        dest.writeInt(this.resultCode);
        dest.writeBundle(this.extras);
    }

    public IArrivedFrontPoiInfoBean(Parcel in) {
        this.remainDistance = in.readInt();
        this.remainTime = in.readInt();
        this.resultCode = in.readInt();
        this.extras = in.readBundle(Bundle.class.getClassLoader());
    }
}
