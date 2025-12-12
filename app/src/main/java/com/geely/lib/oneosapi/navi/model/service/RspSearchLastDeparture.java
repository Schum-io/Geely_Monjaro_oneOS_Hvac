package com.geely.lib.oneosapi.navi.model.service;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;
import com.geely.lib.oneosapi.navi.model.base.NaviProtocolID;
import com.geely.lib.oneosapi.navi.model.base.PoiInfo;

/* loaded from: classes.dex */
public class RspSearchLastDeparture extends NaviBaseModel implements Parcelable {
    public static final Creator<RspSearchLastDeparture> CREATOR = new Creator<RspSearchLastDeparture>() { // from class: com.geely.lib.oneosapi.navi.model.service.RspSearchLastDeparture.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspSearchLastDeparture createFromParcel(Parcel source) {
            return new RspSearchLastDeparture(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspSearchLastDeparture[] newArray(int size) {
            return new RspSearchLastDeparture[size];
        }
    };
    private PoiInfo poiInfo;

    public RspSearchLastDeparture(PoiInfo poiInfo) {
        this.poiInfo = poiInfo;
        setProtocolID(NaviProtocolID.SEARCH_LAST_DEPARTURE);
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public PoiInfo getPoiInfo() {
        return this.poiInfo;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        StringBuilder sb = new StringBuilder("SearchLastDeparture{");
        sb.append("poiName=").append(this.poiInfo.getName());
        sb.append(", LatLng=").append(this.poiInfo.getLatLng());
        sb.append("{base=").append(super.toString()).append("}; ");
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeParcelable(this.poiInfo, flags);
    }

    public RspSearchLastDeparture(Parcel in) {
        super(in);
        this.poiInfo = (PoiInfo) in.readParcelable(PoiInfo.class.getClassLoader());
    }
}
