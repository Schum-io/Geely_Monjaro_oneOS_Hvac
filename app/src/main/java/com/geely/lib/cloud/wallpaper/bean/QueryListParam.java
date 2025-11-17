package com.geely.lib.cloud.wallpaper.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class QueryListParam implements Parcelable {
    public static final Creator<QueryListParam> CREATOR = new Creator<QueryListParam>() { // from class: com.geely.lib.cloud.wallpaper.bean.QueryListParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public QueryListParam createFromParcel(Parcel in) {
            return new QueryListParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public QueryListParam[] newArray(int size) {
            return new QueryListParam[size];
        }
    };
    private int pageSize;
    private String time;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public QueryListParam(String time, int pageSize) {
        this.time = time;
        this.pageSize = pageSize;
    }

    public QueryListParam() {
    }

    protected QueryListParam(Parcel in) {
        this.time = in.readString();
        this.pageSize = in.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.time);
        dest.writeInt(this.pageSize);
    }

    public String getTime() {
        return this.time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getPageSize() {
        return this.pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
}
