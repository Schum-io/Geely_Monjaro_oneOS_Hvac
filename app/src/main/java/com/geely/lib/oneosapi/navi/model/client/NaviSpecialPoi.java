package com.geely.lib.oneosapi.navi.model.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;
import com.geely.lib.oneosapi.navi.model.base.NaviProtocolID;

/* loaded from: classes.dex */
public class NaviSpecialPoi extends NaviBaseModel implements Parcelable {
    public static final int ACTION_NAVI = 0;
    public static final int ACTION_ROUTE_PLANNING = 1;
    public static final Creator<NaviSpecialPoi> CREATOR = new Creator<NaviSpecialPoi>() { // from class: com.geely.lib.oneosapi.navi.model.client.NaviSpecialPoi.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NaviSpecialPoi createFromParcel(Parcel source) {
            return new NaviSpecialPoi(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NaviSpecialPoi[] newArray(int size) {
            return new NaviSpecialPoi[size];
        }
    };
    public static final int POI_TYPE_COMPANY = 1;
    public static final int POI_TYPE_HOME = 0;
    private int action;
    private int poiType;

    public NaviSpecialPoi(int poiType, int action) {
        this.poiType = poiType;
        this.action = action;
        setProtocolID(NaviProtocolID.NAVI_OP_SPECIAL_POI);
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getAction() {
        return this.action;
    }

    public int getPoiType() {
        return this.poiType;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        StringBuilder sb = new StringBuilder("NaviSpecialPoi{");
        sb.append("poiType=").append(this.poiType);
        sb.append(", action=").append(this.action);
        sb.append("{base=").append(super.toString()).append("}; ");
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeInt(this.poiType);
        dest.writeInt(this.action);
    }

    public NaviSpecialPoi(Parcel in) {
        super(in);
        this.poiType = in.readInt();
        this.action = in.readInt();
    }
}
