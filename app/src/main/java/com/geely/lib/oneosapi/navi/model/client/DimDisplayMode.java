package com.geely.lib.oneosapi.navi.model.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;
import com.geely.lib.oneosapi.navi.model.base.NaviProtocolID;

/* loaded from: classes.dex */
public class DimDisplayMode extends NaviBaseModel implements Parcelable {
    public static final Creator<DimDisplayMode> CREATOR = new Creator<DimDisplayMode>() { // from class: com.geely.lib.oneosapi.navi.model.client.DimDisplayMode.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DimDisplayMode createFromParcel(Parcel source) {
            return new DimDisplayMode(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DimDisplayMode[] newArray(int size) {
            return new DimDisplayMode[size];
        }
    };
    public static final int DIM_DISPLAY_AR = 3;
    public static final int DIM_DISPLAY_FULL = 2;
    public static final int DIM_DISPLAY_OFF = 0;
    public static final int DIM_DISPLAY_SIMPLIFY = 1;
    private int dimDisplayMode;

    public DimDisplayMode(int dimDisplayMode) {
        setProtocolID(NaviProtocolID.NAVI_DIM_DISPLAY_MODE);
        setDimDisplayMode(dimDisplayMode);
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getDimDisplayMode() {
        return this.dimDisplayMode;
    }

    public void setDimDisplayMode(int dimDisplayMode) {
        this.dimDisplayMode = dimDisplayMode;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        super.toString();
        StringBuilder sb = new StringBuilder("DimDisplayMode{");
        sb.append("dimDisplayMode=").append(this.dimDisplayMode);
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeInt(this.dimDisplayMode);
    }

    public DimDisplayMode(Parcel in) {
        super(in);
        this.dimDisplayMode = in.readInt();
    }
}
