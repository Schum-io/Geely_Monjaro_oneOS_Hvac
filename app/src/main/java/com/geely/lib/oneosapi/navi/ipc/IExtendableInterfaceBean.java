package com.geely.lib.oneosapi.navi.ipc;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class IExtendableInterfaceBean implements Parcelable {
    public static final Creator<IExtendableInterfaceBean> CREATOR = new Creator<IExtendableInterfaceBean>() { // from class: com.geely.lib.oneosapi.navi.ipc.IExtendableInterfaceBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IExtendableInterfaceBean createFromParcel(Parcel in) {
            return new IExtendableInterfaceBean(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IExtendableInterfaceBean[] newArray(int size) {
            return new IExtendableInterfaceBean[size];
        }
    };
    private Bundle extras;

    public IExtendableInterfaceBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Bundle getExtras() {
        return this.extras;
    }

    public void readFromParcel(Parcel in) {
        this.extras = in.readBundle(Bundle.class.getClassLoader());
    }

    public void setExtras(Bundle extras) {
        this.extras = extras;
    }

    public String toString() {
        return "IExtendableInterfaceBean{extras=" + this.extras + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeBundle(this.extras);
    }

    public IExtendableInterfaceBean(Parcel in) {
        this.extras = in.readBundle(Bundle.class.getClassLoader());
    }
}
