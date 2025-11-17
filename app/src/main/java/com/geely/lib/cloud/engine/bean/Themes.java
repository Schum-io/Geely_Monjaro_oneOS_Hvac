package com.geely.lib.cloud.engine.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class Themes implements Parcelable {
    public static final Creator<Themes> CREATOR = new Creator<Themes>() { // from class: com.geely.lib.cloud.engine.bean.Themes.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Themes createFromParcel(Parcel in) {
            return new Themes(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Themes[] newArray(int size) {
            return new Themes[size];
        }
    };
    private String backgroundImage;
    private int id;
    private String music;
    private String name;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Themes() {
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBackgroundImage() {
        return this.backgroundImage;
    }

    public void setBackgroundImage(String backgroundImage) {
        this.backgroundImage = backgroundImage;
    }

    public String getMusic() {
        return this.music;
    }

    public void setMusic(String music) {
        this.music = music;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    protected Themes(Parcel in) {
        this.name = in.readString();
        this.backgroundImage = in.readString();
        this.music = in.readString();
        this.id = in.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.name);
        dest.writeString(this.backgroundImage);
        dest.writeString(this.music);
        dest.writeInt(this.id);
    }
}
