package com.geely.lib.oneosapi.navi.model.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;
import com.geely.lib.oneosapi.navi.model.base.NaviProtocolID;
import com.geely.lib.oneosapi.navi.model.base.PoiTypeFilters;

/* loaded from: classes.dex */
public class RequestHistoryPois extends NaviBaseModel implements Parcelable {
    public static final Creator<RequestHistoryPois> CREATOR = new Creator<RequestHistoryPois>() { // from class: com.geely.lib.oneosapi.navi.model.client.RequestHistoryPois.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RequestHistoryPois createFromParcel(Parcel source) {
            return new RequestHistoryPois(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RequestHistoryPois[] newArray(int size) {
            return new RequestHistoryPois[size];
        }
    };
    private int maxCount;
    private long poiTypeFilter;

    public RequestHistoryPois() {
        this.poiTypeFilter = PoiTypeFilters.ALL;
        this.maxCount = 30;
        setProtocolID(NaviProtocolID.NAVI_OP_GET_HISTORY_POI);
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getMaxCount() {
        return this.maxCount;
    }

    public long getPoiTypeFilter() {
        return this.poiTypeFilter;
    }

    public RequestHistoryPois setMaxCount(int maxCount) {
        this.maxCount = maxCount;
        return this;
    }

    public RequestHistoryPois setPoiTypeFilter(long poiTypeFilter) {
        this.poiTypeFilter = poiTypeFilter;
        return this;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        StringBuilder sb = new StringBuilder("RequestHistoryPois{");
        sb.append("poiTypeFilter=").append(this.poiTypeFilter);
        sb.append(", maxCount=").append(this.maxCount);
        sb.append("; {base=").append(super.toString()).append("}; ");
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeLong(this.poiTypeFilter);
        dest.writeInt(this.maxCount);
    }

    public RequestHistoryPois(Parcel in) {
        super(in);
        this.poiTypeFilter = PoiTypeFilters.ALL;
        this.maxCount = 30;
        this.poiTypeFilter = in.readLong();
        this.maxCount = in.readInt();
    }
}
