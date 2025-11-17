package com.geely.lib.oneosapi.navi.model.service;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;

/* loaded from: classes.dex */
public class RspTrafficSummaryInfo extends NaviBaseModel implements Parcelable {
    public static final Creator<RspTrafficSummaryInfo> CREATOR = new Creator<RspTrafficSummaryInfo>() { // from class: com.geely.lib.oneosapi.navi.model.service.RspTrafficSummaryInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspTrafficSummaryInfo createFromParcel(Parcel source) {
            return new RspTrafficSummaryInfo(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspTrafficSummaryInfo[] newArray(int size) {
            return new RspTrafficSummaryInfo[size];
        }
    };
    private String trafficSummaryInfo;

    public RspTrafficSummaryInfo(NaviBaseModel reqModel) {
        copyBaseInfo(reqModel);
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getTrafficSummaryInfo() {
        return this.trafficSummaryInfo;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public void readFromParcel(Parcel in) {
        super.readFromParcel(in);
        this.trafficSummaryInfo = in.readString();
    }

    public void setTrafficSummaryInfo(String trafficSummaryInfo) {
        this.trafficSummaryInfo = trafficSummaryInfo;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        StringBuilder sb = new StringBuilder("RspTrafficSummaryInfo{");
        sb.append("trafficSummaryInfo=").append(this.trafficSummaryInfo);
        sb.append("{base=").append(super.toString()).append("}; ");
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeString(this.trafficSummaryInfo);
    }

    public RspTrafficSummaryInfo(Parcel in) {
        super(in);
        this.trafficSummaryInfo = in.readString();
    }
}
