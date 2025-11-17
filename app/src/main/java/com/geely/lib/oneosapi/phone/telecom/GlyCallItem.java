package com.geely.lib.oneosapi.phone.telecom;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class GlyCallItem implements Parcelable {
    public static final Creator<GlyCallItem> CREATOR = new Creator<GlyCallItem>() { // from class: com.geely.lib.oneosapi.phone.telecom.GlyCallItem.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GlyCallItem createFromParcel(Parcel in) {
            return new GlyCallItem(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GlyCallItem[] newArray(int size) {
            return new GlyCallItem[size];
        }
    };
    private long mConnectTimeMillis;
    private String mContactName;
    private long mId;
    private boolean mIsMute;
    private boolean mIsPrivate;
    private String mNumber;
    private String mPhotoUri;
    private int mState;

    public GlyCallItem() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getConnectTimeMillis() {
        return this.mConnectTimeMillis;
    }

    public String getContactName() {
        return this.mContactName;
    }

    public long getId() {
        return this.mId;
    }

    public String getNumber() {
        return this.mNumber;
    }

    public String getPhotoUri() {
        return this.mPhotoUri;
    }

    public int getState() {
        return this.mState;
    }

    public boolean isIsMute() {
        return this.mIsMute;
    }

    public boolean isIsPrivate() {
        return this.mIsPrivate;
    }

    public void readFromParcel(Parcel source) {
        this.mId = source.readLong();
        this.mState = source.readInt();
        this.mNumber = source.readString();
        this.mConnectTimeMillis = source.readLong();
        this.mContactName = source.readString();
        this.mIsPrivate = source.readByte() != 0;
        this.mPhotoUri = source.readString();
        this.mIsMute = source.readByte() != 0;
    }

    public void setConnectTimeMillis(long connectTimeMillis) {
        this.mConnectTimeMillis = connectTimeMillis;
    }

    public void setContactName(String contactName) {
        this.mContactName = contactName;
    }

    public void setId(long mId) {
        this.mId = mId;
    }

    public void setIsMute(boolean isMute) {
        this.mIsMute = isMute;
    }

    public void setIsPrivate(boolean isPrivate) {
        this.mIsPrivate = isPrivate;
    }

    public void setNumber(String number) {
        this.mNumber = number;
    }

    public void setPhotoUri(String photoUri) {
        this.mPhotoUri = photoUri;
    }

    public void setState(int mState) {
        this.mState = mState;
    }

    public String string() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(" id:" + this.mId);
        stringBuffer.append(" state:" + this.mState);
        stringBuffer.append(" mute:" + this.mIsMute);
        stringBuffer.append(" number:" + this.mNumber);
        return stringBuffer.toString();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("id = ").append(this.mId).append(",state = ").append(this.mState).append(",connectTimeMillis = ").append(this.mConnectTimeMillis).append(",contactName = ").append(this.mContactName).append(",isPrivate = ").append(this.mIsPrivate).append(",mPhotoUri = ").append(this.mPhotoUri).append(", isMute= ").append(this.mIsMute);
        return stringBuffer.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.mId);
        parcel.writeInt(this.mState);
        parcel.writeString(this.mNumber);
        parcel.writeLong(this.mConnectTimeMillis);
        parcel.writeString(this.mContactName);
        parcel.writeByte(this.mIsPrivate ? (byte) 1 : (byte) 0);
        parcel.writeString(this.mPhotoUri);
        parcel.writeByte(this.mIsMute ? (byte) 1 : (byte) 0);
    }

    public GlyCallItem(long id) {
        this.mId = id;
    }

    public GlyCallItem(Parcel in) {
        this.mId = in.readLong();
        this.mState = in.readInt();
        this.mNumber = in.readString();
        this.mConnectTimeMillis = in.readLong();
        this.mContactName = in.readString();
        this.mIsPrivate = in.readByte() != 0;
        this.mPhotoUri = in.readString();
        this.mIsMute = in.readByte() != 0;
    }
}
