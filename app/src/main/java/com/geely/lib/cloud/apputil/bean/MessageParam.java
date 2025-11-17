package com.geely.lib.cloud.apputil.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class MessageParam implements Parcelable {
    public static final Creator<MessageParam> CREATOR = new Creator<MessageParam>() { // from class: com.geely.lib.cloud.apputil.bean.MessageParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MessageParam createFromParcel(Parcel in) {
            return new MessageParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MessageParam[] newArray(int size) {
            return new MessageParam[size];
        }
    };
    private String packageName;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public MessageParam() {
    }

    public MessageParam(String vin, String packageName) {
        this.vin = vin;
        this.packageName = packageName;
    }

    protected MessageParam(Parcel in) {
        this.vin = in.readString();
        this.packageName = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.vin);
        dest.writeString(this.packageName);
    }

    public String getVin() {
        return this.vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }
}
