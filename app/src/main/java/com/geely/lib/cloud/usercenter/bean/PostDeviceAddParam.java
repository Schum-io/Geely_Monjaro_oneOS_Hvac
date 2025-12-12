package com.geely.lib.cloud.usercenter.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class PostDeviceAddParam implements Parcelable {
    public static final Creator<PostDeviceAddParam> CREATOR = new Creator<PostDeviceAddParam>() { // from class: com.geely.lib.cloud.usercenter.bean.PostDeviceAddParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PostDeviceAddParam createFromParcel(Parcel in) {
            return new PostDeviceAddParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PostDeviceAddParam[] newArray(int size) {
            return new PostDeviceAddParam[size];
        }
    };
    private String dhuId;
    private String ihuId;
    private String ihuRomVersion;
    private String ihuUserAppVersion;
    private String modelCode;
    private String modelName;
    private String pcode;
    private String seriesCode;
    private String seriesName;
    private String sn;
    private String xdsn;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public PostDeviceAddParam() {
    }

    protected PostDeviceAddParam(Parcel in) {
        this.ihuId = in.readString();
        this.dhuId = in.readString();
        this.ihuRomVersion = in.readString();
        this.ihuUserAppVersion = in.readString();
        this.modelCode = in.readString();
        this.modelName = in.readString();
        this.seriesCode = in.readString();
        this.seriesName = in.readString();
        this.pcode = in.readString();
        this.xdsn = in.readString();
        this.sn = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.ihuId);
        dest.writeString(this.dhuId);
        dest.writeString(this.ihuRomVersion);
        dest.writeString(this.ihuUserAppVersion);
        dest.writeString(this.modelCode);
        dest.writeString(this.modelName);
        dest.writeString(this.seriesCode);
        dest.writeString(this.seriesName);
        dest.writeString(this.pcode);
        dest.writeString(this.xdsn);
        dest.writeString(this.sn);
    }

    public String getIhuId() {
        return this.ihuId;
    }

    public void setIhuId(String ihuId) {
        this.ihuId = ihuId;
    }

    public String getDhuId() {
        return this.dhuId;
    }

    public void setDhuId(String dhuId) {
        this.dhuId = dhuId;
    }

    public String getIhuRomVersion() {
        return this.ihuRomVersion;
    }

    public void setIhuRomVersion(String ihuRomVersion) {
        this.ihuRomVersion = ihuRomVersion;
    }

    public String getIhuUserAppVersion() {
        return this.ihuUserAppVersion;
    }

    public void setIhuUserAppVersion(String ihuUserAppVersion) {
        this.ihuUserAppVersion = ihuUserAppVersion;
    }

    public String getModelCode() {
        return this.modelCode;
    }

    public void setModelCode(String modelCode) {
        this.modelCode = modelCode;
    }

    public String getModelName() {
        return this.modelName;
    }

    public void setModelName(String modelName) {
        this.modelName = modelName;
    }

    public String getSeriesCode() {
        return this.seriesCode;
    }

    public void setSeriesCode(String seriesCode) {
        this.seriesCode = seriesCode;
    }

    public String getSeriesName() {
        return this.seriesName;
    }

    public void setSeriesName(String seriesName) {
        this.seriesName = seriesName;
    }

    public String getPcode() {
        return this.pcode;
    }

    public void setPcode(String pcode) {
        this.pcode = pcode;
    }

    public String getXdsn() {
        return this.xdsn;
    }

    public void setXdsn(String xdsn) {
        this.xdsn = xdsn;
    }

    public String getSn() {
        return this.sn;
    }

    public void setSn(String sn) {
        this.sn = sn;
    }
}
