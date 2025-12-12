package com.geely.lib.cloud.payment.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public class OrderRequestList implements Parcelable {
    public static final Creator<OrderRequestList> CREATOR = new Creator<OrderRequestList>() { // from class: com.geely.lib.cloud.payment.bean.OrderRequestList.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OrderRequestList createFromParcel(Parcel in) {
            return new OrderRequestList(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OrderRequestList[] newArray(int size) {
            return new OrderRequestList[size];
        }
    };
    private String appId;
    private BuyMemberPointsDeductionParam buyMemberPointsDeductionParam;
    private ExtraParam extraParam;
    private FullReductionCouponParam fullReductionCouponParam;
    private List<OrderList> orderList;
    private String orderSource;
    private String reqSource;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public OrderRequestList() {
    }

    public OrderRequestList(String orderSource, String appId, String reqSource, BuyMemberPointsDeductionParam buyMemberPointsDeductionParam, ExtraParam extraParam, FullReductionCouponParam fullReductionCouponParam, List<OrderList> orderList) {
        this.orderSource = orderSource;
        this.appId = appId;
        this.reqSource = reqSource;
        this.buyMemberPointsDeductionParam = buyMemberPointsDeductionParam;
        this.extraParam = extraParam;
        this.fullReductionCouponParam = fullReductionCouponParam;
        this.orderList = orderList;
    }

    protected OrderRequestList(Parcel in) {
        this.orderSource = in.readString();
        this.appId = in.readString();
        this.reqSource = in.readString();
        this.buyMemberPointsDeductionParam = (BuyMemberPointsDeductionParam) in.readParcelable(BuyMemberPointsDeductionParam.class.getClassLoader());
        this.extraParam = (ExtraParam) in.readParcelable(ExtraParam.class.getClassLoader());
        this.fullReductionCouponParam = (FullReductionCouponParam) in.readParcelable(FullReductionCouponParam.class.getClassLoader());
        this.orderList = in.createTypedArrayList(OrderList.CREATOR);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.orderSource);
        dest.writeString(this.appId);
        dest.writeString(this.reqSource);
        dest.writeParcelable(this.buyMemberPointsDeductionParam, flags);
        dest.writeParcelable(this.extraParam, flags);
        dest.writeParcelable(this.fullReductionCouponParam, flags);
        dest.writeTypedList(this.orderList);
    }

    public String getOrderSource() {
        return this.orderSource;
    }

    public void setOrderSource(String orderSource) {
        this.orderSource = orderSource;
    }

    public String getAppId() {
        return this.appId;
    }

    public void setAppId(String appId) {
        this.appId = appId;
    }

    public String getReqSource() {
        return this.reqSource;
    }

    public void setReqSource(String reqSource) {
        this.reqSource = reqSource;
    }

    public BuyMemberPointsDeductionParam getBuyMemberPointsDeductionParam() {
        return this.buyMemberPointsDeductionParam;
    }

    public void setBuyMemberPointsDeductionParam(BuyMemberPointsDeductionParam buyMemberPointsDeductionParam) {
        this.buyMemberPointsDeductionParam = buyMemberPointsDeductionParam;
    }

    public ExtraParam getExtraParam() {
        return this.extraParam;
    }

    public void setExtraParam(ExtraParam extraParam) {
        this.extraParam = extraParam;
    }

    public FullReductionCouponParam getFullReductionCouponParam() {
        return this.fullReductionCouponParam;
    }

    public void setFullReductionCouponParam(FullReductionCouponParam fullReductionCouponParam) {
        this.fullReductionCouponParam = fullReductionCouponParam;
    }

    public List<OrderList> getOrderList() {
        return this.orderList;
    }

    public void setOrderList(List<OrderList> orderList) {
        this.orderList = orderList;
    }
}
