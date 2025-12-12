package com.geely.lib.oneosapi.navi.model.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;
import com.geely.lib.oneosapi.navi.model.base.NaviProtocolID;

/* loaded from: classes.dex */
public class MapOperaGetTrafficSummaryInfo extends NaviBaseModel implements Parcelable {
    public static final Creator<MapOperaGetTrafficSummaryInfo> CREATOR = new Creator<MapOperaGetTrafficSummaryInfo>() { // from class: com.geely.lib.oneosapi.navi.model.client.MapOperaGetTrafficSummaryInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MapOperaGetTrafficSummaryInfo createFromParcel(Parcel source) {
            return new MapOperaGetTrafficSummaryInfo(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MapOperaGetTrafficSummaryInfo[] newArray(int size) {
            return new MapOperaGetTrafficSummaryInfo[size];
        }
    };
    private String trafficKeyword;

    public MapOperaGetTrafficSummaryInfo(String keyword) {
        setProtocolID(NaviProtocolID.MAP_OP_GET_TRAFFIC_INFO);
        this.trafficKeyword = keyword;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getTrafficKeyword() {
        return this.trafficKeyword;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        StringBuilder sb = new StringBuilder("MapOperaGetTrafficSummaryInfo{");
        sb.append("trafficKeyword=").append(this.trafficKeyword);
        sb.append("{base=").append(super.toString()).append("}; ");
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeString(this.trafficKeyword);
    }

    public MapOperaGetTrafficSummaryInfo(Parcel in) {
        super(in);
        this.trafficKeyword = in.readString();
    }
}
