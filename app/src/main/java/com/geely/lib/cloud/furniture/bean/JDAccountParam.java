package com.geely.lib.cloud.furniture.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class JDAccountParam implements Parcelable {
    public static final Creator<JDAccountParam> CREATOR = new Creator<JDAccountParam>() { // from class: com.geely.lib.cloud.furniture.bean.JDAccountParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public JDAccountParam createFromParcel(Parcel in) {
            return new JDAccountParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public JDAccountParam[] newArray(int size) {
            return new JDAccountParam[size];
        }
    };
    private String thirdType;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public JDAccountParam() {
    }

    public JDAccountParam(String third_type) {
        this.thirdType = third_type;
    }

    protected JDAccountParam(Parcel in) {
        this.thirdType = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.thirdType);
    }

    public String getThirdType() {
        return this.thirdType;
    }

    public void setThirdType(String thirdType) {
        this.thirdType = thirdType;
    }
}
