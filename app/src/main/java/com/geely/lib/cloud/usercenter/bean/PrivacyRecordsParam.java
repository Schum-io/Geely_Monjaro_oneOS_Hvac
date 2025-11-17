package com.geely.lib.cloud.usercenter.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class PrivacyRecordsParam implements Parcelable {
    public static final Creator<PrivacyRecordsParam> CREATOR = new Creator<PrivacyRecordsParam>() { // from class: com.geely.lib.cloud.usercenter.bean.PrivacyRecordsParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrivacyRecordsParam createFromParcel(Parcel in) {
            return new PrivacyRecordsParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrivacyRecordsParam[] newArray(int size) {
            return new PrivacyRecordsParam[size];
        }
    };
    private String agreementType;
    private String agreementVersion;
    private String confirmTime;
    private String dhuId;
    private String ihuId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public PrivacyRecordsParam() {
    }

    public PrivacyRecordsParam(String agreementType, String agreementVersion, String dhuId, String ihuId, String confirmTime) {
        this.agreementType = agreementType;
        this.agreementVersion = agreementVersion;
        this.dhuId = dhuId;
        this.ihuId = ihuId;
        this.confirmTime = confirmTime;
    }

    public String getAgreementType() {
        return this.agreementType;
    }

    public void setAgreementType(String agreementType) {
        this.agreementType = agreementType;
    }

    public String getAgreementVersion() {
        return this.agreementVersion;
    }

    public void setAgreementVersion(String agreementVersion) {
        this.agreementVersion = agreementVersion;
    }

    public String getDhuId() {
        return this.dhuId;
    }

    public void setDhuId(String dhuId) {
        this.dhuId = dhuId;
    }

    public String getIhuId() {
        return this.ihuId;
    }

    public void setIhuId(String ihuId) {
        this.ihuId = ihuId;
    }

    public String getConfirmTime() {
        return this.confirmTime;
    }

    public void setConfirmTime(String confirmTime) {
        this.confirmTime = confirmTime;
    }

    protected PrivacyRecordsParam(Parcel in) {
        this.agreementType = in.readString();
        this.agreementVersion = in.readString();
        this.dhuId = in.readString();
        this.ihuId = in.readString();
        this.confirmTime = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.agreementType);
        dest.writeString(this.agreementVersion);
        dest.writeString(this.dhuId);
        dest.writeString(this.ihuId);
        dest.writeString(this.confirmTime);
    }
}
