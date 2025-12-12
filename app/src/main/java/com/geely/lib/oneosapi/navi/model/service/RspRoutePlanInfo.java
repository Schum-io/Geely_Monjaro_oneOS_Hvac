package com.geely.lib.oneosapi.navi.model.service;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;
import com.geely.lib.oneosapi.navi.model.base.PoiInfo;
import java.util.List;

/* loaded from: classes.dex */
public class RspRoutePlanInfo extends RspRoutePlanResult implements Parcelable {
    public static final Creator<RspRoutePlanInfo> CREATOR = new Creator<RspRoutePlanInfo>() { // from class: com.geely.lib.oneosapi.navi.model.service.RspRoutePlanInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspRoutePlanInfo createFromParcel(Parcel source) {
            return new RspRoutePlanInfo(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspRoutePlanInfo[] newArray(int size) {
            return new RspRoutePlanInfo[size];
        }
    };
    private int currentRouteIndex;
    private PoiInfo endPOI;
    private List<RouteInfo> routeInfos;
    private PoiInfo startPOI;
    private List<PoiInfo> viaPOIInfos;

    public RspRoutePlanInfo(NaviBaseModel reqModel) {
        super(reqModel);
    }

    public static Creator<RspRoutePlanInfo> getCREATOR() {
        return CREATOR;
    }

    public int getCurrentRouteIndex() {
        return this.currentRouteIndex;
    }

    public PoiInfo getEndPOI() {
        return this.endPOI;
    }

    public List<RouteInfo> getRouteInfos() {
        return this.routeInfos;
    }

    public PoiInfo getStartPOI() {
        return this.startPOI;
    }

    public List<PoiInfo> getViaPOIInfos() {
        return this.viaPOIInfos;
    }

    public void setCurrentRouteIndex(int currentRouteIndex) {
        this.currentRouteIndex = currentRouteIndex;
    }

    public void setEndPOI(PoiInfo endPOI) {
        this.endPOI = endPOI;
    }

    public void setRouteInfos(List<RouteInfo> routeInfos) {
        this.routeInfos = routeInfos;
    }

    public void setStartPOI(PoiInfo startPOI) {
        this.startPOI = startPOI;
    }

    public void setViaPOIInfos(List<PoiInfo> viaPOIInfos) {
        this.viaPOIInfos = viaPOIInfos;
    }

    @Override // com.geely.lib.oneosapi.navi.model.service.RspRoutePlanResult, com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        StringBuilder sb = new StringBuilder("RspRoutePlanInfo{");
        sb.append("viaPOIInfos=").append(this.viaPOIInfos);
        sb.append(", startPOI=").append(this.startPOI);
        sb.append(", endPOI=").append(this.endPOI);
        sb.append("{base=").append(super.toString()).append("}; ");
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.service.RspRoutePlanResult, com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeParcelable(this.startPOI, flags);
        dest.writeParcelable(this.endPOI, flags);
        dest.writeTypedList(this.viaPOIInfos);
        dest.writeInt(this.currentRouteIndex);
        dest.writeTypedList(this.routeInfos);
    }

    public RspRoutePlanInfo(Parcel in) {
        super(in);
        this.startPOI = (PoiInfo) in.readParcelable(PoiInfo.class.getClassLoader());
        this.endPOI = (PoiInfo) in.readParcelable(PoiInfo.class.getClassLoader());
        this.viaPOIInfos = in.createTypedArrayList(PoiInfo.CREATOR);
        this.currentRouteIndex = in.readInt();
        this.routeInfos = in.createTypedArrayList(RouteInfo.CREATOR);
    }
}
