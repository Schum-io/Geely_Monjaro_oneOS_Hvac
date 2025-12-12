package com.geely.lib.cloud.themestore.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class OperateMoreInfoParam implements Parcelable {
    public static final Creator<OperateMoreInfoParam> CREATOR = new Creator<OperateMoreInfoParam>() { // from class: com.geely.lib.cloud.themestore.bean.OperateMoreInfoParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OperateMoreInfoParam createFromParcel(Parcel in) {
            return new OperateMoreInfoParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OperateMoreInfoParam[] newArray(int size) {
            return new OperateMoreInfoParam[size];
        }
    };
    private Integer current;
    private String modelType;
    private String operateId;
    private Integer size;
    private String version;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public OperateMoreInfoParam() {
    }

    public OperateMoreInfoParam(String vin, String version, String modelType, String operateId, Integer size, Integer current) {
        this.vin = vin;
        this.version = version;
        this.modelType = modelType;
        this.operateId = operateId;
        this.size = size;
        this.current = current;
    }

    protected OperateMoreInfoParam(Parcel in) {
        this.vin = in.readString();
        this.version = in.readString();
        this.modelType = in.readString();
        this.operateId = in.readString();
        if (in.readByte() == 0) {
            this.size = null;
        } else {
            this.size = Integer.valueOf(in.readInt());
        }
        if (in.readByte() == 0) {
            this.current = null;
        } else {
            this.current = Integer.valueOf(in.readInt());
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.vin);
        dest.writeString(this.version);
        dest.writeString(this.modelType);
        dest.writeString(this.operateId);
        if (this.size == null) {
            dest.writeByte((byte) 0);
        } else {
            dest.writeByte((byte) 1);
            dest.writeInt(this.size.intValue());
        }
        if (this.current == null) {
            dest.writeByte((byte) 0);
        } else {
            dest.writeByte((byte) 1);
            dest.writeInt(this.current.intValue());
        }
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

    public String getOperateId() {
        return this.operateId;
    }

    public void setOperateId(String operateId) {
        this.operateId = operateId;
    }

    public Integer getSize() {
        return this.size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    public Integer getCurrent() {
        return this.current;
    }

    public void setCurrent(Integer current) {
        this.current = current;
    }
}
