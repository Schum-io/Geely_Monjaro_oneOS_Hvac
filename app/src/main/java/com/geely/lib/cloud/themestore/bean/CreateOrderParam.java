package com.geely.lib.cloud.themestore.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class CreateOrderParam implements Parcelable {
    public static final Creator<CreateOrderParam> CREATOR = new Creator<CreateOrderParam>() { // from class: com.geely.lib.cloud.themestore.bean.CreateOrderParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CreateOrderParam createFromParcel(Parcel in) {
            return new CreateOrderParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CreateOrderParam[] newArray(int size) {
            return new CreateOrderParam[size];
        }
    };
    private String goodsId;
    private String goodsName;
    private int goodsNum;
    private String goodsPrice;
    private String modelType;
    private String orderExtendParam;
    private String orderSource;
    private String payReturnUrl;
    private String pdsn;
    private String reqSource;
    private String version;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public CreateOrderParam() {
    }

    public CreateOrderParam(String pdsn, String version, String modelType, String vin, String goodsId, int goodsNum, String goodsName, String goodsPrice, String payReturnUrl, String orderSource, String reqSource, String orderExtendParam) {
        this.pdsn = pdsn;
        this.version = version;
        this.modelType = modelType;
        this.vin = vin;
        this.goodsId = goodsId;
        this.goodsNum = goodsNum;
        this.goodsName = goodsName;
        this.goodsPrice = goodsPrice;
        this.payReturnUrl = payReturnUrl;
        this.orderSource = orderSource;
        this.reqSource = reqSource;
        this.orderExtendParam = orderExtendParam;
    }

    protected CreateOrderParam(Parcel in) {
        this.pdsn = in.readString();
        this.version = in.readString();
        this.modelType = in.readString();
        this.vin = in.readString();
        this.goodsId = in.readString();
        this.goodsNum = in.readInt();
        this.goodsName = in.readString();
        this.goodsPrice = in.readString();
        this.payReturnUrl = in.readString();
        this.orderSource = in.readString();
        this.reqSource = in.readString();
        this.orderExtendParam = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.pdsn);
        dest.writeString(this.version);
        dest.writeString(this.modelType);
        dest.writeString(this.vin);
        dest.writeString(this.goodsId);
        dest.writeInt(this.goodsNum);
        dest.writeString(this.goodsName);
        dest.writeString(this.goodsPrice);
        dest.writeString(this.payReturnUrl);
        dest.writeString(this.orderSource);
        dest.writeString(this.reqSource);
        dest.writeString(this.orderExtendParam);
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

    public String getVin() {
        return this.vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }

    public String getGoodsId() {
        return this.goodsId;
    }

    public void setGoodsId(String goodsId) {
        this.goodsId = goodsId;
    }

    public int getGoodsNum() {
        return this.goodsNum;
    }

    public void setGoodsNum(int goodsNum) {
        this.goodsNum = goodsNum;
    }

    public String getGoodsName() {
        return this.goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getGoodsPrice() {
        return this.goodsPrice;
    }

    public void setGoodsPrice(String goodsPrice) {
        this.goodsPrice = goodsPrice;
    }

    public String getPayReturnUrl() {
        return this.payReturnUrl;
    }

    public void setPayReturnUrl(String payReturnUrl) {
        this.payReturnUrl = payReturnUrl;
    }

    public String getOrderSource() {
        return this.orderSource;
    }

    public void setOrderSource(String orderSource) {
        this.orderSource = orderSource;
    }

    public String getReqSource() {
        return this.reqSource;
    }

    public void setReqSource(String reqSource) {
        this.reqSource = reqSource;
    }

    public String getOrderExtendParam() {
        return this.orderExtendParam;
    }

    public void setOrderExtendParam(String orderExtendParam) {
        this.orderExtendParam = orderExtendParam;
    }
}
