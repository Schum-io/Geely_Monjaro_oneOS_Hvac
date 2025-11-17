package com.geely.lib.oneosapi.navi.model.client;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;

/* loaded from: classes.dex */
public class MapFeaturesStateBean extends NaviBaseModel implements Parcelable {
    public static final Creator<MapFeaturesStateBean> CREATOR = new Creator<MapFeaturesStateBean>() { // from class: com.geely.lib.oneosapi.navi.model.client.MapFeaturesStateBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MapFeaturesStateBean createFromParcel(Parcel in) {
            return new MapFeaturesStateBean(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MapFeaturesStateBean[] newArray(int size) {
            return new MapFeaturesStateBean[size];
        }
    };
    private Bundle extras;
    private int mapFeaturesCanRun;
    private long requestTimeout;

    public MapFeaturesStateBean(Parcel in) {
        super(in);
        this.mapFeaturesCanRun = in.readInt();
        this.requestTimeout = in.readLong();
        this.extras = in.readBundle(getClass().getClassLoader());
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Bundle getExtras() {
        return this.extras;
    }

    public int getMapFeaturesCanRun() {
        return this.mapFeaturesCanRun;
    }

    public long getRequestTimeout() {
        return this.requestTimeout;
    }

    public void setExtras(Bundle extras) {
        this.extras = extras;
    }

    public void setMapFeaturesCanRun(int mapFeaturesCanRun) {
        this.mapFeaturesCanRun = mapFeaturesCanRun;
    }

    public void setRequestTimeout(long requestTimeout) {
        this.requestTimeout = requestTimeout;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeInt(this.mapFeaturesCanRun);
        dest.writeLong(this.requestTimeout);
        dest.writeBundle(this.extras);
    }
}
