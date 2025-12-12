package com.geely.lib.cloud.themestore.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class DelResourceParam implements Parcelable {
    public static final Creator<DelResourceParam> CREATOR = new Creator<DelResourceParam>() { // from class: com.geely.lib.cloud.themestore.bean.DelResourceParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DelResourceParam createFromParcel(Parcel in) {
            return new DelResourceParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DelResourceParam[] newArray(int size) {
            return new DelResourceParam[size];
        }
    };
    private String goodsId;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public DelResourceParam(String goodsId, String vin) {
        this.goodsId = goodsId;
        this.vin = vin;
    }

    public DelResourceParam() {
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

    protected DelResourceParam(Parcel in) {
        this.goodsId = in.readString();
        this.vin = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.goodsId);
        dest.writeString(this.vin);
    }
}
