package com.geely.lib.cloud.payment.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public class OrderPayParam implements Parcelable {
    public static final Creator<OrderPayParam> CREATOR = new Creator<OrderPayParam>() { // from class: com.geely.lib.cloud.payment.bean.OrderPayParam.1
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
    private String guaranteedFlag;
    private List<OrderIdParam> orderIdList;
    private String orderSource;
    private String payerMobileNo;
    private String payerName;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public OrderPayParam() {
    }

    public OrderPayParam(String guaranteedFlag, String orderSource, String payerMobileNo, List<OrderIdParam> orderIdList, String payerName) {
        this.guaranteedFlag = guaranteedFlag;
        this.orderSource = orderSource;
        this.payerMobileNo = payerMobileNo;
        this.orderIdList = orderIdList;
        this.payerName = payerName;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.guaranteedFlag);
        dest.writeString(this.orderSource);
        dest.writeString(this.payerMobileNo);
        dest.writeString(this.payerName);
        dest.writeTypedList(this.orderIdList);
    }

    protected OrderPayParam(Parcel in) {
        this.guaranteedFlag = in.readString();
        this.orderSource = in.readString();
        this.payerMobileNo = in.readString();
        this.payerName = in.readString();
        this.orderIdList = in.createTypedArrayList(OrderIdParam.CREATOR);
    }

    public String getGuaranteedFlag() {
        return this.guaranteedFlag;
    }

    public void setGuaranteedFlag(String guaranteedFlag) {
        this.guaranteedFlag = guaranteedFlag;
    }

    public String getOrderSource() {
        return this.orderSource;
    }

    public void setOrderSource(String orderSource) {
        this.orderSource = orderSource;
    }

    public String getPayerMobileNo() {
        return this.payerMobileNo;
    }

    public void setPayerMobileNo(String payerMobileNo) {
        this.payerMobileNo = payerMobileNo;
    }

    public List<OrderIdParam> getOrderIdList() {
        return this.orderIdList;
    }

    public void setOrderIdList(List<OrderIdParam> orderIdList) {
        this.orderIdList = orderIdList;
    }

    public String getPayerName() {
        return this.payerName;
    }

    public void setPayerName(String payerName) {
        this.payerName = payerName;
    }
}
