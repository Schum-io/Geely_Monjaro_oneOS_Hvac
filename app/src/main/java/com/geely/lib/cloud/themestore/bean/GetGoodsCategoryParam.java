package com.geely.lib.cloud.themestore.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class GetGoodsCategoryParam implements Parcelable {
    public static final Creator<GetGoodsCategoryParam> CREATOR = new Creator<GetGoodsCategoryParam>() { // from class: com.geely.lib.cloud.themestore.bean.GetGoodsCategoryParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GetGoodsCategoryParam createFromParcel(Parcel in) {
            return new GetGoodsCategoryParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GetGoodsCategoryParam[] newArray(int size) {
            return new GetGoodsCategoryParam[size];
        }
    };
    private String modelType;
    private int type;
    private String version;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public GetGoodsCategoryParam() {
    }

    public GetGoodsCategoryParam(String vin, String version, String modelType, int type) {
        this.vin = vin;
        this.version = version;
        this.modelType = modelType;
        this.type = type;
    }

    protected GetGoodsCategoryParam(Parcel in) {
        this.vin = in.readString();
        this.version = in.readString();
        this.modelType = in.readString();
        this.type = in.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.vin);
        dest.writeString(this.version);
        dest.writeString(this.modelType);
        dest.writeInt(this.type);
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

    public int getType() {
        return this.type;
    }

    public void setType(int type) {
        this.type = type;
    }
}
