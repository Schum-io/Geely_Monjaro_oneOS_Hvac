package com.geely.lib.oneosapi.navi.model.service;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;

/* loaded from: classes.dex */
public class RspLocation extends NaviBaseModel implements Parcelable, Cloneable {
    public static final Creator<RspLocation> CREATOR = new Creator<RspLocation>() { // from class: com.geely.lib.oneosapi.navi.model.service.RspLocation.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspLocation createFromParcel(Parcel source) {
            return new RspLocation(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspLocation[] newArray(int size) {
            return new RspLocation[size];
        }
    };
    private LocationInfo locationInfo;

    public RspLocation(NaviBaseModel reqModel) {
        copyBaseInfo(reqModel);
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public LocationInfo getLocationInfo() {
        return this.locationInfo;
    }

    public void setLocationInfo(LocationInfo locationInfo) {
        this.locationInfo = locationInfo;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        StringBuilder sb = new StringBuilder("RspLocation{");
        sb.append("locationInfo=").append(this.locationInfo);
        sb.append("{base=").append(super.toString()).append("}; ");
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeParcelable(this.locationInfo, flags);
    }

    public RspLocation(Parcel in) {
        super(in);
        this.locationInfo = (LocationInfo) in.readParcelable(LocationInfo.class.getClassLoader());
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    /* renamed from: clone */
    public RspLocation clone() {
        RspLocation rspLocation = (RspLocation) super.clone();
        LocationInfo locationInfo = this.locationInfo;
        if (locationInfo != null) {
            rspLocation.locationInfo = locationInfo.clone();
        }
        return rspLocation;
    }
}
