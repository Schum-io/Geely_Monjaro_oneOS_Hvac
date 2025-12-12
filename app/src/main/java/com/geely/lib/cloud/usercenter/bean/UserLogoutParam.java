package com.geely.lib.cloud.usercenter.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class UserLogoutParam implements Parcelable {
    public static final Creator<UserLogoutParam> CREATOR = new Creator<UserLogoutParam>() { // from class: com.geely.lib.cloud.usercenter.bean.UserLogoutParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UserLogoutParam createFromParcel(Parcel in) {
            return new UserLogoutParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UserLogoutParam[] newArray(int size) {
            return new UserLogoutParam[size];
        }
    };
    private String logoutCode;
    private String refreshToken;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public UserLogoutParam() {
    }

    public UserLogoutParam(String refreshToken, String logoutCode) {
        this.refreshToken = refreshToken;
        this.logoutCode = logoutCode;
    }

    protected UserLogoutParam(Parcel in) {
        this.refreshToken = in.readString();
        this.logoutCode = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.refreshToken);
        dest.writeString(this.logoutCode);
    }

    public String getRefreshToken() {
        return this.refreshToken;
    }

    public void setRefreshToken(String refreshToken) {
        this.refreshToken = refreshToken;
    }

    public String getLogoutCode() {
        return this.logoutCode;
    }

    public void setLogoutCode(String logoutCode) {
        this.logoutCode = logoutCode;
    }
}
