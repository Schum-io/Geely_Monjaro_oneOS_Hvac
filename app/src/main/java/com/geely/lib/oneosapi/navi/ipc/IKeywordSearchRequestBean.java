package com.geely.lib.oneosapi.navi.ipc;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class IKeywordSearchRequestBean implements Parcelable {
    public static final Creator<IKeywordSearchRequestBean> CREATOR = new Creator<IKeywordSearchRequestBean>() { // from class: com.geely.lib.oneosapi.navi.ipc.IKeywordSearchRequestBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IKeywordSearchRequestBean createFromParcel(Parcel in) {
            return new IKeywordSearchRequestBean(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IKeywordSearchRequestBean[] newArray(int size) {
            return new IKeywordSearchRequestBean[size];
        }
    };
    private String city;
    private Bundle extras;
    private String keyword;
    private IPoiTypeBean poiType;
    private long requestTimeout;

    public IKeywordSearchRequestBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getCity() {
        return this.city;
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

    public void readFromParcel(Parcel in) {
        this.keyword = in.readString();
        this.city = in.readString();
        this.poiType = (IPoiTypeBean) in.readParcelable(IPoiTypeBean.class.getClassLoader());
        this.requestTimeout = in.readLong();
        this.extras = in.readBundle(Bundle.class.getClassLoader());
    }

    public void setCity(String city) {
        this.city = city;
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

    public String toString() {
        return "IKeywordSearchRequestBean{keyword='" + this.keyword + "', city='" + this.city + "', poiType=" + this.poiType + ", requestTimeout=" + this.requestTimeout + ", extras=" + this.extras + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.keyword);
        dest.writeString(this.city);
        dest.writeParcelable(this.poiType, flags);
        dest.writeLong(this.requestTimeout);
        dest.writeBundle(this.extras);
    }

    public IKeywordSearchRequestBean(Parcel in) {
        this.keyword = in.readString();
        this.city = in.readString();
        this.poiType = (IPoiTypeBean) in.readParcelable(IPoiTypeBean.class.getClassLoader());
        this.requestTimeout = in.readLong();
        this.extras = in.readBundle(Bundle.class.getClassLoader());
    }
}
