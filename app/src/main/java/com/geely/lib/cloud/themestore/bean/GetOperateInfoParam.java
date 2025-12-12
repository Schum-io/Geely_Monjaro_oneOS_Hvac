package com.geely.lib.cloud.themestore.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class GetOperateInfoParam implements Parcelable {
    public static final Creator<GetOperateInfoParam> CREATOR = new Creator<GetOperateInfoParam>() { // from class: com.geely.lib.cloud.themestore.bean.GetOperateInfoParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GetOperateInfoParam createFromParcel(Parcel in) {
            return new GetOperateInfoParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GetOperateInfoParam[] newArray(int size) {
            return new GetOperateInfoParam[size];
        }
    };
    private String frameId;
    private String modelType;
    private String version;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public GetOperateInfoParam() {
    }

    public GetOperateInfoParam(String vin, String version, String modelType, String frameId) {
        this.vin = vin;
        this.version = version;
        this.modelType = modelType;
        this.frameId = frameId;
    }

    protected GetOperateInfoParam(Parcel in) {
        this.vin = in.readString();
        this.version = in.readString();
        this.modelType = in.readString();
        this.frameId = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.vin);
        dest.writeString(this.version);
        dest.writeString(this.modelType);
        dest.writeString(this.frameId);
    }

    public String getVin() {
        return this.vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }

    public String getVersion() {
        return this.version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getModelType() {
        return this.modelType;
    }

    public void setModelType(String modelType) {
        this.modelType = modelType;
    }

    public String getFrameId() {
        return this.frameId;
    }

    public void setFrameId(String frameId) {
        this.frameId = frameId;
    }
}
