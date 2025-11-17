package com.geely.lib.oneosapi.navi.model.service;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;
import java.util.List;

/* loaded from: classes.dex */
public class RspRoutePlanResult extends NaviBaseModel implements Parcelable {
    public static final Creator<RspRoutePlanResult> CREATOR = new Creator<RspRoutePlanResult>() { // from class: com.geely.lib.oneosapi.navi.model.service.RspRoutePlanResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspRoutePlanResult createFromParcel(Parcel source) {
            return new RspRoutePlanResult(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspRoutePlanResult[] newArray(int size) {
            return new RspRoutePlanResult[size];
        }
    };
    private List<RouteInfo> routeInfoList;

    public RspRoutePlanResult(NaviBaseModel reqModel) {
        copyBaseInfo(reqModel);
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<RouteInfo> getRouteInfoList() {
        return this.routeInfoList;
    }

    public void setRouteInfoList(List<RouteInfo> routeInfoList) {
        this.routeInfoList = routeInfoList;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        StringBuilder sb = new StringBuilder("RspRoutePlanResult{");
        sb.append("routeInfoList=").append(this.routeInfoList);
        sb.append("{base=").append(super.toString()).append("}; ");
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeTypedList(this.routeInfoList);
    }

    public RspRoutePlanResult(Parcel in) {
        super(in);
        this.routeInfoList = in.createTypedArrayList(RouteInfo.CREATOR);
    }
}
