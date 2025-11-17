package com.geely.lib.cloud.resource.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class TboxUploadParam implements Parcelable {
    public static final Creator<TboxUploadParam> CREATOR = new Creator<TboxUploadParam>() { // from class: com.geely.lib.cloud.resource.bean.TboxUploadParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TboxUploadParam createFromParcel(Parcel in) {
            return new TboxUploadParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TboxUploadParam[] newArray(int size) {
            return new TboxUploadParam[size];
        }
    };
    private String eventId;
    private String sysKey;
    private String temId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public TboxUploadParam() {
    }

    protected TboxUploadParam(Parcel in) {
        this.sysKey = in.readString();
        this.eventId = in.readString();
        this.temId = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.sysKey);
        dest.writeString(this.eventId);
        dest.writeString(this.temId);
    }

    public String getSysKey() {
        return this.sysKey;
    }

    public void setSysKey(String sysKey) {
        this.sysKey = sysKey;
    }

    public String getEventId() {
        return this.eventId;
    }

    public void setEventId(String eventId) {
        this.eventId = eventId;
    }

    public String getTemId() {
        return this.temId;
    }

    public void setTemId(String temId) {
        this.temId = temId;
    }
}
