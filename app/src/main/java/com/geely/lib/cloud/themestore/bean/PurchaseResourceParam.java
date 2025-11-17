package com.geely.lib.cloud.themestore.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class PurchaseResourceParam implements Parcelable {
    public static final Creator<PurchaseResourceParam> CREATOR = new Creator<PurchaseResourceParam>() { // from class: com.geely.lib.cloud.themestore.bean.PurchaseResourceParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PurchaseResourceParam createFromParcel(Parcel in) {
            return new PurchaseResourceParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PurchaseResourceParam[] newArray(int size) {
            return new PurchaseResourceParam[size];
        }
    };
    private int current;
    private String modelType;
    private int size;
    private int type;
    private String version;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public PurchaseResourceParam() {
    }

    public PurchaseResourceParam(String vin, String version, String modelType, int type, int size, int current) {
        this.vin = vin;
        this.version = version;
        this.modelType = modelType;
        this.type = type;
        this.size = size;
        this.current = current;
    }

    protected PurchaseResourceParam(Parcel in) {
        this.vin = in.readString();
        this.version = in.readString();
        this.modelType = in.readString();
        this.type = in.readInt();
        this.size = in.readInt();
        this.current = in.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.vin);
        dest.writeString(this.version);
        dest.writeString(this.modelType);
        dest.writeInt(this.type);
        dest.writeInt(this.size);
        dest.writeInt(this.current);
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

    public int getType() {
        return this.type;
    }

    public void setType(int type) {
        this.type = type;
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
}
