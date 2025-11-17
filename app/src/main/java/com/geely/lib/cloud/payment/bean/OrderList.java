package com.geely.lib.cloud.payment.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class OrderList implements Parcelable {
    public static final Creator<OrderList> CREATOR = new Creator<OrderList>() { // from class: com.geely.lib.cloud.payment.bean.OrderList.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OrderList createFromParcel(Parcel in) {
            return new OrderList(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OrderList[] newArray(int size) {
            return new OrderList[size];
        }
    };
    private int autoActive;
    private String controlKey;
    private long itemId;
    private long quantity;
    private long skuId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public OrderList() {
    }

    public OrderList(int autoActive, String controlKey, long itemId, long skuId, long quantity) {
        this.autoActive = autoActive;
        this.controlKey = controlKey;
        this.itemId = itemId;
        this.skuId = skuId;
        this.quantity = quantity;
    }

    protected OrderList(Parcel in) {
        this.autoActive = in.readInt();
        this.controlKey = in.readString();
        this.itemId = in.readLong();
        this.skuId = in.readLong();
        this.quantity = in.readLong();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.autoActive);
        dest.writeString(this.controlKey);
        dest.writeLong(this.itemId);
        dest.writeLong(this.skuId);
        dest.writeLong(this.quantity);
    }

    public int getAutoActive() {
        return this.autoActive;
    }

    public void setAutoActive(int autoActive) {
        this.autoActive = autoActive;
    }

    public String getControlKey() {
        return this.controlKey;
    }

    public void setControlKey(String controlKey) {
        this.controlKey = controlKey;
    }

    public long getItemId() {
        return this.itemId;
    }

    public void setItemId(long itemId) {
        this.itemId = itemId;
    }

    public long getSkuId() {
        return this.skuId;
    }

    public void setSkuId(long skuId) {
        this.skuId = skuId;
    }

    public long getQuantity() {
        return this.quantity;
    }

    public void setQuantity(long quantity) {
        this.quantity = quantity;
    }
}
