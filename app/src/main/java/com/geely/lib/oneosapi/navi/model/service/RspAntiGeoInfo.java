package com.geely.lib.oneosapi.navi.model.service;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.LatLng;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;

/* loaded from: classes.dex */
public class RspAntiGeoInfo extends NaviBaseModel {
    public static final Creator<RspAntiGeoInfo> CREATOR = new Creator<RspAntiGeoInfo>() { // from class: com.geely.lib.oneosapi.navi.model.service.RspAntiGeoInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspAntiGeoInfo createFromParcel(Parcel source) {
            return new RspAntiGeoInfo(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspAntiGeoInfo[] newArray(int size) {
            return new RspAntiGeoInfo[size];
        }
    };
    private String adCode;
    private String adName;
    private String address;
    private String city;
    private String cityCode;
    private String country;
    private String countryCode;
    private String formatedAddress;
    private LatLng latLng;
    private String province;

    public RspAntiGeoInfo(NaviBaseModel reqModel) {
        copyBaseInfo(reqModel);
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAdCode() {
        return this.adCode;
    }

    public String getAdName() {
        return this.adName;
    }

    public String getAddress() {
        return this.address;
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

    public String getFormatedAddress() {
        return this.formatedAddress;
    }

    public LatLng getLatLng() {
        return this.latLng;
    }

    public String getProvince() {
        return this.province;
    }

    public RspAntiGeoInfo setAdCode(String adCode) {
        this.adCode = adCode;
        return this;
    }

    public RspAntiGeoInfo setAdName(String adName) {
        this.adName = adName;
        return this;
    }

    public RspAntiGeoInfo setAddress(String address) {
        this.address = address;
        return this;
    }

    public RspAntiGeoInfo setCity(String city) {
        this.city = city;
        return this;
    }

    public RspAntiGeoInfo setCityCode(String cityCode) {
        this.cityCode = cityCode;
        return this;
    }

    public RspAntiGeoInfo setCountry(String country) {
        this.country = country;
        return this;
    }

    public RspAntiGeoInfo setCountryCode(String countryCode) {
        this.countryCode = countryCode;
        return this;
    }

    public RspAntiGeoInfo setFormatedAddress(String formatedAddress) {
        this.formatedAddress = formatedAddress;
        return this;
    }

    public RspAntiGeoInfo setLatLng(LatLng latLng) {
        this.latLng = latLng;
        return this;
    }

    public RspAntiGeoInfo setProvince(String province) {
        this.province = province;
        return this;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        StringBuilder sb = new StringBuilder("RspGeoDecodeInfo{");
        sb.append("latLng=").append(this.latLng);
        sb.append(", country=").append(this.country);
        sb.append(", countryCode=").append(this.countryCode);
        sb.append(", province=").append(this.province);
        sb.append(", city=").append(this.city);
        sb.append(", cityCode=").append(this.cityCode);
        sb.append(", adCode=").append(this.adCode);
        sb.append(", adName=").append(this.adName);
        sb.append(", address=").append(this.address);
        sb.append(", formatedAddress=").append(this.formatedAddress);
        sb.append("{base=").append(super.toString()).append("}; ");
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeParcelable(this.latLng, flags);
        dest.writeString(this.country);
        dest.writeString(this.countryCode);
        dest.writeString(this.province);
        dest.writeString(this.city);
        dest.writeString(this.cityCode);
        dest.writeString(this.adCode);
        dest.writeString(this.adName);
        dest.writeString(this.address);
        dest.writeString(this.formatedAddress);
    }

    public RspAntiGeoInfo(Parcel in) {
        super(in);
        this.latLng = (LatLng) in.readParcelable(LatLng.class.getClassLoader());
        this.country = in.readString();
        this.countryCode = in.readString();
        this.province = in.readString();
        this.city = in.readString();
        this.cityCode = in.readString();
        this.adCode = in.readString();
        this.adName = in.readString();
        this.address = in.readString();
        this.formatedAddress = in.readString();
    }
}
