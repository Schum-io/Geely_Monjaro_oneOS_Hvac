package com.geely.lib.cloud.payment.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class VinParam implements Parcelable {
    public static final Creator<VinParam> CREATOR = new Creator<VinParam>() { // from class: com.geely.lib.cloud.payment.bean.VinParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VinParam createFromParcel(Parcel in) {
            return new VinParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VinParam[] newArray(int size) {
            return new VinParam[size];
        }
    };
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public VinParam() {
    }

    public VinParam(String vin) {
        this.vin = vin;
    }

    protected VinParam(Parcel in) {
        this.vin = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.vin);
    }

    public String getVin() {
        return this.vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }
}
