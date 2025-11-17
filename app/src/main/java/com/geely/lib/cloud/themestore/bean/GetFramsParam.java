package com.geely.lib.cloud.themestore.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class GetFramsParam implements Parcelable {
    public static final Creator<GetFramsParam> CREATOR = new Creator<GetFramsParam>() { // from class: com.geely.lib.cloud.themestore.bean.GetFramsParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GetFramsParam createFromParcel(Parcel in) {
            return new GetFramsParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GetFramsParam[] newArray(int size) {
            return new GetFramsParam[size];
        }
    };
    private int frameType;
    private String modelType;
    private String version;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public GetFramsParam() {
    }

    public GetFramsParam(String vin, String version, String modelType, int frameType) {
        this.vin = vin;
        this.version = version;
        this.modelType = modelType;
        this.frameType = frameType;
    }

    protected GetFramsParam(Parcel in) {
        this.vin = in.readString();
        this.version = in.readString();
        this.modelType = in.readString();
        this.frameType = in.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.vin);
        dest.writeString(this.version);
        dest.writeString(this.modelType);
        dest.writeInt(this.frameType);
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

    public int getFrameType() {
        return this.frameType;
    }

    public void setFrameType(int frameType) {
        this.frameType = frameType;
    }
}
