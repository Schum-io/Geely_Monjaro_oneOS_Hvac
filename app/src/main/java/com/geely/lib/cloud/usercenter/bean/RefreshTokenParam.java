package com.geely.lib.cloud.usercenter.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class RefreshTokenParam implements Parcelable {
    public static final Creator<RefreshTokenParam> CREATOR = new Creator<RefreshTokenParam>() { // from class: com.geely.lib.cloud.usercenter.bean.RefreshTokenParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RefreshTokenParam createFromParcel(Parcel in) {
            return new RefreshTokenParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RefreshTokenParam[] newArray(int size) {
            return new RefreshTokenParam[size];
        }
    };
    private String refreshToken;
    private String refreshTokenFlag;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public RefreshTokenParam(String refreshToken, String refreshTokenFlag) {
        this.refreshToken = refreshToken;
        this.refreshTokenFlag = refreshTokenFlag;
    }

    protected RefreshTokenParam(Parcel in) {
        this.refreshToken = in.readString();
        this.refreshTokenFlag = in.readString();
    }

    public String getRefreshToken() {
        return this.refreshToken;
    }

    public void setRefreshToken(String refreshToken) {
        this.refreshToken = refreshToken;
    }

    public String getRefreshTokenFlag() {
        return this.refreshTokenFlag;
    }

    public void setRefreshTokenFlag(String refreshTokenFlag) {
        this.refreshTokenFlag = refreshTokenFlag;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.refreshToken);
        dest.writeString(this.refreshTokenFlag);
    }
}
