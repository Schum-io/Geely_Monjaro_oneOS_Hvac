package com.geely.lib.oneosapi.user.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.user.api.IAccountInfo;

/* loaded from: classes.dex */
public class AccountInfo implements Parcelable, IAccountInfo {
    public static final Creator<AccountInfo> CREATOR = new Creator<AccountInfo>() { // from class: com.geely.lib.oneosapi.user.bean.AccountInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AccountInfo createFromParcel(Parcel source) {
            return new AccountInfo(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AccountInfo[] newArray(int size) {
            return new AccountInfo[size];
        }
    };
    public String deviceId;
    public String deviceVin;
    public String nickName;
    public String openId;
    public String token;

    public AccountInfo() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.geely.lib.oneosapi.user.api.IAccountInfo
    public String getDeviceId() {
        return this.deviceId;
    }

    @Override // com.geely.lib.oneosapi.user.api.IAccountInfo
    public String getDeviceVin() {
        return this.deviceVin;
    }

    @Override // com.geely.lib.oneosapi.user.api.IAccountInfo
    public String getNickName() {
        return this.nickName;
    }

    @Override // com.geely.lib.oneosapi.user.api.IAccountInfo
    public String getOpenId() {
        return this.openId;
    }

    @Override // com.geely.lib.oneosapi.user.api.IAccountInfo
    public String getToken() {
        return this.token;
    }

    public void readFromParcel(Parcel source) {
        this.deviceVin = source.readString();
        this.deviceId = source.readString();
        this.openId = source.readString();
        this.nickName = source.readString();
        this.token = source.readString();
    }

    public void setDeviceId(String deviceId) {
        this.deviceId = deviceId;
    }

    public void setDeviceVin(String deviceVin) {
        this.deviceVin = deviceVin;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public void setOpenId(String openId) {
        this.openId = openId;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String toString() {
        return "AccountInfo{deviceVin='" + this.deviceVin + "', deviceId='" + this.deviceId + "', openId='" + this.openId + "', nickName='" + this.nickName + "', token='" + this.token + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.deviceVin);
        dest.writeString(this.deviceId);
        dest.writeString(this.openId);
        dest.writeString(this.nickName);
        dest.writeString(this.token);
    }

    public AccountInfo(String deviceVin, String deviceId, String openId, String nickName, String token) {
        this.deviceVin = deviceVin;
        this.deviceId = deviceId;
        this.openId = openId;
        this.nickName = nickName;
        this.token = token;
    }

    public AccountInfo(Parcel in) {
        this.deviceVin = in.readString();
        this.deviceId = in.readString();
        this.openId = in.readString();
        this.nickName = in.readString();
        this.token = in.readString();
    }
}
