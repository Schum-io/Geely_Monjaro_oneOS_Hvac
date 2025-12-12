package com.geely.lib.cloud.maintain.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class LocalDateParam implements Parcelable {
    public static final Creator<LocalDateParam> CREATOR = new Creator<LocalDateParam>() { // from class: com.geely.lib.cloud.maintain.bean.LocalDateParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LocalDateParam createFromParcel(Parcel in) {
            return new LocalDateParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LocalDateParam[] newArray(int size) {
            return new LocalDateParam[size];
        }
    };
    private String localDate;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public LocalDateParam(String localDate) {
        this.localDate = localDate;
    }

    public LocalDateParam() {
    }

    protected LocalDateParam(Parcel in) {
        this.localDate = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.localDate);
    }

    public String getLocalDate() {
        return this.localDate;
    }

    public void setLocalDate(String localDate) {
        this.localDate = localDate;
    }
}
