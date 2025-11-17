package com.geely.lib.cloud.themestore.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class SearchGoodsParam implements Parcelable {
    public static final Creator<SearchGoodsParam> CREATOR = new Creator<SearchGoodsParam>() { // from class: com.geely.lib.cloud.themestore.bean.SearchGoodsParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SearchGoodsParam createFromParcel(Parcel in) {
            return new SearchGoodsParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SearchGoodsParam[] newArray(int size) {
            return new SearchGoodsParam[size];
        }
    };
    private Long cateId;
    private int current;
    private String modelType;
    private int size;
    private String tag;
    private int type;
    private String version;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public SearchGoodsParam() {
    }

    public SearchGoodsParam(String vin, String version, String modelType, String tag, int type, Long cateId, int size, int current) {
        this.vin = vin;
        this.version = version;
        this.modelType = modelType;
        this.tag = tag;
        this.type = type;
        this.cateId = cateId;
        this.size = size;
        this.current = current;
    }

    protected SearchGoodsParam(Parcel in) {
        this.vin = in.readString();
        this.version = in.readString();
        this.modelType = in.readString();
        this.tag = in.readString();
        this.type = in.readInt();
        if (in.readByte() == 0) {
            this.cateId = null;
        } else {
            this.cateId = Long.valueOf(in.readLong());
        }
        this.size = in.readInt();
        this.current = in.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.vin);
        dest.writeString(this.version);
        dest.writeString(this.modelType);
        dest.writeString(this.tag);
        dest.writeInt(this.type);
        if (this.cateId == null) {
            dest.writeByte((byte) 0);
        } else {
            dest.writeByte((byte) 1);
            dest.writeLong(this.cateId.longValue());
        }
        dest.writeInt(this.size);
        dest.writeInt(this.current);
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

    public String getTag() {
        return this.tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public int getType() {
        return this.type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public Long getCateId() {
        return this.cateId;
    }

    public void setCateId(Long cateId) {
        this.cateId = cateId;
    }

    public int getSize() {
        return this.size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public int getCurrent() {
        return this.current;
    }

    public void setCurrent(int current) {
        this.current = current;
    }
}
