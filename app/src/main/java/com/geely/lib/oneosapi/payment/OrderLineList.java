package com.geely.lib.oneosapi.payment;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class OrderLineList implements Parcelable {
    public static final Creator<OrderLineList> CREATOR = new Creator<OrderLineList>() { // from class: com.geely.lib.oneosapi.payment.OrderLineList.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OrderLineList createFromParcel(Parcel in) {
            return new OrderLineList(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OrderLineList[] newArray(int size) {
            return new OrderLineList[size];
        }
    };
    private int autoActive;
    private String controlKey;
    private String itemId;
    private String lineId;
    private int quantity;
    private String skuId;

    public OrderLineList() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getAutoActive() {
        return this.autoActive;
    }

    public String getControlKey() {
        return this.controlKey;
    }

    public String getItemId() {
        return this.itemId;
    }

    public String getLineId() {
        return this.lineId;
    }

    public int getQuantity() {
        return this.quantity;
    }

    public String getSkuId() {
        return this.skuId;
    }

    public void setAutoActive(int autoActive) {
        this.autoActive = autoActive;
    }

    public void setControlKey(String controlKey) {
        this.controlKey = controlKey;
    }

    public void setItemId(String itemId) {
        this.itemId = itemId;
    }

    public void setLineId(String lineId) {
        this.lineId = lineId;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public void setSkuId(String skuId) {
        this.skuId = skuId;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.skuId);
        dest.writeString(this.itemId);
        dest.writeInt(this.quantity);
        dest.writeString(this.lineId);
        dest.writeInt(this.autoActive);
        dest.writeString(this.controlKey);
    }

    public OrderLineList(String skuId, String itemId, int quantity, String lineId, int autoActive, String controlKey) {
        this.skuId = skuId;
        this.itemId = itemId;
        this.quantity = quantity;
        this.lineId = lineId;
        this.autoActive = autoActive;
        this.controlKey = controlKey;
    }

    public OrderLineList(Parcel in) {
        this.skuId = in.readString();
        this.itemId = in.readString();
        this.quantity = in.readInt();
        this.lineId = in.readString();
        this.autoActive = in.readInt();
        this.controlKey = in.readString();
    }
}
