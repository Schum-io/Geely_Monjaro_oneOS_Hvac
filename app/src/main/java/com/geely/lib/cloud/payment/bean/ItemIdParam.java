package com.geely.lib.cloud.payment.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ItemIdParam implements Parcelable {
    public static final Creator<ItemIdParam> CREATOR = new Creator<ItemIdParam>() { // from class: com.geely.lib.cloud.payment.bean.ItemIdParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ItemIdParam createFromParcel(Parcel in) {
            return new ItemIdParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ItemIdParam[] newArray(int size) {
            return new ItemIdParam[size];
        }
    };
    private long itemId;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ItemIdParam() {
    }

    public ItemIdParam(long itemId, String vin) {
        this.itemId = itemId;
        this.vin = vin;
    }

    protected ItemIdParam(Parcel in) {
        this.itemId = in.readLong();
        this.vin = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeLong(this.itemId);
        dest.writeString(this.vin);
    }

    public long getItemId() {
        return this.itemId;
    }

    public void setItemId(long itemId) {
        this.itemId = itemId;
    }

    public String getVin() {
        return this.vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }
}
