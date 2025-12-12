package com.geely.lib.cloud.usercenter.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class RecordsParam implements Parcelable {
    public static final Creator<RecordsParam> CREATOR = new Creator<RecordsParam>() { // from class: com.geely.lib.cloud.usercenter.bean.RecordsParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RecordsParam createFromParcel(Parcel in) {
            return new RecordsParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RecordsParam[] newArray(int size) {
            return new RecordsParam[size];
        }
    };
    private String confirmTime;
    private String dhuid;
    private String docType;
    private String docVersion;
    private String eduid;
    private String model;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public RecordsParam() {
    }

    public RecordsParam(String docType, String docVersion, String dhuid, String eduid, String model, String confirmTime) {
        this.docType = docType;
        this.docVersion = docVersion;
        this.dhuid = dhuid;
        this.eduid = eduid;
        this.model = model;
        this.confirmTime = confirmTime;
    }

    protected RecordsParam(Parcel in) {
        this.docType = in.readString();
        this.docVersion = in.readString();
        this.dhuid = in.readString();
        this.eduid = in.readString();
        this.model = in.readString();
        this.confirmTime = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.docType);
        dest.writeString(this.docVersion);
        dest.writeString(this.dhuid);
        dest.writeString(this.eduid);
        dest.writeString(this.model);
        dest.writeString(this.confirmTime);
    }

    public String getConfirmTime() {
        return this.confirmTime;
    }

    public void setConfirmTime(String confirmTime) {
        this.confirmTime = confirmTime;
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

    public String getDhuid() {
        return this.dhuid;
    }

    public void setDhuid(String dhuid) {
        this.dhuid = dhuid;
    }

    public String getEduid() {
        return this.eduid;
    }

    public void setEduid(String eduid) {
        this.eduid = eduid;
    }

    public String getModel() {
        return this.model;
    }

    public void setModel(String model) {
        this.model = model;
    }
}
