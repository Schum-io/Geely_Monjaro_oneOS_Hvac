package com.geely.lib.oneosapi.navi.ipc;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public class IHistoryPoisBean implements Parcelable {
    public static final Creator<IHistoryPoisBean> CREATOR = new Creator<IHistoryPoisBean>() { // from class: com.geely.lib.oneosapi.navi.ipc.IHistoryPoisBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IHistoryPoisBean createFromParcel(Parcel in) {
            return new IHistoryPoisBean(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IHistoryPoisBean[] newArray(int size) {
            return new IHistoryPoisBean[size];
        }
    };
    private Bundle extras;
    private List<IPoiInfoBean> hitoryPois;
    private int resultCode;

    public IHistoryPoisBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Bundle getExtras() {
        return this.extras;
    }

    public List<IPoiInfoBean> getHitoryPois() {
        return this.hitoryPois;
    }

    public int getResultCode() {
        return this.resultCode;
    }

    public void readFromParcel(Parcel in) {
        this.hitoryPois = in.createTypedArrayList(IPoiInfoBean.CREATOR);
        this.resultCode = in.readInt();
        this.extras = in.readBundle(Bundle.class.getClassLoader());
    }

    public void setExtras(Bundle extras) {
        this.extras = extras;
    }

    public void setHitoryPois(List<IPoiInfoBean> hitoryPois) {
        this.hitoryPois = hitoryPois;
    }

    public void setResultCode(int resultCode) {
        this.resultCode = resultCode;
    }

    public String toString() {
        return "IHistoryPoisBean{hitoryPois=" + this.hitoryPois + ", resultCode=" + this.resultCode + ", extras=" + this.extras + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeTypedList(this.hitoryPois);
        dest.writeInt(this.resultCode);
        dest.writeBundle(this.extras);
    }

    public IHistoryPoisBean(Parcel in) {
        this.hitoryPois = in.createTypedArrayList(IPoiInfoBean.CREATOR);
        this.resultCode = in.readInt();
        this.extras = in.readBundle(Bundle.class.getClassLoader());
    }
}
