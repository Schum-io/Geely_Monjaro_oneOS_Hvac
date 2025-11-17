package com.geely.lib.cloud.appstore.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class PdsnKeyParam implements Parcelable {
    public static final Creator<PdsnKeyParam> CREATOR = new Creator<PdsnKeyParam>() { // from class: com.geely.lib.cloud.appstore.bean.PdsnKeyParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PdsnKeyParam createFromParcel(Parcel in) {
            return new PdsnKeyParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PdsnKeyParam[] newArray(int size) {
            return new PdsnKeyParam[size];
        }
    };
    private String keyWord;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public PdsnKeyParam() {
    }

    public PdsnKeyParam(String pdsn, String keyword) {
        this.vin = pdsn;
        this.keyWord = keyword;
    }

    protected PdsnKeyParam(Parcel in) {
        this.vin = in.readString();
        this.keyWord = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.vin);
        dest.writeString(this.keyWord);
    }

    public String getVin() {
        return this.vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }

    public String getKeyWord() {
        return this.keyWord;
    }

    public void setKeyWord(String keyWord) {
        this.keyWord = keyWord;
    }
}
