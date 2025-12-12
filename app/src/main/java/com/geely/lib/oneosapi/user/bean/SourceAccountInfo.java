package com.geely.lib.oneosapi.user.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.user.api.ISourceAccountInfo;

/* loaded from: classes.dex */
public class SourceAccountInfo implements Parcelable, ISourceAccountInfo {
    public static final Creator<SourceAccountInfo> CREATOR = new Creator<SourceAccountInfo>() { // from class: com.geely.lib.oneosapi.user.bean.SourceAccountInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SourceAccountInfo createFromParcel(Parcel source) {
            return new SourceAccountInfo(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SourceAccountInfo[] newArray(int size) {
            return new SourceAccountInfo[size];
        }
    };
    public String accountAvatar;
    public int accountLoginStatus;
    public String bindingAck;
    public String bindingId;
    public String carLoginEnvironment;
    public String deviceId;
    public String deviceNo;
    public String sourceAccount;
    public String sourceAccountId;
    public String sourceAccountName;
    public String sourceAccountToken;
    public String sourceApp;
    public String sourceAppName;
    public String sourceAutoAccount;
    public String userRequestTime;

    public SourceAccountInfo() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.geely.lib.oneosapi.user.api.ISourceAccountInfo
    public String getAccountAvatar() {
        return this.accountAvatar;
    }

    @Override // com.geely.lib.oneosapi.user.api.ISourceAccountInfo
    public int getAccountLoginStatus() {
        return this.accountLoginStatus;
    }

    @Override // com.geely.lib.oneosapi.user.api.ISourceAccountInfo
    public String getBindingAck() {
        return this.bindingAck;
    }

    @Override // com.geely.lib.oneosapi.user.api.ISourceAccountInfo
    public String getBindingId() {
        return this.bindingId;
    }

    @Override // com.geely.lib.oneosapi.user.api.ISourceAccountInfo
    public String getCarLoginEnvironment() {
        return this.carLoginEnvironment;
    }

    @Override // com.geely.lib.oneosapi.user.api.ISourceAccountInfo
    public String getDeviceId() {
        return this.deviceId;
    }

    @Override // com.geely.lib.oneosapi.user.api.ISourceAccountInfo
    public String getDeviceNo() {
        return this.deviceNo;
    }

    @Override // com.geely.lib.oneosapi.user.api.ISourceAccountInfo
    public String getSourceAccount() {
        return this.sourceAccount;
    }

    @Override // com.geely.lib.oneosapi.user.api.ISourceAccountInfo
    public String getSourceAccountId() {
        return this.sourceAccountId;
    }

    @Override // com.geely.lib.oneosapi.user.api.ISourceAccountInfo
    public String getSourceAccountName() {
        return this.sourceAccountName;
    }

    @Override // com.geely.lib.oneosapi.user.api.ISourceAccountInfo
    public String getSourceAccountToken() {
        return this.sourceAccountToken;
    }

    @Override // com.geely.lib.oneosapi.user.api.ISourceAccountInfo
    public String getSourceApp() {
        return this.sourceApp;
    }

    @Override // com.geely.lib.oneosapi.user.api.ISourceAccountInfo
    public String getSourceAppName() {
        return this.sourceAppName;
    }

    @Override // com.geely.lib.oneosapi.user.api.ISourceAccountInfo
    public String getSourceAutoAccount() {
        return this.sourceAutoAccount;
    }

    @Override // com.geely.lib.oneosapi.user.api.ISourceAccountInfo
    public String getUserRequestTime() {
        return this.userRequestTime;
    }

    public void readFromParcel(Parcel source) {
        this.sourceApp = source.readString();
        this.sourceAppName = source.readString();
        this.accountLoginStatus = source.readInt();
        this.sourceAccountToken = source.readString();
        this.sourceAutoAccount = source.readString();
        this.sourceAccount = source.readString();
        this.deviceId = source.readString();
        this.deviceNo = source.readString();
        this.sourceAccountId = source.readString();
        this.sourceAccountName = source.readString();
        this.accountAvatar = source.readString();
        this.userRequestTime = source.readString();
        this.bindingId = source.readString();
        this.bindingAck = source.readString();
        this.carLoginEnvironment = source.readString();
    }

    public void setAccountAvatar(String accountAvatar) {
        this.accountAvatar = accountAvatar;
    }

    public void setAccountLoginStatus(int accountLoginStatus) {
        this.accountLoginStatus = accountLoginStatus;
    }

    public void setBindingAck(String bindingAck) {
        this.bindingAck = bindingAck;
    }

    public void setBindingId(String bindingId) {
        this.bindingId = bindingId;
    }

    public void setCarLoginEnvironment(String carLoginEnvironment) {
        this.carLoginEnvironment = carLoginEnvironment;
    }

    public void setDeviceId(String deviceId) {
        this.deviceId = deviceId;
    }

    public void setDeviceNo(String deviceNo) {
        this.deviceNo = deviceNo;
    }

    public void setSourceAccount(String sourceAccount) {
        this.sourceAccount = sourceAccount;
    }

    public void setSourceAccountId(String sourceAccountId) {
        this.sourceAccountId = sourceAccountId;
    }

    public void setSourceAccountName(String sourceAccountName) {
        this.sourceAccountName = sourceAccountName;
    }

    public void setSourceAccountToken(String sourceAccountToken) {
        this.sourceAccountToken = sourceAccountToken;
    }

    public void setSourceApp(String sourceApp) {
        this.sourceApp = sourceApp;
    }

    public void setSourceAppName(String sourceAppName) {
        this.sourceAppName = sourceAppName;
    }

    public void setSourceAutoAccount(String sourceAutoAccount) {
        this.sourceAutoAccount = sourceAutoAccount;
    }

    public void setUserRequestTime(String userRequestTime) {
        this.userRequestTime = userRequestTime;
    }

    public String toString() {
        return "SourceAccountInfo{sourceApp='" + this.sourceApp + "', sourceAppName='" + this.sourceAppName + "', accountLoginStatus=" + this.accountLoginStatus + ", sourceAccountToken='" + this.sourceAccountToken + "', sourceAutoAccount='" + this.sourceAutoAccount + "', sourceAccount='" + this.sourceAccount + "', deviceId='" + this.deviceId + "', deviceNo='" + this.deviceNo + "', sourceAccountId='" + this.sourceAccountId + "', sourceAccountName='" + this.sourceAccountName + "', accountAvatar='" + this.accountAvatar + "', userRequestTime='" + this.userRequestTime + "', bindingId='" + this.bindingId + "', bindingAck='" + this.bindingAck + "', carLoginEnvironment='" + this.carLoginEnvironment + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.sourceApp);
        dest.writeString(this.sourceAppName);
        dest.writeInt(this.accountLoginStatus);
        dest.writeString(this.sourceAccountToken);
        dest.writeString(this.sourceAutoAccount);
        dest.writeString(this.sourceAccount);
        dest.writeString(this.deviceId);
        dest.writeString(this.deviceNo);
        dest.writeString(this.sourceAccountId);
        dest.writeString(this.sourceAccountName);
        dest.writeString(this.accountAvatar);
        dest.writeString(this.userRequestTime);
        dest.writeString(this.bindingId);
        dest.writeString(this.bindingAck);
        dest.writeString(this.carLoginEnvironment);
    }

    public SourceAccountInfo(String sourceApp, String sourceAppName, int accountLoginStatus, String sourceAccountToken, String sourceAutoAccount, String sourceAccount, String deviceId, String deviceNo, String sourceAccountId, String sourceAccountName, String accountAvatar, String userRequestTime, String bindingId, String bindingAck, String carLoginEnvironment) {
        this.sourceApp = sourceApp;
        this.sourceAppName = sourceAppName;
        this.accountLoginStatus = accountLoginStatus;
        this.sourceAccountToken = sourceAccountToken;
        this.sourceAutoAccount = sourceAutoAccount;
        this.sourceAccount = sourceAccount;
        this.deviceId = deviceId;
        this.deviceNo = deviceNo;
        this.sourceAccountId = sourceAccountId;
        this.sourceAccountName = sourceAccountName;
        this.accountAvatar = accountAvatar;
        this.userRequestTime = userRequestTime;
        this.bindingId = bindingId;
        this.bindingAck = bindingAck;
        this.carLoginEnvironment = carLoginEnvironment;
    }

    public SourceAccountInfo(Parcel in) {
        this.sourceApp = in.readString();
        this.sourceAppName = in.readString();
        this.accountLoginStatus = in.readInt();
        this.sourceAccountToken = in.readString();
        this.sourceAutoAccount = in.readString();
        this.sourceAccount = in.readString();
        this.deviceId = in.readString();
        this.deviceNo = in.readString();
        this.sourceAccountId = in.readString();
        this.sourceAccountName = in.readString();
        this.accountAvatar = in.readString();
        this.userRequestTime = in.readString();
        this.bindingId = in.readString();
        this.bindingAck = in.readString();
        this.carLoginEnvironment = in.readString();
    }
}
