package com.geely.lib.cloud.payment.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class OrderIdParam implements Parcelable {
    public static final Creator<OrderIdParam> CREATOR = new Creator<OrderIdParam>() { // from class: com.geely.lib.cloud.payment.bean.OrderIdParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OrderIdParam createFromParcel(Parcel in) {
            return new OrderIdParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OrderIdParam[] newArray(int size) {
            return new OrderIdParam[size];
        }
    };
    private String orderId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public OrderIdParam() {
    }

    public OrderIdParam(String orderId) {
        this.orderId = orderId;
    }

    protected OrderIdParam(Parcel in) {
        this.orderId = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.orderId);
    }

    public String getOrderId() {
        return this.orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }
}
