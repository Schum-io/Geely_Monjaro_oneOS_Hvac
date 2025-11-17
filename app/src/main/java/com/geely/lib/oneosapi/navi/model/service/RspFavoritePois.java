package com.geely.lib.oneosapi.navi.model.service;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class RspFavoritePois extends NaviBaseModel implements Parcelable {
    public static final Creator<RspFavoritePois> CREATOR = new Creator<RspFavoritePois>() { // from class: com.geely.lib.oneosapi.navi.model.service.RspFavoritePois.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspFavoritePois createFromParcel(Parcel source) {
            return new RspFavoritePois(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspFavoritePois[] newArray(int size) {
            return new RspFavoritePois[size];
        }
    };
    private List<FavoritePoiInfo> favoritePoiInfoList;

    public RspFavoritePois(NaviBaseModel reqModel) {
        copyBaseInfo(reqModel);
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<FavoritePoiInfo> getFavoritePoiInfoList() {
        return this.favoritePoiInfoList;
    }

    public void setFavoritePoiInfoList(List<FavoritePoiInfo> favoritePoiInfoList) {
        this.favoritePoiInfoList = favoritePoiInfoList;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        StringBuilder sb = new StringBuilder("RspFavoritePois{");
        sb.append("favoritePoiInfoList=").append(this.favoritePoiInfoList);
        sb.append("{base=").append(super.toString()).append("}; ");
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeList(this.favoritePoiInfoList);
    }

    public RspFavoritePois(Parcel in) {
        super(in);
        ArrayList arrayList = new ArrayList();
        this.favoritePoiInfoList = arrayList;
        in.readList(arrayList, FavoritePoiInfo.class.getClassLoader());
    }
}
