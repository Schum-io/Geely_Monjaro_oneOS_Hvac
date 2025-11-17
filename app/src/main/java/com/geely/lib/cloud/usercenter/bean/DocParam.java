package com.geely.lib.cloud.usercenter.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class DocParam implements Parcelable {
    public static final Creator<DocParam> CREATOR = new Creator<DocParam>() { // from class: com.geely.lib.cloud.usercenter.bean.DocParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DocParam createFromParcel(Parcel in) {
            return new DocParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DocParam[] newArray(int size) {
            return new DocParam[size];
        }
    };
    private String docType;
    private String docVersion;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public DocParam() {
    }

    protected DocParam(Parcel in) {
        this.docType = in.readString();
        this.docVersion = in.readString();
    }

    public DocParam(String docType, String docVersion) {
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

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.docType);
        dest.writeString(this.docVersion);
    }
}
