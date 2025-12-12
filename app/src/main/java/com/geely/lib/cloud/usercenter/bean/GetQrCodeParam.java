package com.geely.lib.cloud.usercenter.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class GetQrCodeParam implements Parcelable {
    public static final Creator<GetQrCodeParam> CREATOR = new Creator<GetQrCodeParam>() { // from class: com.geely.lib.cloud.usercenter.bean.GetQrCodeParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GetQrCodeParam createFromParcel(Parcel in) {
            return new GetQrCodeParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GetQrCodeParam[] newArray(int size) {
            return new GetQrCodeParam[size];
        }
    };
    private String ihuId;
    private String ihuRomVersion;
    private String ihuUserAppVersion;
    private String modelCode;
    private String modelName;
    private String seriesCode;
    private String seriesName;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public GetQrCodeParam() {
    }

    public GetQrCodeParam(String ihuId, String ihuRomVersion, String ihuUserAppVersion, String modelCode, String modelName, String seriesCode, String seriesName) {
        this.ihuId = ihuId;
        this.ihuRomVersion = ihuRomVersion;
        this.ihuUserAppVersion = ihuUserAppVersion;
        this.modelCode = modelCode;
        this.modelName = modelName;
        this.seriesCode = seriesCode;
        this.seriesName = seriesName;
    }

    protected GetQrCodeParam(Parcel in) {
        this.ihuId = in.readString();
        this.ihuRomVersion = in.readString();
        this.ihuUserAppVersion = in.readString();
        this.modelCode = in.readString();
        this.modelName = in.readString();
        this.seriesCode = in.readString();
        this.seriesName = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.ihuId);
        dest.writeString(this.ihuRomVersion);
        dest.writeString(this.ihuUserAppVersion);
        dest.writeString(this.modelCode);
        dest.writeString(this.modelName);
        dest.writeString(this.seriesCode);
        dest.writeString(this.seriesName);
    }

    public String getIhuId() {
        return this.ihuId;
    }

    public void setIhuId(String ihuId) {
        this.ihuId = ihuId;
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
}
