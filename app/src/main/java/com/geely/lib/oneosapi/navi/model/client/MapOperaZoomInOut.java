package com.geely.lib.oneosapi.navi.model.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;

/* loaded from: classes.dex */
public class MapOperaZoomInOut extends NaviBaseModel implements Parcelable {
    public static final int ACTION_ZOOM_IN = 0;
    public static final int ACTION_ZOOM_IN_MAXIMUM = 2;
    public static final int ACTION_ZOOM_OUT = 1;
    public static final int ACTION_ZOOM_OUT_MINIEST = 3;
    public static final Creator<MapOperaZoomInOut> CREATOR = new Creator<MapOperaZoomInOut>() { // from class: com.geely.lib.oneosapi.navi.model.client.MapOperaZoomInOut.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MapOperaZoomInOut createFromParcel(Parcel source) {
            return new MapOperaZoomInOut(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MapOperaZoomInOut[] newArray(int size) {
            return new MapOperaZoomInOut[size];
        }
    };
    private int action;

    public MapOperaZoomInOut() {
        this(0);
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
        StringBuilder sb = new StringBuilder("MapOperaZoomInOut{");
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

    public MapOperaZoomInOut(int zoomAction) {
        this.action = 0;
        this.action = zoomAction;
        setProtocolID(3000);
    }

    public MapOperaZoomInOut(Parcel in) {
        super(in);
        this.action = 0;
        this.action = in.readInt();
    }
}
