package com.geely.lib.cloud.appstore.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class PdsnKeyNewParam implements Parcelable {
    public static final Creator<PdsnKeyNewParam> CREATOR = new Creator<PdsnKeyNewParam>() { // from class: com.geely.lib.cloud.appstore.bean.PdsnKeyNewParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PdsnKeyNewParam createFromParcel(Parcel in) {
            return new PdsnKeyNewParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PdsnKeyNewParam[] newArray(int size) {
            return new PdsnKeyNewParam[size];
        }
    };
    private String keyWord;
    private String screen;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public PdsnKeyNewParam() {
    }

    public PdsnKeyNewParam(String pdsn, String keyword) {
        this.vin = pdsn;
        this.keyWord = keyword;
    }

    public PdsnKeyNewParam(String vin, String keyWord, String screen) {
        this.vin = vin;
        this.keyWord = keyWord;
        this.screen = screen;
    }

    protected PdsnKeyNewParam(Parcel in) {
        this.vin = in.readString();
        this.keyWord = in.readString();
        this.screen = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.vin);
        dest.writeString(this.keyWord);
        dest.writeString(this.screen);
    }

    public String getScreen() {
        return this.screen;
    }

    public void setScreen(String screen) {
        this.screen = screen;
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
