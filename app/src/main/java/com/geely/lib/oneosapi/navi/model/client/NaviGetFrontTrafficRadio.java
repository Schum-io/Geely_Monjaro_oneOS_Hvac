package com.geely.lib.oneosapi.navi.model.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;
import com.geely.lib.oneosapi.navi.model.base.NaviProtocolID;

/* loaded from: classes.dex */
public class NaviGetFrontTrafficRadio extends NaviBaseModel implements Parcelable {
    public static final Creator<NaviGetFrontTrafficRadio> CREATOR = new Creator<NaviGetFrontTrafficRadio>() { // from class: com.geely.lib.oneosapi.navi.model.client.NaviGetFrontTrafficRadio.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NaviGetFrontTrafficRadio createFromParcel(Parcel source) {
            return new NaviGetFrontTrafficRadio(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NaviGetFrontTrafficRadio[] newArray(int size) {
            return new NaviGetFrontTrafficRadio[size];
        }
    };
    private int frontDistance;

    public NaviGetFrontTrafficRadio(int frontDistance) {
        this.frontDistance = frontDistance;
        setProtocolID(NaviProtocolID.NAVI_OP_FRONT_TRAFFIC_RADIO);
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getFrontDistance() {
        return this.frontDistance;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        StringBuilder sb = new StringBuilder("NaviGetFrontTrafficRadio{");
        sb.append("frontDistance=").append(this.frontDistance);
        sb.append("{base=").append(super.toString()).append("}; ");
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeInt(this.frontDistance);
    }

    public NaviGetFrontTrafficRadio(Parcel in) {
        super(in);
        this.frontDistance = in.readInt();
    }
}
