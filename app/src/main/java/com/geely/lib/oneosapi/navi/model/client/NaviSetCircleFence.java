package com.geely.lib.oneosapi.navi.model.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.LatLng;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;
import com.geely.lib.oneosapi.navi.model.base.NaviProtocolID;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* loaded from: classes.dex */
public class NaviSetCircleFence extends NaviBaseModel implements Parcelable {
    public static final Creator<NaviSetCircleFence> CREATOR = new Creator<NaviSetCircleFence>() { // from class: com.geely.lib.oneosapi.navi.model.client.NaviSetCircleFence.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NaviSetCircleFence createFromParcel(Parcel source) {
            return new NaviSetCircleFence(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NaviSetCircleFence[] newArray(int size) {
            return new NaviSetCircleFence[size];
        }
    };
    private int action;
    private LatLng latLng;
    private int radius;

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER})
    @Retention(RetentionPolicy.SOURCE)
    public @interface Actions {
        public static final int ADD = 0;
        public static final int CLEAR = 1;
    }

    public NaviSetCircleFence(int action) {
        this.action = action;
        setProtocolID(NaviProtocolID.NAVI_OP_SET_CIRCLE_FENCE);
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getAction() {
        return this.action;
    }

    public LatLng getLatLng() {
        return this.latLng;
    }

    public int getRadius() {
        return this.radius;
    }

    public void setAction(int action) {
        this.action = action;
    }

    public void setLatLng(LatLng latLng) {
        this.latLng = latLng;
    }

    public void setRadius(int radius) {
        this.radius = radius;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        StringBuilder sb = new StringBuilder("NaviSetCircleFence{");
        sb.append("action=").append(this.action);
        sb.append(", latLng=").append(this.latLng);
        sb.append(", radius=").append(this.radius);
        sb.append(",{base=").append(super.toString()).append("}; ");
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeInt(this.action);
        dest.writeParcelable(this.latLng, flags);
        dest.writeInt(this.radius);
    }

    public NaviSetCircleFence(Parcel in) {
        super(in);
        this.action = in.readInt();
        this.latLng = (LatLng) in.readParcelable(LatLng.class.getClassLoader());
        this.radius = in.readInt();
    }
}
