package com.geely.lib.oneosapi.mediacenter.bean;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class MediaData implements Parcelable {
    public static final Creator<MediaData> CREATOR = new Creator<MediaData>() { // from class: com.geely.lib.oneosapi.mediacenter.bean.MediaData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MediaData createFromParcel(Parcel in) {
            return new MediaData(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MediaData[] newArray(int size) {
            return new MediaData[size];
        }
    };
    public Bitmap albumCover;
    public String albumCoverUri;
    public String albumName;
    public String artist;
    public long duration;
    public String id;
    public boolean isFavorSupported;
    public boolean isFavored;
    public boolean isLrcSupported;
    public boolean isReplaySupported;
    public int mediaType;
    public String name;
    public int source;
    public String uri;

    public MediaData() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void readFromParcel(Parcel in) {
        this.id = in.readString();
        this.artist = in.readString();
        this.name = in.readString();
        this.duration = in.readLong();
        this.uri = in.readString();
        this.albumCover = (Bitmap) in.readParcelable(Bitmap.class.getClassLoader());
        this.albumCoverUri = in.readString();
        this.albumName = in.readString();
        this.source = in.readInt();
        this.isFavored = in.readInt() != 0;
        this.mediaType = in.readInt();
        this.isLrcSupported = in.readInt() != 0;
        this.isReplaySupported = in.readInt() != 0;
        this.isFavorSupported = in.readInt() != 0;
    }

    public String toString() {
        return "MediaData{id='" + this.id + "', artist='" + this.artist + "', name='" + this.name + "', duration=" + this.duration + ", uri='" + this.uri + "', albumCover=" + this.albumCover + ", albumCoverUri='" + this.albumCoverUri + "', albumName='" + this.albumName + "', source=" + this.source + ", isFavored=" + this.isFavored + ", mediaType=" + this.mediaType + ", isLrcSupported=" + this.isLrcSupported + ", isReplaySupported=" + this.isReplaySupported + ", isFavorSupported=" + this.isFavorSupported + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.id);
        parcel.writeString(this.artist);
        parcel.writeString(this.name);
        parcel.writeLong(this.duration);
        parcel.writeString(this.uri);
        parcel.writeParcelable(this.albumCover, i);
        parcel.writeString(this.albumCoverUri);
        parcel.writeString(this.albumName);
        parcel.writeInt(this.source);
        parcel.writeInt(this.isFavored ? 1 : 0);
        parcel.writeInt(this.mediaType);
        parcel.writeInt(this.isLrcSupported ? 1 : 0);
        parcel.writeInt(this.isReplaySupported ? 1 : 0);
        parcel.writeInt(this.isFavorSupported ? 1 : 0);
    }

    public MediaData(Parcel in) {
        readFromParcel(in);
    }
}
