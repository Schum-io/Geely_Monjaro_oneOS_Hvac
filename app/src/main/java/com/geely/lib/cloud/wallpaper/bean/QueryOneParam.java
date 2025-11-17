package com.geely.lib.cloud.wallpaper.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public class QueryOneParam implements Parcelable {
    public static final Creator<QueryOneParam> CREATOR = new Creator<QueryOneParam>() { // from class: com.geely.lib.cloud.wallpaper.bean.QueryOneParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public QueryOneParam createFromParcel(Parcel in) {
            return new QueryOneParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public QueryOneParam[] newArray(int size) {
            return new QueryOneParam[size];
        }
    };
    private List<UpdateWallpaperReqParam> resources;
    private String time;
    private String weather;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public QueryOneParam() {
    }

    protected QueryOneParam(Parcel in) {
        this.time = in.readString();
        this.weather = in.readString();
        this.resources = in.createTypedArrayList(UpdateWallpaperReqParam.CREATOR);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.time);
        dest.writeString(this.weather);
        dest.writeTypedList(this.resources);
    }

    public String getTime() {
        return this.time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getWeather() {
        return this.weather;
    }

    public void setWeather(String weather) {
        this.weather = weather;
    }

    public List<UpdateWallpaperReqParam> getResources() {
        return this.resources;
    }

    public void setResources(List<UpdateWallpaperReqParam> resources) {
        this.resources = resources;
    }
}
