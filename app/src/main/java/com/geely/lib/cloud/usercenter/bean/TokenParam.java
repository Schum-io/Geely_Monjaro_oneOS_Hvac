package com.geely.lib.cloud.usercenter.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class TokenParam implements Parcelable {
    public static final Creator<TokenParam> CREATOR = new Creator<TokenParam>() { // from class: com.geely.lib.cloud.usercenter.bean.TokenParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TokenParam createFromParcel(Parcel in) {
            return new TokenParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TokenParam[] newArray(int size) {
            return new TokenParam[size];
        }
    };
    private String token;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public TokenParam() {
    }

    public TokenParam(String token) {
        this.token = token;
    }

    protected TokenParam(Parcel in) {
        this.token = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.token);
    }

    public String getToken() {
        return this.token;
    }

    public void setToken(String token) {
        this.token = token;
    }
}
