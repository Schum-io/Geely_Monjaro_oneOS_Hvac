package com.geely.lib.cloud.engine.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public class Requireds implements Parcelable {
    public static final Creator<Requireds> CREATOR = new Creator<Requireds>() { // from class: com.geely.lib.cloud.engine.bean.Requireds.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Requireds createFromParcel(Parcel in) {
            return new Requireds(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Requireds[] newArray(int size) {
            return new Requireds[size];
        }
    };
    private String code;
    private List<SceneConfig> configList;
    private String title;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Requireds() {
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

    public static Creator<Requireds> getCREATOR() {
        return CREATOR;
    }

    protected Requireds(Parcel in) {
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
