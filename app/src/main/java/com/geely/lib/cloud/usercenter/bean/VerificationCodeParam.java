package com.geely.lib.cloud.usercenter.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class VerificationCodeParam implements Parcelable {
    public static final Creator<VerificationCodeParam> CREATOR = new Creator<VerificationCodeParam>() { // from class: com.geely.lib.cloud.usercenter.bean.VerificationCodeParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VerificationCodeParam createFromParcel(Parcel in) {
            return new VerificationCodeParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VerificationCodeParam[] newArray(int size) {
            return new VerificationCodeParam[size];
        }
    };
    private String verificationCode;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected VerificationCodeParam(Parcel in) {
        this.verificationCode = in.readString();
    }

    public VerificationCodeParam(String verificationCode) {
        this.verificationCode = verificationCode;
    }

    public String getVerificationCode() {
        return this.verificationCode;
    }

    public void setVerificationCode(String verificationCode) {
        this.verificationCode = verificationCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.verificationCode);
    }
}
