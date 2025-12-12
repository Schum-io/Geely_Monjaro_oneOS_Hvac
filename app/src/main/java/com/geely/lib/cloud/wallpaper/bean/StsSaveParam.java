package com.geely.lib.cloud.wallpaper.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class StsSaveParam implements Parcelable {
    public static final Creator<StsSaveParam> CREATOR = new Creator<StsSaveParam>() { // from class: com.geely.lib.cloud.wallpaper.bean.StsSaveParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StsSaveParam createFromParcel(Parcel in) {
            return new StsSaveParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StsSaveParam[] newArray(int size) {
            return new StsSaveParam[size];
        }
    };
    private String fileName;
    private String fileUrl;
    private String serviceJson;
    private String sysKey;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public StsSaveParam() {
    }

    protected StsSaveParam(Parcel in) {
        this.fileName = in.readString();
        this.fileUrl = in.readString();
        this.serviceJson = in.readString();
        this.sysKey = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.fileName);
        dest.writeString(this.fileUrl);
        dest.writeString(this.serviceJson);
        dest.writeString(this.sysKey);
    }

    public String getFileName() {
        return this.fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getFileUrl() {
        return this.fileUrl;
    }

    public void setFileUrl(String fileUrl) {
        this.fileUrl = fileUrl;
    }

    public String getServiceJson() {
        return this.serviceJson;
    }

    public void setServiceJson(String serviceJson) {
        this.serviceJson = serviceJson;
    }

    public String getSysKey() {
        return this.sysKey;
    }

    public void setSysKey(String sysKey) {
        this.sysKey = sysKey;
    }
}
