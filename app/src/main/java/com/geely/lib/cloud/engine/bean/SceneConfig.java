package com.geely.lib.cloud.engine.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class SceneConfig implements Parcelable {
    public static final Creator<SceneConfig> CREATOR = new Creator<SceneConfig>() { // from class: com.geely.lib.cloud.engine.bean.SceneConfig.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SceneConfig createFromParcel(Parcel in) {
            return new SceneConfig(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SceneConfig[] newArray(int size) {
            return new SceneConfig[size];
        }
    };
    private String code;
    private int endTime;
    private String exitValue;
    private String meaning;
    private String mutex;
    private int startTime;
    private String type;
    private Object value;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public SceneConfig() {
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMutex() {
        return this.mutex;
    }

    public void setMutex(String mutex) {
        this.mutex = mutex;
    }

    public Object getValue() {
        return this.value;
    }

    public void setValue(Object value) {
        this.value = value;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getMeaning() {
        return this.meaning;
    }

    public void setMeaning(String meaning) {
        this.meaning = meaning;
    }

    public String getExitValue() {
        return this.exitValue;
    }

    public void setExitValue(String exitValue) {
        this.exitValue = exitValue;
    }

    public int getStartTime() {
        return this.startTime;
    }

    public void setStartTime(int startTime) {
        this.startTime = startTime;
    }

    public int getEndTime() {
        return this.endTime;
    }

    public void setEndTime(int endTime) {
        this.endTime = endTime;
    }

    public static Creator<SceneConfig> getCREATOR() {
        return CREATOR;
    }

    protected SceneConfig(Parcel in) {
        this.code = in.readString();
        this.mutex = in.readString();
        this.type = in.readString();
        this.meaning = in.readString();
        this.exitValue = in.readString();
        this.startTime = in.readInt();
        this.endTime = in.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.code);
        dest.writeString(this.mutex);
        dest.writeString(this.type);
        dest.writeString(this.meaning);
        dest.writeString(this.exitValue);
        dest.writeInt(this.startTime);
        dest.writeInt(this.endTime);
    }
}
