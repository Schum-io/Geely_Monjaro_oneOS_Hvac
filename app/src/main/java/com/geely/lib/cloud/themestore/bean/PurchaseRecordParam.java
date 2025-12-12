package com.geely.lib.cloud.themestore.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class PurchaseRecordParam implements Parcelable {
    public static final Creator<PurchaseRecordParam> CREATOR = new Creator<PurchaseRecordParam>() { // from class: com.geely.lib.cloud.themestore.bean.PurchaseRecordParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PurchaseRecordParam createFromParcel(Parcel in) {
            return new PurchaseRecordParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PurchaseRecordParam[] newArray(int size) {
            return new PurchaseRecordParam[size];
        }
    };
    private int current;
    private String modelType;
    private String orderStatus;
    private int size;
    private String version;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public PurchaseRecordParam() {
    }

    public PurchaseRecordParam(String vin, String version, String modelType, int size, int current, String orderStatus) {
        this.vin = vin;
        this.version = version;
        this.modelType = modelType;
        this.size = size;
        this.current = current;
        this.orderStatus = orderStatus;
    }

    protected PurchaseRecordParam(Parcel in) {
        this.vin = in.readString();
        this.version = in.readString();
        this.modelType = in.readString();
        this.size = in.readInt();
        this.current = in.readInt();
        this.orderStatus = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.vin);
        dest.writeString(this.version);
        dest.writeString(this.modelType);
        dest.writeInt(this.size);
        dest.writeInt(this.current);
        dest.writeString(this.orderStatus);
    }

    public String getPdsn() {
        return this.vin;
    }

    public void setPdsn(String pdsn) {
        this.vin = pdsn;
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

    public int getSize() {
        return this.size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public int getCurrent() {
        return this.current;
    }

    public void setCurrent(int current) {
        this.current = current;
    }

    public String getOrderStatus() {
        return this.orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }
}
