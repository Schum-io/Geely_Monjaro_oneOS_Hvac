package com.geely.lib.cloud.weather;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ModifyBindCityParam implements Parcelable {
    public static final Creator<ModifyBindCityParam> CREATOR = new Creator<ModifyBindCityParam>() { // from class: com.geely.lib.cloud.weather.ModifyBindCityParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ModifyBindCityParam createFromParcel(Parcel in) {
            return new ModifyBindCityParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ModifyBindCityParam[] newArray(int size) {
            return new ModifyBindCityParam[size];
        }
    };
    private String addressList;
    private String addressType;
    private String areaId;
    private String districtCN;
    private String districtEN;
    private String nameCN;
    private String nameEN;
    private String operationType;
    private String provCN;
    private String provEN;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ModifyBindCityParam() {
    }

    protected ModifyBindCityParam(Parcel in) {
        this.areaId = in.readString();
        this.operationType = in.readString();
        this.addressList = in.readString();
        this.vin = in.readString();
        this.addressType = in.readString();
        this.districtCN = in.readString();
        this.districtEN = in.readString();
        this.nameCN = in.readString();
        this.nameEN = in.readString();
        this.provCN = in.readString();
        this.provEN = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.areaId);
        dest.writeString(this.operationType);
        dest.writeString(this.addressList);
        dest.writeString(this.vin);
        dest.writeString(this.addressType);
        dest.writeString(this.districtCN);
        dest.writeString(this.districtEN);
        dest.writeString(this.nameCN);
        dest.writeString(this.nameEN);
        dest.writeString(this.provCN);
        dest.writeString(this.provEN);
    }

    public String getAreaId() {
        return this.areaId;
    }

    public void setAreaId(String areaId) {
        this.areaId = areaId;
    }

    public String getOperationType() {
        return this.operationType;
    }

    public void setOperationType(String operationType) {
        this.operationType = operationType;
    }

    public String getAddressList() {
        return this.addressList;
    }

    public void setAddressList(String addressList) {
        this.addressList = addressList;
    }

    public String getVin() {
        return this.vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }

    public String getAddressType() {
        return this.addressType;
    }

    public void setAddressType(String addressType) {
        this.addressType = addressType;
    }

    public String getDistrictCN() {
        return this.districtCN;
    }

    public void setDistrictCN(String districtCN) {
        this.districtCN = districtCN;
    }

    public String getDistrictEN() {
        return this.districtEN;
    }

    public void setDistrictEN(String districtEN) {
        this.districtEN = districtEN;
    }

    public String getNameCN() {
        return this.nameCN;
    }

    public void setNameCN(String nameCN) {
        this.nameCN = nameCN;
    }

    public String getNameEN() {
        return this.nameEN;
    }

    public void setNameEN(String nameEN) {
        this.nameEN = nameEN;
    }

    public String getProvCN() {
        return this.provCN;
    }

    public void setProvCN(String provCN) {
        this.provCN = provCN;
    }

    public String getProvEN() {
        return this.provEN;
    }

    public void setProvEN(String provEN) {
        this.provEN = provEN;
    }
}
