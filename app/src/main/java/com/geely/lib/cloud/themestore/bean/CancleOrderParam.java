package com.geely.lib.cloud.themestore.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class CancleOrderParam implements Parcelable {
    public static final Creator<CancleOrderParam> CREATOR = new Creator<CancleOrderParam>() { // from class: com.geely.lib.cloud.themestore.bean.CancleOrderParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CancleOrderParam createFromParcel(Parcel in) {
            return new CancleOrderParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CancleOrderParam[] newArray(int size) {
            return new CancleOrderParam[size];
        }
    };
    private String orderNo;
    private String reqSource;
    private String sign;
    private String timestamp;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public CancleOrderParam() {
    }

    public CancleOrderParam(String vin, String orderNo, String reqSource, String timestamp, String sign) {
        this.vin = vin;
        this.orderNo = orderNo;
        this.reqSource = reqSource;
        this.timestamp = timestamp;
        this.sign = sign;
    }

    protected CancleOrderParam(Parcel in) {
        this.vin = in.readString();
        this.orderNo = in.readString();
        this.reqSource = in.readString();
        this.timestamp = in.readString();
        this.sign = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.vin);
        dest.writeString(this.orderNo);
        dest.writeString(this.reqSource);
        dest.writeString(this.timestamp);
        dest.writeString(this.sign);
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

    public String getReqSource() {
        return this.reqSource;
    }

    public void setReqSource(String reqSource) {
        this.reqSource = reqSource;
    }

    public String getTimestamp() {
        return this.timestamp;
    }

    public void setTimestamp(String timestamp) {
        this.timestamp = timestamp;
    }

    public String getSign() {
        return this.sign;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }
}
