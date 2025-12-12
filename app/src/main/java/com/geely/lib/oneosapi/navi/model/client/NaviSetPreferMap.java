package com.geely.lib.oneosapi.navi.model.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;
import com.geely.lib.oneosapi.navi.model.base.NaviProtocolID;

/* loaded from: classes.dex */
public class NaviSetPreferMap extends NaviBaseModel implements Parcelable {
    public static final Creator<NaviSetPreferMap> CREATOR = new Creator<NaviSetPreferMap>() { // from class: com.geely.lib.oneosapi.navi.model.client.NaviSetPreferMap.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NaviSetPreferMap createFromParcel(Parcel source) {
            return new NaviSetPreferMap(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NaviSetPreferMap[] newArray(int size) {
            return new NaviSetPreferMap[size];
        }
    };
    private int mapVendor;

    public NaviSetPreferMap(int vendor) {
        this.mapVendor = vendor;
        setProtocolID(NaviProtocolID.NAVI_OP_REQUEST_MAP_PREFER);
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public int getMapVendor() {
        return this.mapVendor;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        StringBuilder sb = new StringBuilder("NaviSetPreferMap{");
        sb.append("mapVendor=").append(this.mapVendor);
        sb.append("{base=").append(super.toString()).append("}; ");
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeInt(this.mapVendor);
    }

    public NaviSetPreferMap(Parcel in) {
        super(in);
        this.mapVendor = in.readInt();
    }
}
