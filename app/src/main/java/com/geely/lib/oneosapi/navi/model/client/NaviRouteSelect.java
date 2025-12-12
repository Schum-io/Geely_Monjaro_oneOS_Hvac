package com.geely.lib.oneosapi.navi.model.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;
import com.geely.lib.oneosapi.navi.model.base.NaviProtocolID;

/* loaded from: classes.dex */
public class NaviRouteSelect extends NaviBaseModel implements Parcelable {
    public static final Creator<NaviRouteSelect> CREATOR = new Creator<NaviRouteSelect>() { // from class: com.geely.lib.oneosapi.navi.model.client.NaviRouteSelect.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NaviRouteSelect createFromParcel(Parcel source) {
            return new NaviRouteSelect(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NaviRouteSelect[] newArray(int size) {
            return new NaviRouteSelect[size];
        }
    };
    private int selectIndex;

    public NaviRouteSelect(int index) {
        this.selectIndex = index;
        setProtocolID(NaviProtocolID.NAVI_OP_ROUTE_SELECT);
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getSelectIndex() {
        return this.selectIndex;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        StringBuilder sb = new StringBuilder("NaviRouteSelect{");
        sb.append("selectIndex=").append(this.selectIndex);
        sb.append("{base=").append(super.toString()).append("}; ");
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeInt(this.selectIndex);
    }

    public NaviRouteSelect(Parcel in) {
        super(in);
        this.selectIndex = in.readInt();
    }
}
