package com.geely.lib.oneosapi.navi.ipc;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ILatLngBean implements Parcelable {
    public static final Creator<ILatLngBean> CREATOR = new Creator<ILatLngBean>() { // from class: com.geely.lib.oneosapi.navi.ipc.ILatLngBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ILatLngBean createFromParcel(Parcel in) {
            return new ILatLngBean(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ILatLngBean[] newArray(int size) {
            return new ILatLngBean[size];
        }
    };
    private String coordType;
    private Bundle extras;
    private double latitude;
    private double longitude;

    public ILatLngBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getCoordType() {
        return this.coordType;
    }

    public Bundle getExtras() {
        return this.extras;
    }

    public double getLatitude() {
        return this.latitude;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public void readFromParcel(Parcel in) {
        this.latitude = in.readDouble();
        this.longitude = in.readDouble();
        this.coordType = in.readString();
        this.extras = in.readBundle(Bundle.class.getClassLoader());
    }

    public void setCoordType(String coordType) {
        this.coordType = coordType;
    }

    public void setExtras(Bundle extras) {
        this.extras = extras;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    public String toString() {
        return "ILatLngBean{latitude=" + this.latitude + ", longitude=" + this.longitude + ", coordType='" + this.coordType + "', extras=" + this.extras + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeDouble(this.latitude);
        dest.writeDouble(this.longitude);
        dest.writeString(this.coordType);
        dest.writeBundle(this.extras);
    }

    public ILatLngBean(Parcel in) {
        this.latitude = in.readDouble();
        this.longitude = in.readDouble();
        this.coordType = in.readString();
        this.extras = in.readBundle(Bundle.class.getClassLoader());
    }
}
