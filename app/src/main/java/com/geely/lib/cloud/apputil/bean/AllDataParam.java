package com.geely.lib.cloud.apputil.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class AllDataParam implements Parcelable {
    public static final Creator<AllDataParam> CREATOR = new Creator<AllDataParam>() { // from class: com.geely.lib.cloud.apputil.bean.AllDataParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AllDataParam createFromParcel(Parcel in) {
            return new AllDataParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AllDataParam[] newArray(int size) {
            return new AllDataParam[size];
        }
    };
    private String latitude;
    private String longitude;
    private String screen;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public AllDataParam() {
    }

    protected AllDataParam(Parcel in) {
        this.screen = in.readString();
        this.longitude = in.readString();
        this.latitude = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.screen);
        dest.writeString(this.longitude);
        dest.writeString(this.latitude);
    }

    public String getScreen() {
        return this.screen;
    }

    public void setScreen(String screen) {
        this.screen = screen;
    }

    public String getLongitude() {
        return this.longitude;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }

    public String getLatitude() {
        return this.latitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }
}
