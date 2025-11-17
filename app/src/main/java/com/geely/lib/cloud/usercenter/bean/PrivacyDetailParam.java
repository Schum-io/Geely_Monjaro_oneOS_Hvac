package com.geely.lib.cloud.usercenter.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class PrivacyDetailParam implements Parcelable {
    public static final Creator<PrivacyDetailParam> CREATOR = new Creator<PrivacyDetailParam>() { // from class: com.geely.lib.cloud.usercenter.bean.PrivacyDetailParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrivacyDetailParam createFromParcel(Parcel in) {
            return new PrivacyDetailParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrivacyDetailParam[] newArray(int size) {
            return new PrivacyDetailParam[size];
        }
    };
    private String docType;
    private String docVersion;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public PrivacyDetailParam() {
    }

    public PrivacyDetailParam(String docType, String docVersion) {
        this.docType = docType;
        this.docVersion = docVersion;
    }

    public String getDocType() {
        return this.docType;
    }

    public void setDocType(String docType) {
        this.docType = docType;
    }

    public String getDocVersion() {
        return this.docVersion;
    }

    public void setDocVersion(String docVersion) {
        this.docVersion = docVersion;
    }

    protected PrivacyDetailParam(Parcel in) {
        this.docType = in.readString();
        this.docVersion = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.docType);
        dest.writeString(this.docVersion);
    }
}
