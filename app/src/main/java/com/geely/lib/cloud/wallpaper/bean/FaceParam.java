package com.geely.lib.cloud.wallpaper.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class FaceParam implements Parcelable {
    public static final Creator<FaceParam> CREATOR = new Creator<FaceParam>() { // from class: com.geely.lib.cloud.wallpaper.bean.FaceParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FaceParam createFromParcel(Parcel in) {
            return new FaceParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FaceParam[] newArray(int size) {
            return new FaceParam[size];
        }
    };
    private String content;
    private int faceId;
    private String thumbnail;
    private String userId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public FaceParam() {
    }

    protected FaceParam(Parcel in) {
        this.content = in.readString();
        this.faceId = in.readInt();
        this.thumbnail = in.readString();
        this.userId = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.content);
        dest.writeInt(this.faceId);
        dest.writeString(this.thumbnail);
        dest.writeString(this.userId);
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getFaceId() {
        return this.faceId;
    }

    public void setFaceId(int faceId) {
        this.faceId = faceId;
    }

    public String getThumbnail() {
        return this.thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }
}
