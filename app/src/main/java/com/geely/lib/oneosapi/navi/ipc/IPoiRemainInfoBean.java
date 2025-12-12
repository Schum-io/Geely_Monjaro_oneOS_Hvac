package com.geely.lib.oneosapi.navi.ipc;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class IPoiRemainInfoBean implements Parcelable {
    public static final Creator<IPoiRemainInfoBean> CREATOR = new Creator<IPoiRemainInfoBean>() { // from class: com.geely.lib.oneosapi.navi.ipc.IPoiRemainInfoBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IPoiRemainInfoBean createFromParcel(Parcel in) {
            return new IPoiRemainInfoBean(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IPoiRemainInfoBean[] newArray(int size) {
            return new IPoiRemainInfoBean[size];
        }
    };
    private Bundle bundle;
    private int remainDistance;
    private int remainTime;
    private int resultCode;

    public IPoiRemainInfoBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Bundle getExtras() {
        return this.bundle;
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
        this.bundle = in.readBundle(Bundle.class.getClassLoader());
    }

    public void setBundle(Bundle bundle) {
        this.bundle = bundle;
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

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.remainDistance);
        dest.writeInt(this.remainTime);
        dest.writeInt(this.resultCode);
        dest.writeBundle(this.bundle);
    }

    public IPoiRemainInfoBean(Parcel in) {
        this.remainDistance = in.readInt();
        this.remainTime = in.readInt();
        this.resultCode = in.readInt();
        this.bundle = in.readBundle(Bundle.class.getClassLoader());
    }
}
