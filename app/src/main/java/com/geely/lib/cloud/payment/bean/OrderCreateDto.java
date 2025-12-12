package com.geely.lib.cloud.payment.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public class OrderCreateDto implements Parcelable {
    public static final Creator<OrderCreateDto> CREATOR = new Creator<OrderCreateDto>() { // from class: com.geely.lib.cloud.payment.bean.OrderCreateDto.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OrderCreateDto createFromParcel(Parcel in) {
            return new OrderCreateDto(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OrderCreateDto[] newArray(int size) {
            return new OrderCreateDto[size];
        }
    };
    private List<OrderRequestList> orderRequestList;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public OrderCreateDto() {
    }

    public OrderCreateDto(List<OrderRequestList> orderRequestList) {
        this.orderRequestList = orderRequestList;
    }

    protected OrderCreateDto(Parcel in) {
        this.orderRequestList = in.createTypedArrayList(OrderRequestList.CREATOR);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeTypedList(this.orderRequestList);
    }

    public List<OrderRequestList> getOrderRequestList() {
        return this.orderRequestList;
    }

    public void setOrderRequestList(List<OrderRequestList> orderRequestList) {
        this.orderRequestList = orderRequestList;
    }
}
