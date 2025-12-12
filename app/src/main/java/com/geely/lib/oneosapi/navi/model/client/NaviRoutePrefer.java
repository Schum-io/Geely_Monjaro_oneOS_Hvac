package com.geely.lib.oneosapi.navi.model.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;
import com.geely.lib.oneosapi.navi.model.base.NaviProtocolID;

/* loaded from: classes.dex */
public class NaviRoutePrefer extends NaviBaseModel implements Parcelable {
    public static final Creator<NaviRoutePrefer> CREATOR = new Creator<NaviRoutePrefer>() { // from class: com.geely.lib.oneosapi.navi.model.client.NaviRoutePrefer.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NaviRoutePrefer createFromParcel(Parcel source) {
            return new NaviRoutePrefer(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NaviRoutePrefer[] newArray(int size) {
            return new NaviRoutePrefer[size];
        }
    };
    private int strategy;

    public NaviRoutePrefer(int strategy) {
        this.strategy = strategy;
        setProtocolID(NaviProtocolID.NAVI_OP_ROUTE_PREFER);
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getStrategy() {
        return this.strategy;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        StringBuilder sb = new StringBuilder("NaviRoutePrefer{");
        sb.append("strategy=").append(this.strategy);
        sb.append("{base=").append(super.toString()).append("}; ");
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeInt(this.strategy);
    }

    public NaviRoutePrefer(Parcel in) {
        super(in);
        this.strategy = in.readInt();
    }
}
