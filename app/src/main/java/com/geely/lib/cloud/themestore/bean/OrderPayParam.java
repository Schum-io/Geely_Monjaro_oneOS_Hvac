package com.geely.lib.cloud.themestore.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class OrderPayParam implements Parcelable {
    public static final Creator<OrderPayParam> CREATOR = new Creator<OrderPayParam>() { // from class: com.geely.lib.cloud.themestore.bean.OrderPayParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OrderPayParam createFromParcel(Parcel in) {
            return new OrderPayParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OrderPayParam[] newArray(int size) {
            return new OrderPayParam[size];
        }
    };
    private String modelType;
    private String orderAmt;
    private String orderNo;
    private String orderSource;
    private int payType;
    private String pdsn;
    private String sign;
    private String ts;
    private String version;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public OrderPayParam() {
    }

    public OrderPayParam(String pdsn, String version, String modelType, String vin, String orderNo, String orderAmt, int payType, String ts, String orderSource, String sign) {
        this.pdsn = pdsn;
        this.version = version;
        this.modelType = modelType;
        this.vin = vin;
        this.orderNo = orderNo;
        this.orderAmt = orderAmt;
        this.payType = payType;
        this.ts = ts;
        this.orderSource = orderSource;
        this.sign = sign;
    }

    protected OrderPayParam(Parcel in) {
        this.pdsn = in.readString();
        this.version = in.readString();
        this.modelType = in.readString();
        this.vin = in.readString();
        this.orderNo = in.readString();
        this.orderAmt = in.readString();
        this.payType = in.readInt();
        this.ts = in.readString();
        this.orderSource = in.readString();
        this.sign = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.pdsn);
        dest.writeString(this.version);
        dest.writeString(this.modelType);
        dest.writeString(this.vin);
        dest.writeString(this.orderNo);
        dest.writeString(this.orderAmt);
        dest.writeInt(this.payType);
        dest.writeString(this.ts);
        dest.writeString(this.orderSource);
        dest.writeString(this.sign);
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

    public String getOrderNo() {
        return this.orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public String getOrderAmt() {
        return this.orderAmt;
    }

    public void setOrderAmt(String orderAmt) {
        this.orderAmt = orderAmt;
    }

    public int getPayType() {
        return this.payType;
    }

    public void setPayType(int payType) {
        this.payType = payType;
    }

    public String getTs() {
        return this.ts;
    }

    public void setTs(String ts) {
        this.ts = ts;
    }

    public String getOrderSource() {
        return this.orderSource;
    }

    public void setOrderSource(String orderSource) {
        this.orderSource = orderSource;
    }

    public String getSign() {
        return this.sign;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }
}
