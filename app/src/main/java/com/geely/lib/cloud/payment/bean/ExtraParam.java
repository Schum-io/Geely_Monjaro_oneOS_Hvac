package com.geely.lib.cloud.payment.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ExtraParam implements Parcelable {
    public static final Creator<ExtraParam> CREATOR = new Creator<ExtraParam>() { // from class: com.geely.lib.cloud.payment.bean.ExtraParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ExtraParam createFromParcel(Parcel in) {
            return new ExtraParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ExtraParam[] newArray(int size) {
            return new ExtraParam[size];
        }
    };
    private String customerCarType;
    private String customerVin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ExtraParam() {
    }

    public ExtraParam(String customerCarType, String customerVin) {
        this.customerCarType = customerCarType;
        this.customerVin = customerVin;
    }

    protected ExtraParam(Parcel in) {
        this.customerCarType = in.readString();
        this.customerVin = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.customerCarType);
        dest.writeString(this.customerVin);
    }

    public String getCustomerCarType() {
        return this.customerCarType;
    }

    public void setCustomerCarType(String customerCarType) {
        this.customerCarType = customerCarType;
    }

    public String getCustomerVin() {
        return this.customerVin;
    }

    public void setCustomerVin(String customerVin) {
        this.customerVin = customerVin;
    }
}
