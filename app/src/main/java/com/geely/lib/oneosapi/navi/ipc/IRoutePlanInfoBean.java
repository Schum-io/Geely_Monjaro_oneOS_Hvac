package com.geely.lib.oneosapi.navi.ipc;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public class IRoutePlanInfoBean implements Parcelable {
    public static final Creator<IRoutePlanInfoBean> CREATOR = new Creator<IRoutePlanInfoBean>() { // from class: com.geely.lib.oneosapi.navi.ipc.IRoutePlanInfoBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IRoutePlanInfoBean createFromParcel(Parcel in) {
            return new IRoutePlanInfoBean(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IRoutePlanInfoBean[] newArray(int size) {
            return new IRoutePlanInfoBean[size];
        }
    };
    private int currentRouteIndex;
    private IPoiInfoBean endPoi;
    private Bundle extras;
    private int resultCode;
    private List<IRouteInfoBean> routeInfos;
    private IPoiInfoBean startPoi;
    private List<IPoiInfoBean> viaPois;

    public IRoutePlanInfoBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getCurrentRouteIndex() {
        return this.currentRouteIndex;
    }

    public IPoiInfoBean getEndPoi() {
        return this.endPoi;
    }

    public Bundle getExtras() {
        return this.extras;
    }

    public int getResultCode() {
        return this.resultCode;
    }

    public List<IRouteInfoBean> getRouteInfos() {
        return this.routeInfos;
    }

    public IPoiInfoBean getStartPoi() {
        return this.startPoi;
    }

    public List<IPoiInfoBean> getViaPois() {
        return this.viaPois;
    }

    public void readFromParcel(Parcel in) {
        this.startPoi = (IPoiInfoBean) in.readParcelable(IPoiInfoBean.class.getClassLoader());
        this.endPoi = (IPoiInfoBean) in.readParcelable(IPoiInfoBean.class.getClassLoader());
        this.viaPois = in.createTypedArrayList(IPoiInfoBean.CREATOR);
        this.routeInfos = in.createTypedArrayList(IRouteInfoBean.CREATOR);
        this.currentRouteIndex = in.readInt();
        this.resultCode = in.readInt();
        this.extras = in.readBundle(Bundle.class.getClassLoader());
    }

    public void setCurrentRouteIndex(int currentRouteIndex) {
        this.currentRouteIndex = currentRouteIndex;
    }

    public void setEndPoi(IPoiInfoBean endPoi) {
        this.endPoi = endPoi;
    }

    public void setExtras(Bundle extras) {
        this.extras = extras;
    }

    public void setResultCode(int resultCode) {
        this.resultCode = resultCode;
    }

    public void setRouteInfos(List<IRouteInfoBean> routeInfos) {
        this.routeInfos = routeInfos;
    }

    public void setStartPoi(IPoiInfoBean startPoi) {
        this.startPoi = startPoi;
    }

    public void setViaPois(List<IPoiInfoBean> viaPois) {
        this.viaPois = viaPois;
    }

    public String toString() {
        return "IRoutePlanInfoBean{startPoi=" + this.startPoi + ", endPoi=" + this.endPoi + ", viaPois=" + this.viaPois + ", routeInfos=" + this.routeInfos + ", currentRouteIndex=" + this.currentRouteIndex + ", resultCode=" + this.resultCode + ", extras=" + this.extras + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeParcelable(this.startPoi, flags);
        dest.writeParcelable(this.endPoi, flags);
        dest.writeTypedList(this.viaPois);
        dest.writeTypedList(this.routeInfos);
        dest.writeInt(this.currentRouteIndex);
        dest.writeInt(this.resultCode);
        dest.writeBundle(this.extras);
    }

    public IRoutePlanInfoBean(Parcel in) {
        this.startPoi = (IPoiInfoBean) in.readParcelable(IPoiInfoBean.class.getClassLoader());
        this.endPoi = (IPoiInfoBean) in.readParcelable(IPoiInfoBean.class.getClassLoader());
        this.viaPois = in.createTypedArrayList(IPoiInfoBean.CREATOR);
        this.routeInfos = in.createTypedArrayList(IRouteInfoBean.CREATOR);
        this.currentRouteIndex = in.readInt();
        this.resultCode = in.readInt();
        this.extras = in.readBundle(Bundle.class.getClassLoader());
    }
}
