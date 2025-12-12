package com.geely.lib.cloud.usercenter.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class RefreshTokenParam1 implements Parcelable {
    public static final Creator<RefreshTokenParam1> CREATOR = new Creator<RefreshTokenParam1>() { // from class: com.geely.lib.cloud.usercenter.bean.RefreshTokenParam1.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RefreshTokenParam1 createFromParcel(Parcel in) {
            return new RefreshTokenParam1(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RefreshTokenParam1[] newArray(int size) {
            return new RefreshTokenParam1[size];
        }
    };
    private String refreshToken;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public RefreshTokenParam1() {
    }

    public RefreshTokenParam1(String refreshToken) {
        this.refreshToken = refreshToken;
    }

    protected RefreshTokenParam1(Parcel in) {
        this.refreshToken = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.refreshToken);
    }

    public String getRefreshToken() {
        return this.refreshToken;
    }

    public void setRefreshToken(String refreshToken) {
        this.refreshToken = refreshToken;
    }
}
