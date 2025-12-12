package com.geely.lib.cloud.payment.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class GoodsChangeParam implements Parcelable {
    public static final Creator<GoodsChangeParam> CREATOR = new Creator<GoodsChangeParam>() { // from class: com.geely.lib.cloud.payment.bean.GoodsChangeParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GoodsChangeParam createFromParcel(Parcel in) {
            return new GoodsChangeParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GoodsChangeParam[] newArray(int size) {
            return new GoodsChangeParam[size];
        }
    };
    private String cityId;
    private String itemId;
    private String provinceId;
    private String regionId;
    private String skuId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public GoodsChangeParam() {
    }

    public GoodsChangeParam(String itemId, String skuId, String provinceId, String cityId, String regionId) {
        this.itemId = itemId;
        this.skuId = skuId;
        this.provinceId = provinceId;
        this.cityId = cityId;
        this.regionId = regionId;
    }

    protected GoodsChangeParam(Parcel in) {
        this.itemId = in.readString();
        this.skuId = in.readString();
        this.provinceId = in.readString();
        this.cityId = in.readString();
        this.regionId = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.itemId);
        dest.writeString(this.skuId);
        dest.writeString(this.provinceId);
        dest.writeString(this.cityId);
        dest.writeString(this.regionId);
    }

    public String getItemId() {
        return this.itemId;
    }

    public void setItemId(String itemId) {
        this.itemId = itemId;
    }

    public String getSkuId() {
        return this.skuId;
    }

    public void setSkuId(String skuId) {
        this.skuId = skuId;
    }

    public String getProvinceId() {
        return this.provinceId;
    }

    public void setProvinceId(String provinceId) {
        this.provinceId = provinceId;
    }

    public String getCityId() {
        return this.cityId;
    }

    public void setCityId(String cityId) {
        this.cityId = cityId;
    }

    public String getRegionId() {
        return this.regionId;
    }

    public void setRegionId(String regionId) {
        this.regionId = regionId;
    }
}
