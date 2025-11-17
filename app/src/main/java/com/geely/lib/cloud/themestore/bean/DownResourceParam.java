package com.geely.lib.cloud.themestore.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class DownResourceParam implements Parcelable {
    public static final Creator<DownResourceParam> CREATOR = new Creator<DownResourceParam>() { // from class: com.geely.lib.cloud.themestore.bean.DownResourceParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DownResourceParam createFromParcel(Parcel in) {
            return new DownResourceParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DownResourceParam[] newArray(int size) {
            return new DownResourceParam[size];
        }
    };
    private String goodsId;
    private String modelType;
    private String pdsn;
    private String version;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public DownResourceParam() {
    }

    public DownResourceParam(String pdsn, String version, String modelType, String goodsId, String vin) {
        this.pdsn = pdsn;
        this.version = version;
        this.modelType = modelType;
        this.goodsId = goodsId;
        this.vin = vin;
    }

    protected DownResourceParam(Parcel in) {
        this.pdsn = in.readString();
        this.version = in.readString();
        this.modelType = in.readString();
        this.goodsId = in.readString();
        this.vin = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.pdsn);
        dest.writeString(this.version);
        dest.writeString(this.modelType);
        dest.writeString(this.goodsId);
        dest.writeString(this.vin);
    }

    public String getPdsn() {
        return this.pdsn;
    }

    public void setPdsn(String pdsn) {
        this.pdsn = pdsn;
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

    public String getVin() {
        return this.vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }
}
