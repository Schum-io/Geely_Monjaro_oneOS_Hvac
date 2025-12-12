package com.geely.lib.oneosapi.navi.ipc;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public class IParkingPoisBean implements Parcelable {
    public static final Creator<IParkingPoisBean> CREATOR = new Creator<IParkingPoisBean>() { // from class: com.geely.lib.oneosapi.navi.ipc.IParkingPoisBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IParkingPoisBean createFromParcel(Parcel in) {
            return new IParkingPoisBean(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IParkingPoisBean[] newArray(int size) {
            return new IParkingPoisBean[size];
        }
    };
    private Bundle extras;
    private List<IParkingPoiInfoBean> parkingPoiInfos;
    private int resultCode;

    public IParkingPoisBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Bundle getExtras() {
        return this.extras;
    }

    public List<IParkingPoiInfoBean> getParkingPoiInfos() {
        return this.parkingPoiInfos;
    }

    public int getResultCode() {
        return this.resultCode;
    }

    public void readFromParcel(Parcel in) {
        this.parkingPoiInfos = in.createTypedArrayList(IParkingPoiInfoBean.CREATOR);
        this.resultCode = in.readInt();
        this.extras = in.readBundle(Bundle.class.getClassLoader());
    }

    public void setExtras(Bundle extras) {
        this.extras = extras;
    }

    public void setParkingPoiInfos(List<IParkingPoiInfoBean> parkingPoiInfos) {
        this.parkingPoiInfos = parkingPoiInfos;
    }

    public void setResultCode(int resultCode) {
        this.resultCode = resultCode;
    }

    public String toString() {
        return "IParkingPoisBean{parkingPoiInfos=" + this.parkingPoiInfos + ", resultCode=" + this.resultCode + ", extras=" + this.extras + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeTypedList(this.parkingPoiInfos);
        dest.writeInt(this.resultCode);
        dest.writeBundle(this.extras);
    }

    public IParkingPoisBean(Parcel in) {
        this.parkingPoiInfos = in.createTypedArrayList(IParkingPoiInfoBean.CREATOR);
        this.resultCode = in.readInt();
        this.extras = in.readBundle(Bundle.class.getClassLoader());
    }
}
