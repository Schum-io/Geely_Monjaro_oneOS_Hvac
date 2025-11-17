package com.geely.lib.oneosapi.navi.model.service;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.LatLng;

/* loaded from: classes.dex */
public class LocationInfo implements Parcelable, Cloneable {
    public static final Creator<LocationInfo> CREATOR = new Creator<LocationInfo>() { // from class: com.geely.lib.oneosapi.navi.model.service.LocationInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LocationInfo createFromParcel(Parcel source) {
            return new LocationInfo(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LocationInfo[] newArray(int size) {
            return new LocationInfo[size];
        }
    };
    private double accuracy;
    private String adcode;
    private String address;
    private double altitude;
    private float bearing;
    private String city;
    private String cityCode;
    private String country;
    private String countryCode;
    private long fixTime;
    private String formatedAddress;
    private long geoDecodeTime;
    private LatLng lastGeoDecodeLatLng;
    private LatLng latLng;
    private String province;
    private float speed;

    public LocationInfo() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public double getAccuracy() {
        return this.accuracy;
    }

    public String getAdcode() {
        return this.adcode;
    }

    public String getAddress() {
        return this.address;
    }

    public double getAltitude() {
        return this.altitude;
    }

    public float getBearing() {
        return this.bearing;
    }

    public String getCity() {
        return this.city;
    }

    public String getCityCode() {
        return this.cityCode;
    }

    public String getCountry() {
        return this.country;
    }

    public String getCountryCode() {
        return this.countryCode;
    }

    public long getFixTime() {
        return this.fixTime;
    }

    public String getFormatedAddress() {
        return this.formatedAddress;
    }

    public long getGeoDecodeTime() {
        return this.geoDecodeTime;
    }

    public LatLng getLastGeoDecodeLatLng() {
        return this.lastGeoDecodeLatLng;
    }

    public LatLng getLatLng() {
        return this.latLng;
    }

    public String getProvince() {
        return this.province;
    }

    public float getSpeed() {
        return this.speed;
    }

    public void setAccuracy(double accuracy) {
        this.accuracy = accuracy;
    }

    public void setAdcode(String adcode) {
        this.adcode = adcode;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setAltitude(double altitude) {
        this.altitude = altitude;
    }

    public void setBearing(float bearing) {
        this.bearing = bearing;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setCityCode(String cityCode) {
        this.cityCode = cityCode;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public void setCountryCode(String countryCode) {
        this.countryCode = countryCode;
    }

    public void setFixTime(long fixTime) {
        this.fixTime = fixTime;
    }

    public void setFormatedAddress(String formatedAddress) {
        this.formatedAddress = formatedAddress;
    }

    public void setGeoDecodeTime(long geoDecodeTime) {
        this.geoDecodeTime = geoDecodeTime;
    }

    public void setLastGeoDecodeLatLng(LatLng lastGeoDecodeLatLng) {
        this.lastGeoDecodeLatLng = lastGeoDecodeLatLng;
    }

    public void setLatLng(LatLng latLng) {
        this.latLng = latLng;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public void setSpeed(float speed) {
        this.speed = speed;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LocationInfo{");
        sb.append("latLng=").append(this.latLng);
        sb.append(", accuracy=").append(this.accuracy);
        sb.append(", altitude=").append(this.altitude);
        sb.append(", speed=").append(this.speed);
        sb.append(", bearing=").append(this.bearing);
        sb.append(", fixTime=").append(this.fixTime);
        sb.append(", lastGeoDecodeLatLng=").append(this.lastGeoDecodeLatLng);
        sb.append(", country='").append(this.country).append('\'');
        sb.append(", countryCode='").append(this.countryCode).append('\'');
        sb.append(", province='").append(this.province).append('\'');
        sb.append(", city='").append(this.city).append('\'');
        sb.append(", cityCode='").append(this.cityCode).append('\'');
        sb.append(", adcode='").append(this.adcode).append('\'');
        sb.append(", address='").append(this.address).append('\'');
        sb.append(", formatedAddress='").append(this.formatedAddress).append('\'');
        sb.append(", geoDecodeTime=").append(this.geoDecodeTime);
        sb.append('}');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeParcelable(this.latLng, flags);
        dest.writeDouble(this.accuracy);
        dest.writeDouble(this.altitude);
        dest.writeFloat(this.speed);
        dest.writeFloat(this.bearing);
        dest.writeLong(this.fixTime);
        dest.writeParcelable(this.lastGeoDecodeLatLng, flags);
        dest.writeString(this.country);
        dest.writeString(this.countryCode);
        dest.writeString(this.province);
        dest.writeString(this.city);
        dest.writeString(this.cityCode);
        dest.writeString(this.adcode);
        dest.writeString(this.address);
        dest.writeString(this.formatedAddress);
        dest.writeLong(this.geoDecodeTime);
    }

    public LocationInfo(Parcel in) {
        this.latLng = (LatLng) in.readParcelable(LatLng.class.getClassLoader());
        this.accuracy = in.readDouble();
        this.altitude = in.readDouble();
        this.speed = in.readFloat();
        this.bearing = in.readFloat();
        this.fixTime = in.readLong();
        this.lastGeoDecodeLatLng = (LatLng) in.readParcelable(LatLng.class.getClassLoader());
        this.country = in.readString();
        this.countryCode = in.readString();
        this.province = in.readString();
        this.city = in.readString();
        this.cityCode = in.readString();
        this.adcode = in.readString();
        this.address = in.readString();
        this.formatedAddress = in.readString();
        this.geoDecodeTime = in.readLong();
    }

    @Override
    public LocationInfo clone() {
        try {
            LocationInfo locationInfo = (LocationInfo) super.clone();
            LatLng latLng = this.latLng;
            if (latLng != null) {
                locationInfo.latLng = latLng.clone();
            }
            LatLng latLng2 = this.lastGeoDecodeLatLng;
            if (latLng2 != null) {
                locationInfo.lastGeoDecodeLatLng = latLng2.clone();
            }
            return locationInfo;
        } catch (CloneNotSupportedException unused) {
            return new LocationInfo();
        }
    }
}
