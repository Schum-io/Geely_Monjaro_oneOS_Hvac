package com.geely.lib.cloud.engine.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class SceneIdParam implements Parcelable {
    public static final Creator<SceneIdParam> CREATOR = new Creator<SceneIdParam>() { // from class: com.geely.lib.cloud.engine.bean.SceneIdParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SceneIdParam createFromParcel(Parcel in) {
            return new SceneIdParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SceneIdParam[] newArray(int size) {
            return new SceneIdParam[size];
        }
    };
    private String code;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public SceneIdParam() {
    }

    protected SceneIdParam(Parcel in) {
        this.code = in.readString();
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.code);
    }
}
