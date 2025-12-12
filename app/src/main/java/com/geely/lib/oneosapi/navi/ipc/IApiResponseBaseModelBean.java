package com.geely.lib.oneosapi.navi.ipc;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class IApiResponseBaseModelBean implements Parcelable {
    public static final Creator<IApiResponseBaseModelBean> CREATOR = new Creator<IApiResponseBaseModelBean>() { // from class: com.geely.lib.oneosapi.navi.ipc.IApiResponseBaseModelBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IApiResponseBaseModelBean createFromParcel(Parcel in) {
            return new IApiResponseBaseModelBean(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IApiResponseBaseModelBean[] newArray(int size) {
            return new IApiResponseBaseModelBean[size];
        }
    };
    private Bundle extras;
    private int resultCode;

    public IApiResponseBaseModelBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Bundle getExtras() {
        return this.extras;
    }

    public int getResultCode() {
        return this.resultCode;
    }

    public void readFromParcel(Parcel in) {
        this.resultCode = in.readInt();
        this.extras = in.readBundle(Bundle.class.getClassLoader());
    }

    public void setExtras(Bundle extras) {
        this.extras = extras;
    }

    public void setResultCode(int resultCode) {
        this.resultCode = resultCode;
    }

    public String toString() {
        return "IAPIResponseBaseModelBean{resultCode=" + this.resultCode + ", extras=" + this.extras + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.resultCode);
        dest.writeBundle(this.extras);
    }

    public IApiResponseBaseModelBean(Parcel in) {
        this.resultCode = in.readInt();
        this.extras = in.readBundle(Bundle.class.getClassLoader());
    }
}
