package com.geely.lib.cloud.themestore.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class BuyResourceParam implements Parcelable {
    public static final Creator<BuyResourceParam> CREATOR = new Creator<BuyResourceParam>() { // from class: com.geely.lib.cloud.themestore.bean.BuyResourceParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BuyResourceParam createFromParcel(Parcel in) {
            return new BuyResourceParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BuyResourceParam[] newArray(int size) {
            return new BuyResourceParam[size];
        }
    };
    private String goodsId;
    private String modelType;
    private String version;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public BuyResourceParam() {
    }

    public BuyResourceParam(String vin, String version, String modelType, String goodsId) {
        this.vin = vin;
        this.version = version;
        this.modelType = modelType;
        this.goodsId = goodsId;
    }

    protected BuyResourceParam(Parcel in) {
        this.vin = in.readString();
        this.version = in.readString();
        this.modelType = in.readString();
        this.goodsId = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.vin);
        dest.writeString(this.version);
        dest.writeString(this.modelType);
        dest.writeString(this.goodsId);
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
}
