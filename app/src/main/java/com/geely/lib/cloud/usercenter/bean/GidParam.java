package com.geely.lib.cloud.usercenter.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class GidParam implements Parcelable {
    public static final Creator<GidParam> CREATOR = new Creator<GidParam>() { // from class: com.geely.lib.cloud.usercenter.bean.GidParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GidParam createFromParcel(Parcel in) {
            return new GidParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GidParam[] newArray(int size) {
            return new GidParam[size];
        }
    };
    private String gid;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected GidParam(Parcel in) {
        this.gid = in.readString();
    }

    public GidParam(String gid) {
        this.gid = gid;
    }

    public String getGid() {
        return this.gid;
    }

    public void setGid(String gid) {
        this.gid = gid;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.gid);
    }
}
