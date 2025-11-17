package com.geely.lib.cloud.engine.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public class AutoTriggerState implements Parcelable {
    public static final Creator<AutoTriggerState> CREATOR = new Creator<AutoTriggerState>() { // from class: com.geely.lib.cloud.engine.bean.AutoTriggerState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AutoTriggerState createFromParcel(Parcel in) {
            return new AutoTriggerState(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AutoTriggerState[] newArray(int size) {
            return new AutoTriggerState[size];
        }
    };
    private String code;
    private List<SceneConfig> configList;
    private String title;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public AutoTriggerState() {
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public List<SceneConfig> getConfigList() {
        return this.configList;
    }

    public void setConfigList(List<SceneConfig> configList) {
        this.configList = configList;
    }

    protected AutoTriggerState(Parcel in) {
        this.code = in.readString();
        this.title = in.readString();
        this.configList = in.createTypedArrayList(SceneConfig.CREATOR);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.code);
        dest.writeString(this.title);
        dest.writeTypedList(this.configList);
    }
}
