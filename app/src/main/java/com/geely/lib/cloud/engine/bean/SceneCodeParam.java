package com.geely.lib.cloud.engine.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class SceneCodeParam implements Parcelable {
    public static final Creator<SceneCodeParam> CREATOR = new Creator<SceneCodeParam>() { // from class: com.geely.lib.cloud.engine.bean.SceneCodeParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SceneCodeParam createFromParcel(Parcel in) {
            return new SceneCodeParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SceneCodeParam[] newArray(int size) {
            return new SceneCodeParam[size];
        }
    };
    private String sceneCode;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public SceneCodeParam() {
    }

    public SceneCodeParam(String sceneCode) {
        this.sceneCode = sceneCode;
    }

    protected SceneCodeParam(Parcel in) {
        this.sceneCode = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.sceneCode);
    }

    public String getSceneCode() {
        return this.sceneCode;
    }

    public void setSceneCode(String sceneCode) {
        this.sceneCode = sceneCode;
    }

    public String toString() {
        return "SceneCodeParam{sceneCode='" + this.sceneCode + "'}";
    }
}
