package com.geely.lib.oneosapi.navi.model.service;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;
import com.geely.lib.oneosapi.navi.model.base.NaviProtocolID;

/* loaded from: classes.dex */
public class RspSpeedLimitFocus extends NaviBaseModel implements Parcelable {
    public static final Creator<RspSpeedLimitFocus> CREATOR = new Creator<RspSpeedLimitFocus>() { // from class: com.geely.lib.oneosapi.navi.model.service.RspSpeedLimitFocus.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspSpeedLimitFocus createFromParcel(Parcel source) {
            return new RspSpeedLimitFocus(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspSpeedLimitFocus[] newArray(int size) {
            return new RspSpeedLimitFocus[size];
        }
    };
    private String focusMapPackage;
    private int focusMapVendor;

    public RspSpeedLimitFocus(int focusMapVendor, String focusMapPackage) {
        this.focusMapVendor = focusMapVendor;
        this.focusMapPackage = focusMapPackage;
        setProtocolID(NaviProtocolID.RSP_SPEED_LIMIT_FOCUS);
    }

    public String getFocusMapPackage() {
        return this.focusMapPackage;
    }

    public int getFocusMapVendor() {
        return this.focusMapVendor;
    }

    public void setFocusMapPackage(String focusMapPackage) {
        this.focusMapPackage = focusMapPackage;
    }

    public void setFocusMapVendor(int focusMapVendor) {
        this.focusMapVendor = focusMapVendor;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        super.toString();
        StringBuilder sb = new StringBuilder("RspSpeedLimitFocus{");
        sb.append("focusMapVendor=").append(this.focusMapVendor);
        sb.append("focusMapPackage=").append(this.focusMapPackage);
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeInt(this.focusMapVendor);
        dest.writeString(this.focusMapPackage);
    }

    public RspSpeedLimitFocus(Parcel in) {
        super(in);
        this.focusMapVendor = in.readInt();
        this.focusMapPackage = in.readString();
    }
}
