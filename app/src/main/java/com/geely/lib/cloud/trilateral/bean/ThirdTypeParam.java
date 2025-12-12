package com.geely.lib.cloud.trilateral.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ThirdTypeParam implements Parcelable {
    public static final Creator<ThirdTypeParam> CREATOR = new Creator<ThirdTypeParam>() { // from class: com.geely.lib.cloud.trilateral.bean.ThirdTypeParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ThirdTypeParam createFromParcel(Parcel in) {
            return new ThirdTypeParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ThirdTypeParam[] newArray(int size) {
            return new ThirdTypeParam[size];
        }
    };
    private String thirdType;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ThirdTypeParam() {
    }

    public ThirdTypeParam(String thirdType) {
        this.thirdType = thirdType;
    }

    protected ThirdTypeParam(Parcel in) {
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
