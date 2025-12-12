package com.geely.lib.cloud.furniture.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class SceneActionParam implements Parcelable {
    public static final Creator<SceneActionParam> CREATOR = new Creator<SceneActionParam>() { // from class: com.geely.lib.cloud.furniture.bean.SceneActionParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SceneActionParam createFromParcel(Parcel in) {
            return new SceneActionParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SceneActionParam[] newArray(int size) {
            return new SceneActionParam[size];
        }
    };
    private String recordId;
    private String sceneId;
    private String terminalId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public SceneActionParam() {
    }

    public SceneActionParam(String sceneId, String terminalId, String recordId) {
        this.sceneId = sceneId;
        this.terminalId = terminalId;
        this.recordId = recordId;
    }

    protected SceneActionParam(Parcel in) {
        this.sceneId = in.readString();
        this.terminalId = in.readString();
        this.recordId = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.sceneId);
        dest.writeString(this.terminalId);
        dest.writeString(this.recordId);
    }

    public String getSceneId() {
        return this.sceneId;
    }

    public void setSceneId(String sceneId) {
        this.sceneId = sceneId;
    }

    public String getTerminalId() {
        return this.terminalId;
    }

    public void setTerminalId(String terminalId) {
        this.terminalId = terminalId;
    }

    public String getRecordId() {
        return this.recordId;
    }

    public void setRecordId(String recordId) {
        this.recordId = recordId;
    }
}
