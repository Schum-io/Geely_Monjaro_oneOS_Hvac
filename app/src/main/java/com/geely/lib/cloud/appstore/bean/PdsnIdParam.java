package com.geely.lib.cloud.appstore.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class PdsnIdParam implements Parcelable {
    public static final Creator<PdsnIdParam> CREATOR = new Creator<PdsnIdParam>() { // from class: com.geely.lib.cloud.appstore.bean.PdsnIdParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PdsnIdParam createFromParcel(Parcel in) {
            return new PdsnIdParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PdsnIdParam[] newArray(int size) {
            return new PdsnIdParam[size];
        }
    };
    private Long id;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public PdsnIdParam() {
    }

    public PdsnIdParam(String pdsn, Long id) {
        this.vin = pdsn;
        this.id = id;
    }

    protected PdsnIdParam(Parcel in) {
        this.vin = in.readString();
        this.id = Long.valueOf(in.readLong());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.vin);
        dest.writeLong(this.id.longValue());
    }

    public String getVin() {
        return this.vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
