package com.geely.lib.oneosapi.navi.model.service;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.PoiInfo;

/* loaded from: classes.dex */
public class FavoritePoiInfo implements Parcelable {
    public static final Creator<FavoritePoiInfo> CREATOR = new Creator<FavoritePoiInfo>() { // from class: com.geely.lib.oneosapi.navi.model.service.FavoritePoiInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FavoritePoiInfo createFromParcel(Parcel source) {
            return new FavoritePoiInfo(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FavoritePoiInfo[] newArray(int size) {
            return new FavoritePoiInfo[size];
        }
    };
    private int favoriteType;
    private PoiInfo poiInfo;

    public FavoritePoiInfo() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getFavoriteType() {
        return this.favoriteType;
    }

    public PoiInfo getPoiInfo() {
        return this.poiInfo;
    }

    public void setFavoriteType(int favoriteType) {
        this.favoriteType = favoriteType;
    }

    public void setPoiInfo(PoiInfo poiInfo) {
        this.poiInfo = poiInfo;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FavoritePoiInfo{");
        sb.append("favoriteType=").append(this.favoriteType);
        sb.append(", poiInfo=").append(this.poiInfo);
        sb.append('}');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.favoriteType);
        dest.writeParcelable(this.poiInfo, flags);
    }

    public FavoritePoiInfo(Parcel in) {
        this.favoriteType = in.readInt();
        this.poiInfo = (PoiInfo) in.readParcelable(PoiInfo.class.getClassLoader());
    }
}
