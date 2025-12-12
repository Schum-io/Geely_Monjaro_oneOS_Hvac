package com.geely.lib.cloud.appstore.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class PdsnParam implements Parcelable {
    public static final Creator<PdsnParam> CREATOR = new Creator<PdsnParam>() { // from class: com.geely.lib.cloud.appstore.bean.PdsnParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PdsnParam createFromParcel(Parcel in) {
            return new PdsnParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PdsnParam[] newArray(int size) {
            return new PdsnParam[size];
        }
    };
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public PdsnParam() {
    }

    public PdsnParam(String pdsn) {
        this.vin = pdsn;
    }

    protected PdsnParam(Parcel in) {
        this.vin = in.readString();
    }

    public String getVin() {
        return this.vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.vin);
    }
}
