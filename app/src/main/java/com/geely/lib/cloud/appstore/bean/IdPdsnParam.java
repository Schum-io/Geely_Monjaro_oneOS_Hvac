package com.geely.lib.cloud.appstore.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class IdPdsnParam implements Parcelable {
    public static final Creator<IdPdsnParam> CREATOR = new Creator<IdPdsnParam>() { // from class: com.geely.lib.cloud.appstore.bean.IdPdsnParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IdPdsnParam createFromParcel(Parcel in) {
            return new IdPdsnParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IdPdsnParam[] newArray(int size) {
            return new IdPdsnParam[size];
        }
    };
    private Long id;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public IdPdsnParam() {
    }

    public IdPdsnParam(Long id, String pdsn) {
        this.id = id;
        this.vin = pdsn;
    }

    protected IdPdsnParam(Parcel in) {
        if (in.readByte() == 0) {
            this.id = null;
        } else {
            this.id = Long.valueOf(in.readLong());
        }
        this.vin = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        if (this.id == null) {
            dest.writeByte((byte) 0);
        } else {
            dest.writeByte((byte) 1);
            dest.writeLong(this.id.longValue());
        }
        dest.writeString(this.vin);
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getVin() {
        return this.vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }
}
