package com.geely.lib.oneosapi.recommendation.bean.aqy;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class AqyData implements Parcelable {
    public static final Creator<AqyData> CREATOR = new Creator<AqyData>() { // from class: com.geely.lib.oneosapi.recommendation.bean.aqy.AqyData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AqyData createFromParcel(Parcel in) {
            return new AqyData(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AqyData[] newArray(int size) {
            return new AqyData[size];
        }
    };
    private String cardType;
    private AqyContentBean cpspContent;
    private String deliveryPosition;
    private Long expiration;
    private String messageId;
    private Long push;
    private String resourcesType;
    private String type;

    public AqyData() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getCardType() {
        return this.cardType;
    }

    public AqyContentBean getCpspContent() {
        return this.cpspContent;
    }

    public String getDeliveryPosition() {
        return this.deliveryPosition;
    }

    public Long getExpiration() {
        return this.expiration;
    }

    public String getMessageId() {
        return this.messageId;
    }

    public Long getPush() {
        return this.push;
    }

    public String getResourcesType() {
        return this.resourcesType;
    }

    public String getType() {
        return this.type;
    }

    public void setCardType(String cardType) {
        this.cardType = cardType;
    }

    public void setCpspContent(AqyContentBean cpspContent) {
        this.cpspContent = cpspContent;
    }

    public void setDeliveryPosition(String deliveryPosition) {
        this.deliveryPosition = deliveryPosition;
    }

    public void setExpiration(Long expiration) {
        this.expiration = expiration;
    }

    public void setMessageId(String messageId) {
        this.messageId = messageId;
    }

    public void setPush(Long push) {
        this.push = push;
    }

    public void setResourcesType(String resourcesType) {
        this.resourcesType = resourcesType;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String toString() {
        return "SohuData{type='" + this.type + "', messageId='" + this.messageId + "', push=" + this.push + ", expiration=" + this.expiration + ", resourcesType='" + this.resourcesType + "', cpspContent=" + this.cpspContent + ", deliveryPosition='" + this.deliveryPosition + "', cardType='" + this.cardType + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.type);
        dest.writeString(this.messageId);
        if (this.push == null) {
            dest.writeByte((byte) 0);
        } else {
            dest.writeByte((byte) 1);
            dest.writeLong(this.push.longValue());
        }
        if (this.expiration == null) {
            dest.writeByte((byte) 0);
        } else {
            dest.writeByte((byte) 1);
            dest.writeLong(this.expiration.longValue());
        }
        dest.writeString(this.resourcesType);
        dest.writeParcelable(this.cpspContent, flags);
        dest.writeString(this.deliveryPosition);
        dest.writeString(this.cardType);
    }

    public AqyData(Parcel in) {
        this.type = in.readString();
        this.messageId = in.readString();
        if (in.readByte() == 0) {
            this.push = null;
        } else {
            this.push = Long.valueOf(in.readLong());
        }
        if (in.readByte() == 0) {
            this.expiration = null;
        } else {
            this.expiration = Long.valueOf(in.readLong());
        }
        this.resourcesType = in.readString();
        this.cpspContent = (AqyContentBean) in.readParcelable(AqyContentBean.class.getClassLoader());
        this.deliveryPosition = in.readString();
        this.cardType = in.readString();
    }
}
