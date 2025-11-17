package com.geely.lib.cloud.themestore.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class SearchGoodsDetailParam implements Parcelable {
    public static final Creator<SearchGoodsDetailParam> CREATOR = new Creator<SearchGoodsDetailParam>() { // from class: com.geely.lib.cloud.themestore.bean.SearchGoodsDetailParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SearchGoodsDetailParam createFromParcel(Parcel in) {
            return new SearchGoodsDetailParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SearchGoodsDetailParam[] newArray(int size) {
            return new SearchGoodsDetailParam[size];
        }
    };
    private String goodsId;
    private String modelType;
    private int type;
    private String version;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public SearchGoodsDetailParam() {
    }

    public SearchGoodsDetailParam(String vin, String version, String modelType, String goodsId, int type) {
        this.vin = vin;
        this.version = version;
        this.modelType = modelType;
        this.goodsId = goodsId;
        this.type = type;
    }

    protected SearchGoodsDetailParam(Parcel in) {
        this.vin = in.readString();
        this.version = in.readString();
        this.modelType = in.readString();
        this.goodsId = in.readString();
        this.type = in.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.vin);
        dest.writeString(this.version);
        dest.writeString(this.modelType);
        dest.writeString(this.goodsId);
        dest.writeInt(this.type);
    }

    public String getVin() {
        return this.vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }

    public String getVersion() {
        return this.version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getModelType() {
        return this.modelType;
    }

    public void setModelType(String modelType) {
        this.modelType = modelType;
    }

    public String getGoodsId() {
        return this.goodsId;
    }

    public void setGoodsId(String goodsId) {
        this.goodsId = goodsId;
    }

    public int getType() {
        return this.type;
    }

    public void setType(int type) {
        this.type = type;
    }
}
