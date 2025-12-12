package com.geely.lib.cloud.engine.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public class ScenRequiredState implements Parcelable {
    public static final Creator<ScenRequiredState> CREATOR = new Creator<ScenRequiredState>() { // from class: com.geely.lib.cloud.engine.bean.ScenRequiredState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScenRequiredState createFromParcel(Parcel in) {
            return new ScenRequiredState(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScenRequiredState[] newArray(int size) {
            return new ScenRequiredState[size];
        }
    };
    private String code;
    private List<SceneConfig> configList;
    private String meaning;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ScenRequiredState() {
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMeaning() {
        return this.meaning;
    }

    public void setMeaning(String meaning) {
        this.meaning = meaning;
    }

    public List<SceneConfig> getConfigList() {
        return this.configList;
    }

    public void setConfigList(List<SceneConfig> configList) {
        this.configList = configList;
    }

    protected ScenRequiredState(Parcel in) {
        this.code = in.readString();
        this.meaning = in.readString();
        this.configList = in.createTypedArrayList(SceneConfig.CREATOR);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.code);
        dest.writeString(this.meaning);
        dest.writeTypedList(this.configList);
    }
}
