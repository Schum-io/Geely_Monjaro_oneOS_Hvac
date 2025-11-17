package com.geely.lib.cloud.furniture.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class CommandParam implements Parcelable {
    public static final Creator<CommandParam> CREATOR = new Creator<CommandParam>() { // from class: com.geely.lib.cloud.furniture.bean.CommandParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CommandParam createFromParcel(Parcel in) {
            return new CommandParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CommandParam[] newArray(int size) {
            return new CommandParam[size];
        }
    };
    private String currentValue;
    private String streamId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public CommandParam() {
    }

    public CommandParam(String streamId, String currentValue) {
        this.streamId = streamId;
        this.currentValue = currentValue;
    }

    protected CommandParam(Parcel in) {
        this.streamId = in.readString();
        this.currentValue = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.streamId);
        dest.writeString(this.currentValue);
    }

    public String getStreamId() {
        return this.streamId;
    }

    public void setStreamId(String streamId) {
        this.streamId = streamId;
    }

    public String getCurrentValue() {
        return this.currentValue;
    }

    public void setCurrentValue(String currentValue) {
        this.currentValue = currentValue;
    }
}
