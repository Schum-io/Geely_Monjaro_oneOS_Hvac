package com.geely.lib.oneosapi.navi.model.base;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class PoiInfo implements Parcelable {
    public static final Creator<PoiInfo> CREATOR = new Creator<PoiInfo>() { // from class: com.geely.lib.oneosapi.navi.model.base.PoiInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PoiInfo createFromParcel(Parcel source) {
            return new PoiInfo(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PoiInfo[] newArray(int size) {
            return new PoiInfo[size];
        }
    };
    private String address;
    private int distance;
    private LatLng latLng;
    private String name;
    private PoiType type;
    private String uid;

    public PoiInfo() {
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

    public LatLng getLatLng() {
        return this.latLng;
    }

    public String getName() {
        return this.name;
    }

    public PoiType getType() {
        return this.type;
    }

    public String getUid() {
        return this.uid;
    }

    public PoiInfo setAddress(String address) {
        this.address = address;
        return this;
    }

    public PoiInfo setDistance(int distance) {
        this.distance = distance;
        return this;
    }

    public PoiInfo setLatLng(LatLng latLng) {
        this.latLng = latLng;
        return this;
    }

    public PoiInfo setName(String name) {
        this.name = name;
        return this;
    }

    public PoiInfo setType(PoiType type) {
        this.type = type;
        return this;
    }

    public PoiInfo setUid(String uid) {
        this.uid = uid;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PoiInfo{");
        sb.append("name='").append(this.name).append('\'');
        sb.append(", uid='").append(this.uid).append('\'');
        sb.append(", type=").append(this.type);
        sb.append(", address='").append(this.address).append('\'');
        sb.append(", distance=").append(this.distance);
        sb.append(", latLng=").append(this.latLng);
        sb.append('}');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.name);
        dest.writeString(this.uid);
        dest.writeParcelable(this.type, flags);
        dest.writeString(this.address);
        dest.writeInt(this.distance);
        dest.writeParcelable(this.latLng, flags);
    }

    public PoiInfo(Parcel in) {
        this.name = in.readString();
        this.uid = in.readString();
        this.type = (PoiType) in.readParcelable(PoiType.class.getClassLoader());
        this.address = in.readString();
        this.distance = in.readInt();
        this.latLng = (LatLng) in.readParcelable(LatLng.class.getClassLoader());
    }
}
