package com.geely.lib.cloud.usercenter.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class UserIdParam implements Parcelable {
    public static final Creator<UserIdParam> CREATOR = new Creator<UserIdParam>() { // from class: com.geely.lib.cloud.usercenter.bean.UserIdParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UserIdParam createFromParcel(Parcel in) {
            return new UserIdParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UserIdParam[] newArray(int size) {
            return new UserIdParam[size];
        }
    };
    private String userId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public UserIdParam() {
    }

    public UserIdParam(String userId) {
        this.userId = userId;
    }

    protected UserIdParam(Parcel in) {
        this.userId = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.userId);
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }
}
