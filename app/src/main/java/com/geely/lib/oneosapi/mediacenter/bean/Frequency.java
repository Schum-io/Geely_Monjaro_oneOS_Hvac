package com.geely.lib.oneosapi.mediacenter.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class Frequency implements Parcelable, Comparable<Frequency> {
    public static final Creator<Frequency> CREATOR = new Creator<Frequency>() { // from class: com.geely.lib.oneosapi.mediacenter.bean.Frequency.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Frequency createFromParcel(Parcel source) {
            return new Frequency(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Frequency[] newArray(int size) {
            return new Frequency[size];
        }
    };
    private int band;
    private boolean collection;
    private int frequency;
    private String name;

    public Frequency() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getBand() {
        return this.band;
    }

    public int getFrequency() {
        return this.frequency;
    }

    public String getName() {
        return this.name;
    }

    public boolean isCollection() {
        return this.collection;
    }

    public void setBand(int band) {
        this.band = band;
    }

    public void setCollection(boolean collection) {
        this.collection = collection;
    }

    public void setFrequency(int frequency) {
        this.frequency = frequency;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{frequency=").append(this.frequency);
        sb.append(", band=").append(this.band);
        sb.append(", name='").append(this.name).append('\'');
        sb.append(", collection=").append(this.collection);
        sb.append('}');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.frequency);
        parcel.writeInt(this.band);
        parcel.writeString(this.name);
        parcel.writeInt(this.collection ? 1 : 0);
    }

    public Frequency(int frequency, int band, String name) {
        this.frequency = frequency;
        this.band = band;
        this.name = name;
    }

    @Override // java.lang.Comparable
    public int compareTo(Frequency o) {
        return this.frequency - o.frequency;
    }

    public Frequency(int frequency, int band, String name, boolean collection) {
        this.frequency = frequency;
        this.band = band;
        this.name = name;
        this.collection = collection;
    }

    public Frequency(Parcel in) {
        this.frequency = in.readInt();
        this.band = in.readInt();
        this.name = in.readString();
        this.collection = in.readInt() == 1;
    }
}
