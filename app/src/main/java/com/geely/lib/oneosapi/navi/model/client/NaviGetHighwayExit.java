package com.geely.lib.oneosapi.navi.model.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;
import com.geely.lib.oneosapi.navi.model.base.NaviProtocolID;

/* loaded from: classes.dex */
public class NaviGetHighwayExit extends NaviBaseModel implements Parcelable {
    public static final int ACTION_DEFAULT_EXIT = 0;
    public static final int ACTION_RECENT_EXIT = 1;
    public static final Creator<NaviGetHighwayExit> CREATOR = new Creator<NaviGetHighwayExit>() { // from class: com.geely.lib.oneosapi.navi.model.client.NaviGetHighwayExit.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NaviGetHighwayExit createFromParcel(Parcel source) {
            return new NaviGetHighwayExit(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NaviGetHighwayExit[] newArray(int size) {
            return new NaviGetHighwayExit[size];
        }
    };
    private int action;

    public NaviGetHighwayExit() {
        setProtocolID(NaviProtocolID.NAVI_OP_HIGHWAY_EXIT_INFO);
        this.action = 0;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getAction() {
        return this.action;
    }

    public void setAction(int action) {
        this.action = action;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        StringBuilder sb = new StringBuilder("NaviGetHighwayExit{");
        sb.append("action=").append(this.action);
        sb.append("{base=").append(super.toString()).append("}; ");
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeInt(this.action);
    }

    public NaviGetHighwayExit(Parcel in) {
        super(in);
        this.action = in.readInt();
    }
}
