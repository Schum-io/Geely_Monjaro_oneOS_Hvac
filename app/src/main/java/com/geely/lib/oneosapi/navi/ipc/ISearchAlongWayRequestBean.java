package com.geely.lib.oneosapi.navi.ipc;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ISearchAlongWayRequestBean implements Parcelable {
    public static final Creator<ISearchAlongWayRequestBean> CREATOR = new Creator<ISearchAlongWayRequestBean>() { // from class: com.geely.lib.oneosapi.navi.ipc.ISearchAlongWayRequestBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ISearchAlongWayRequestBean createFromParcel(Parcel in) {
            return new ISearchAlongWayRequestBean(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ISearchAlongWayRequestBean[] newArray(int size) {
            return new ISearchAlongWayRequestBean[size];
        }
    };
    private Bundle extras;
    private String keyword;
    private IPoiTypeBean poiType;
    private long requestTimeout;
    private int searchType;

    public ISearchAlongWayRequestBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Bundle getExtras() {
        return this.extras;
    }

    public String getKeyword() {
        return this.keyword;
    }

    public IPoiTypeBean getPoiType() {
        return this.poiType;
    }

    public long getRequestTimeout() {
        return this.requestTimeout;
    }

    public int getSearchType() {
        return this.searchType;
    }

    public void readFromParcel(Parcel in) {
        this.searchType = in.readInt();
        this.keyword = in.readString();
        this.poiType = (IPoiTypeBean) in.readParcelable(IPoiTypeBean.class.getClassLoader());
        this.requestTimeout = in.readLong();
        this.extras = in.readBundle(Bundle.class.getClassLoader());
    }

    public void setExtras(Bundle extras) {
        this.extras = extras;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public void setPoiType(IPoiTypeBean poiType) {
        this.poiType = poiType;
    }

    public void setRequestTimeout(long requestTimeout) {
        this.requestTimeout = requestTimeout;
    }

    public void setSearchType(int searchType) {
        this.searchType = searchType;
    }

    public String toString() {
        return "ISearchAlongWayRequestBean{searchType=" + this.searchType + ", keyword='" + this.keyword + "', poiType=" + this.poiType + ", requestTimeout=" + this.requestTimeout + ", extras=" + this.extras + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.searchType);
        dest.writeString(this.keyword);
        dest.writeParcelable(this.poiType, flags);
        dest.writeLong(this.requestTimeout);
        dest.writeBundle(this.extras);
    }

    public ISearchAlongWayRequestBean(Parcel in) {
        this.searchType = in.readInt();
        this.keyword = in.readString();
        this.poiType = (IPoiTypeBean) in.readParcelable(IPoiTypeBean.class.getClassLoader());
        this.requestTimeout = in.readLong();
        this.extras = in.readBundle(Bundle.class.getClassLoader());
    }
}
