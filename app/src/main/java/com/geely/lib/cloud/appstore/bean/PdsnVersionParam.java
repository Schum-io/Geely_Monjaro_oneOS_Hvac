package com.geely.lib.cloud.appstore.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class PdsnVersionParam implements Parcelable {
    public static final Creator<PdsnVersionParam> CREATOR = new Creator<PdsnVersionParam>() { // from class: com.geely.lib.cloud.appstore.bean.PdsnVersionParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PdsnVersionParam createFromParcel(Parcel in) {
            return new PdsnVersionParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PdsnVersionParam[] newArray(int size) {
            return new PdsnVersionParam[size];
        }
    };
    private Integer version;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public PdsnVersionParam() {
    }

    protected PdsnVersionParam(Parcel in) {
        this.vin = in.readString();
        if (in.readByte() == 0) {
            this.version = null;
        } else {
            this.version = Integer.valueOf(in.readInt());
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.vin);
        if (this.version == null) {
            dest.writeByte((byte) 0);
        } else {
            dest.writeByte((byte) 1);
            dest.writeInt(this.version.intValue());
        }
    }

    public String getVin() {
        return this.vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }

    public Integer getVersion() {
        return this.version;
    }

    public void setVersion(Integer version) {
        this.version = version;
    }
}
