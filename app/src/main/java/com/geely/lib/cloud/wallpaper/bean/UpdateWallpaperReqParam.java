package com.geely.lib.cloud.wallpaper.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class UpdateWallpaperReqParam implements Parcelable {
    public static final Creator<UpdateWallpaperReqParam> CREATOR = new Creator<UpdateWallpaperReqParam>() { // from class: com.geely.lib.cloud.wallpaper.bean.UpdateWallpaperReqParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UpdateWallpaperReqParam createFromParcel(Parcel in) {
            return new UpdateWallpaperReqParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UpdateWallpaperReqParam[] newArray(int size) {
            return new UpdateWallpaperReqParam[size];
        }
    };
    private String resId;
    private String resTypeCode;
    private String screenType;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public UpdateWallpaperReqParam() {
    }

    protected UpdateWallpaperReqParam(Parcel in) {
        this.resTypeCode = in.readString();
        this.resId = in.readString();
        this.screenType = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.resTypeCode);
        dest.writeString(this.resId);
        dest.writeString(this.screenType);
    }

    public String getResTypeCode() {
        return this.resTypeCode;
    }

    public void setResTypeCode(String resTypeCode) {
        this.resTypeCode = resTypeCode;
    }

    public String getResId() {
        return this.resId;
    }

    public void setResId(String resId) {
        this.resId = resId;
    }

    public String getScreenType() {
        return this.screenType;
    }

    public void setScreenType(String screenType) {
        this.screenType = screenType;
    }
}
