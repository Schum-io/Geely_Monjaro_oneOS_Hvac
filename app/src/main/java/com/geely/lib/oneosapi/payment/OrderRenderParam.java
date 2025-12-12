package com.geely.lib.oneosapi.payment;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public class OrderRenderParam implements Parcelable {
    public static final Creator<OrderRenderParam> CREATOR = new Creator<OrderRenderParam>() { // from class: com.geely.lib.oneosapi.payment.OrderRenderParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OrderRenderParam createFromParcel(Parcel in) {
            return new OrderRenderParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OrderRenderParam[] newArray(int size) {
            return new OrderRenderParam[size];
        }
    };
    private BuyMemberPointsDeductionParam buyMemberPointsDeductionParam;
    private String divisionIds;
    private FullReductionCouponParam fullReductionCouponParam;
    private List<OrderLineList> orderLineList;
    private String orderSource;

    public OrderRenderParam() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public BuyMemberPointsDeductionParam getBuyMemberPointsDeductionParam() {
        return this.buyMemberPointsDeductionParam;
    }

    public String getDivisionIds() {
        return this.divisionIds;
    }

    public FullReductionCouponParam getFullReductionCouponParam() {
        return this.fullReductionCouponParam;
    }

    public List<OrderLineList> getOrderLineList() {
        return this.orderLineList;
    }

    public String getOrderSource() {
        return this.orderSource;
    }

    public void setBuyMemberPointsDeductionParam(BuyMemberPointsDeductionParam buyMemberPointsDeductionParam) {
        this.buyMemberPointsDeductionParam = buyMemberPointsDeductionParam;
    }

    public void setDivisionIds(String divisionIds) {
        this.divisionIds = divisionIds;
    }

    public void setFullReductionCouponParam(FullReductionCouponParam fullReductionCouponParam) {
        this.fullReductionCouponParam = fullReductionCouponParam;
    }

    public void setOrderLineList(List<OrderLineList> orderLineList) {
        this.orderLineList = orderLineList;
    }

    public void setOrderSource(String orderSource) {
        this.orderSource = orderSource;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.orderSource);
        dest.writeTypedList(this.orderLineList);
        dest.writeString(this.divisionIds);
        dest.writeParcelable(this.buyMemberPointsDeductionParam, flags);
        dest.writeParcelable(this.fullReductionCouponParam, flags);
    }

    public OrderRenderParam(String orderSource, List<OrderLineList> orderLineList, String divisionIds, BuyMemberPointsDeductionParam buyMemberPointsDeductionParam, FullReductionCouponParam fullReductionCouponParam) {
        this.orderSource = orderSource;
        this.orderLineList = orderLineList;
        this.divisionIds = divisionIds;
        this.buyMemberPointsDeductionParam = buyMemberPointsDeductionParam;
        this.fullReductionCouponParam = fullReductionCouponParam;
    }

    public OrderRenderParam(Parcel in) {
        this.orderSource = in.readString();
        this.orderLineList = in.createTypedArrayList(OrderLineList.CREATOR);
        this.divisionIds = in.readString();
        this.buyMemberPointsDeductionParam = (BuyMemberPointsDeductionParam) in.readParcelable(BuyMemberPointsDeductionParam.class.getClassLoader());
        this.fullReductionCouponParam = (FullReductionCouponParam) in.readParcelable(FullReductionCouponParam.class.getClassLoader());
    }
}
