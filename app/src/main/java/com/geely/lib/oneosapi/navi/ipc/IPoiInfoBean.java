package com.geely.lib.oneosapi.navi.ipc;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class IPoiInfoBean implements Parcelable {
    public static final Creator<IPoiInfoBean> CREATOR = new Creator<IPoiInfoBean>() { // from class: com.geely.lib.oneosapi.navi.ipc.IPoiInfoBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IPoiInfoBean createFromParcel(Parcel in) {
            return new IPoiInfoBean(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IPoiInfoBean[] newArray(int size) {
            return new IPoiInfoBean[size];
        }
    };
    private String address;
    private int distance;
    private Bundle extras;
    private ILatLngBean latLng;
    private String name;
    private String phoneNumber;
    private IPoiTypeBean poiType;
    private long requestTimeout;
    private String uid;

    public IPoiInfoBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAddress() {
        return this.address;
    }

    public int getDistance() {
        return this.distance;
    }

    public Bundle getExtras() {
        return this.extras;
    }

    public ILatLngBean getLatLng() {
        return this.latLng;
    }

    public String getName() {
        return this.name;
    }

    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    public IPoiTypeBean getPoiType() {
        return this.poiType;
    }

    public long getRequestTimeout() {
        return this.requestTimeout;
    }

    public String getUid() {
        return this.uid;
    }

    public void readFromParcel(Parcel in) {
        this.name = in.readString();
        this.uid = in.readString();
        this.distance = in.readInt();
        this.latLng = (ILatLngBean) in.readParcelable(ILatLngBean.class.getClassLoader());
        this.address = in.readString();
        this.poiType = (IPoiTypeBean) in.readParcelable(IPoiTypeBean.class.getClassLoader());
        this.phoneNumber = in.readString();
        this.requestTimeout = in.readLong();
        this.extras = in.readBundle(Bundle.class.getClassLoader());
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setDistance(int distance) {
        this.distance = distance;
    }

    public void setExtras(Bundle extras) {
        this.extras = extras;
    }

    public void setLatLng(ILatLngBean latLng) {
        this.latLng = latLng;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public void setPoiType(IPoiTypeBean poiType) {
        this.poiType = poiType;
    }

    public void setRequestTimeout(long requestTimeout) {
        this.requestTimeout = requestTimeout;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String toString() {
        return "IPoiInfoBean{name='" + this.name + "', uid='" + this.uid + "', distance=" + this.distance + ", latLng=" + this.latLng + ", address='" + this.address + "', poiType=" + this.poiType + ", phoneNumber='" + this.phoneNumber + "', requestTimeout=" + this.requestTimeout + ", extras=" + this.extras + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.name);
        dest.writeString(this.uid);
        dest.writeInt(this.distance);
        dest.writeParcelable(this.latLng, flags);
        dest.writeString(this.address);
        dest.writeParcelable(this.poiType, flags);
        dest.writeString(this.phoneNumber);
        dest.writeLong(this.requestTimeout);
        dest.writeBundle(this.extras);
    }

    public IPoiInfoBean(Parcel in) {
        this.name = in.readString();
        this.uid = in.readString();
        this.distance = in.readInt();
        this.latLng = (ILatLngBean) in.readParcelable(ILatLngBean.class.getClassLoader());
        this.address = in.readString();
        this.poiType = (IPoiTypeBean) in.readParcelable(IPoiTypeBean.class.getClassLoader());
        this.phoneNumber = in.readString();
        this.requestTimeout = in.readLong();
        this.extras = in.readBundle(Bundle.class.getClassLoader());
    }
}
