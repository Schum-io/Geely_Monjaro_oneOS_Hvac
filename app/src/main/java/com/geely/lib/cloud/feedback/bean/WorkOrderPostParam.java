package com.geely.lib.cloud.feedback.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class WorkOrderPostParam implements Parcelable {
    public static final Creator<WorkOrderPostParam> CREATOR = new Creator<WorkOrderPostParam>() { // from class: com.geely.lib.cloud.feedback.bean.WorkOrderPostParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WorkOrderPostParam createFromParcel(Parcel in) {
            return new WorkOrderPostParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WorkOrderPostParam[] newArray(int size) {
            return new WorkOrderPostParam[size];
        }
    };
    private String channelID;
    private String classifyID;
    private String content;
    private boolean isOwner;
    private String name;
    private String phoneNumber;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public WorkOrderPostParam() {
    }

    public WorkOrderPostParam(String content, boolean isOwner, String name, String vin, String channelID, String classifyID, String phoneNumber) {
        this.content = content;
        this.isOwner = isOwner;
        this.name = name;
        this.vin = vin;
        this.channelID = channelID;
        this.classifyID = classifyID;
        this.phoneNumber = phoneNumber;
    }

    protected WorkOrderPostParam(Parcel in) {
        this.content = in.readString();
        this.isOwner = in.readByte() != 0;
        this.name = in.readString();
        this.vin = in.readString();
        this.channelID = in.readString();
        this.classifyID = in.readString();
        this.phoneNumber = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.content);
        parcel.writeByte(this.isOwner ? (byte) 1 : (byte) 0);
        parcel.writeString(this.name);
        parcel.writeString(this.vin);
        parcel.writeString(this.channelID);
        parcel.writeString(this.classifyID);
        parcel.writeString(this.phoneNumber);
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public boolean isOwner() {
        return this.isOwner;
    }

    public void setOwner(boolean owner) {
        this.isOwner = owner;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getVin() {
        return this.vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }

    public String getChannelID() {
        return this.channelID;
    }

    public void setChannelID(String channelID) {
        this.channelID = channelID;
    }

    public String getClassifyID() {
        return this.classifyID;
    }

    public void setClassifyID(String classifyID) {
        this.classifyID = classifyID;
    }

    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
}
