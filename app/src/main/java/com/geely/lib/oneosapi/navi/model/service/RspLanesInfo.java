package com.geely.lib.oneosapi.navi.model.service;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.LaneInfo;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class RspLanesInfo extends NaviBaseModel implements Parcelable {
    public static final Creator<RspLanesInfo> CREATOR = new Creator<RspLanesInfo>() { // from class: com.geely.lib.oneosapi.navi.model.service.RspLanesInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspLanesInfo createFromParcel(Parcel var1) {
            return new RspLanesInfo(var1);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspLanesInfo[] newArray(int var1) {
            return new RspLanesInfo[var1];
        }
    };
    public boolean bLanesEnable;
    private List<LaneInfo> laneInfos;

    public RspLanesInfo(Parcel var1) {
        super(var1);
        this.laneInfos = new ArrayList();
        this.bLanesEnable = var1.readByte() != 0;
        this.laneInfos = var1.createTypedArrayList(LaneInfo.CREATOR);
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<LaneInfo> getLaneInfos() {
        return this.laneInfos;
    }

    public boolean isLanesEnable() {
        return this.bLanesEnable;
    }

    public void setLaneInfos(List<LaneInfo> var1) {
        this.laneInfos = var1;
    }

    public void setLanesEnable(boolean var1) {
        this.bLanesEnable = var1;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        StringBuilder sb = new StringBuilder("RspLanesInfo{");
        sb.append("bLanesEnable=").append(this.bLanesEnable);
        sb.append(", laneInfos=").append(this.laneInfos);
        sb.append("{base=").append(super.toString()).append("}; ");
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeByte(this.bLanesEnable ? (byte) 1 : (byte) 0);
        parcel.writeTypedList(this.laneInfos);
    }

    public RspLanesInfo(NaviBaseModel var1) {
        this.laneInfos = new ArrayList();
        copyBaseInfo(var1);
    }
}
