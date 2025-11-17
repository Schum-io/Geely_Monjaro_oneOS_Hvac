package com.geely.lib.oneosapi.navi.model.service;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;
import com.geely.lib.oneosapi.navi.model.base.PoiInfo;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class RspFrequentPois extends NaviBaseModel implements Parcelable {
    public static final Creator<RspFrequentPois> CREATOR = new Creator<RspFrequentPois>() { // from class: com.geely.lib.oneosapi.navi.model.service.RspFrequentPois.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspFrequentPois createFromParcel(Parcel source) {
            return new RspFrequentPois(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspFrequentPois[] newArray(int size) {
            return new RspFrequentPois[size];
        }
    };
    private List<PoiInfo> poiList;

    public RspFrequentPois(NaviBaseModel reqModel) {
        this.poiList = new ArrayList();
        copyBaseInfo(reqModel);
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<PoiInfo> getPoiList() {
        return this.poiList;
    }

    public void setPoiList(List<PoiInfo> poiList) {
        this.poiList = poiList;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        StringBuilder sb = new StringBuilder("RspFrequentPois{");
        sb.append("poiList=").append(this.poiList);
        sb.append("; {base=").append(super.toString()).append("}; ");
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeTypedList(this.poiList);
    }

    public RspFrequentPois(Parcel in) {
        super(in);
        this.poiList = new ArrayList();
        this.poiList = in.createTypedArrayList(PoiInfo.CREATOR);
    }
}
