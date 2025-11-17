package com.geely.lib.oneosapi.navi.model.service;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;
import com.geely.lib.oneosapi.navi.model.base.NaviProtocolID;

/* loaded from: classes.dex */
public class RspShowOnDimFocus extends NaviBaseModel implements Parcelable {
    public static final Creator<RspShowOnDimFocus> CREATOR = new Creator<RspShowOnDimFocus>() { // from class: com.geely.lib.oneosapi.navi.model.service.RspShowOnDimFocus.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspShowOnDimFocus createFromParcel(Parcel source) {
            return new RspShowOnDimFocus(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspShowOnDimFocus[] newArray(int size) {
            return new RspShowOnDimFocus[size];
        }
    };
    private String focusMapPackage;
    private int focusMapVendor;

    public RspShowOnDimFocus(int focusMapVendor, String focusMapPackage) {
        this.focusMapVendor = focusMapVendor;
        this.focusMapPackage = focusMapPackage;
        setProtocolID(NaviProtocolID.RSP_SHOW_ON_DIM_FOCUS);
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
        StringBuilder sb = new StringBuilder("RspShowOnDimFocus{");
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

    public RspShowOnDimFocus(Parcel in) {
        super(in);
        this.focusMapVendor = in.readInt();
        this.focusMapPackage = in.readString();
    }
}
