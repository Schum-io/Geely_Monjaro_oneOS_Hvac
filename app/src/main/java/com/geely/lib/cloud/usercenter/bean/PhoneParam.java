package com.geely.lib.cloud.usercenter.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class PhoneParam implements Parcelable {
    public static final Creator<PhoneParam> CREATOR = new Creator<PhoneParam>() { // from class: com.geely.lib.cloud.usercenter.bean.PhoneParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PhoneParam createFromParcel(Parcel in) {
            return new PhoneParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PhoneParam[] newArray(int size) {
            return new PhoneParam[size];
        }
    };
    private String phone;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected PhoneParam(Parcel in) {
        this.phone = in.readString();
    }

    public PhoneParam(String phone) {
        this.phone = phone;
    }

    public String getPhone() {
        return this.phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.phone);
    }
}
