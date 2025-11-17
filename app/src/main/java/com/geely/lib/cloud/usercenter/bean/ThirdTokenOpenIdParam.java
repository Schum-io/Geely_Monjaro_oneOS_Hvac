package com.geely.lib.cloud.usercenter.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ThirdTokenOpenIdParam implements Parcelable {
    public static final Creator<ThirdTokenOpenIdParam> CREATOR = new Creator<ThirdTokenOpenIdParam>() { // from class: com.geely.lib.cloud.usercenter.bean.ThirdTokenOpenIdParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ThirdTokenOpenIdParam createFromParcel(Parcel in) {
            return new ThirdTokenOpenIdParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ThirdTokenOpenIdParam[] newArray(int size) {
            return new ThirdTokenOpenIdParam[size];
        }
    };
    private String thirdOpenId;
    private String thirdToken;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ThirdTokenOpenIdParam() {
    }

    public ThirdTokenOpenIdParam(String thirdToken, String thirdOpenId) {
        this.thirdToken = thirdToken;
        this.thirdOpenId = thirdOpenId;
    }

    protected ThirdTokenOpenIdParam(Parcel in) {
        this.thirdToken = in.readString();
        this.thirdOpenId = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.thirdToken);
        dest.writeString(this.thirdOpenId);
    }

    public String getThirdToken() {
        return this.thirdToken;
    }

    public void setThirdToken(String thirdToken) {
        this.thirdToken = thirdToken;
    }

    public String getThirdOpenId() {
        return this.thirdOpenId;
    }

    public void setThirdOpenId(String thirdOpenId) {
        this.thirdOpenId = thirdOpenId;
    }
}
