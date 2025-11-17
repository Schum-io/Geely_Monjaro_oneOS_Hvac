package com.geely.lib.oneosapi.navi.model.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;
import com.geely.lib.oneosapi.navi.model.base.NaviProtocolID;

/* loaded from: classes.dex */
public class SwitchAlternativeRoute extends NaviBaseModel implements Parcelable {
    public static final Creator<SwitchAlternativeRoute> CREATOR = new Creator<SwitchAlternativeRoute>() { // from class: com.geely.lib.oneosapi.navi.model.client.SwitchAlternativeRoute.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SwitchAlternativeRoute createFromParcel(Parcel in) {
            return new SwitchAlternativeRoute(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SwitchAlternativeRoute[] newArray(int size) {
            return new SwitchAlternativeRoute[size];
        }
    };

    public SwitchAlternativeRoute() {
        setProtocolID(NaviProtocolID.NAVI_OP_SWITCH_ROUTE);
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
    }

    public SwitchAlternativeRoute(NaviBaseModel reqModel) {
        copyBaseInfo(reqModel);
        setProtocolID(NaviProtocolID.NAVI_OP_SWITCH_ROUTE);
    }

    public SwitchAlternativeRoute(Parcel in) {
        super(in);
    }
}
