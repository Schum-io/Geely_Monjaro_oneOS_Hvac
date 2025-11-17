package com.geely.lib.oneosapi.recommendation.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class CpspData implements Parcelable {
    public static final Creator<CpspData> CREATOR = new Creator<CpspData>() { // from class: com.geely.lib.oneosapi.recommendation.bean.CpspData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CpspData createFromParcel(Parcel in) {
            return new CpspData(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CpspData[] newArray(int size) {
            return new CpspData[size];
        }
    };
    private String broadcastContent;
    private String buttonName;
    private String cardType;
    private String contentDesc;
    private CpspContentBean cpspContent;
    private String deliveryPosition;
    private String describe;
    private Long expiration;
    private JumpActionBean jumpAction;
    private String messageId;
    private Long push;
    private String resourcesType;
    private String title;
    private String type;
    private String userId;

    public CpspData() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getBroadcastContent() {
        return this.broadcastContent;
    }

    public String getButtonName() {
        return this.buttonName;
    }

    public String getCardType() {
        return this.cardType;
    }

    public String getContentDesc() {
        return this.contentDesc;
    }

    public CpspContentBean getCpspContent() {
        return this.cpspContent;
    }

    public String getDeliveryPosition() {
        return this.deliveryPosition;
    }

    public String getDescribe() {
        return this.describe;
    }

    public Long getExpiration() {
        return this.expiration;
    }

    public JumpActionBean getJumpAction() {
        return this.jumpAction;
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

    public String getTitle() {
        return this.title;
    }

    public String getType() {
        return this.type;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setBroadcastContent(String broadcastContent) {
        this.broadcastContent = broadcastContent;
    }

    public void setButtonName(String buttonName) {
        this.buttonName = buttonName;
    }

    public void setCardType(String cardType) {
        this.cardType = cardType;
    }

    public void setContentDesc(String contentDesc) {
        this.contentDesc = contentDesc;
    }

    public void setCpspContent(CpspContentBean cpspContent) {
        this.cpspContent = cpspContent;
    }

    public void setDeliveryPosition(String deliveryPosition) {
        this.deliveryPosition = deliveryPosition;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public void setExpiration(Long expiration) {
        this.expiration = expiration;
    }

    public void setJumpAction(JumpActionBean jumpAction) {
        this.jumpAction = jumpAction;
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

    public void setTitle(String title) {
        this.title = title;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String toString() {
        return "CpspData{type='" + this.type + "', messageId='" + this.messageId + "', title='" + this.title + "', contentDesc='" + this.contentDesc + "', describe='" + this.describe + "', userId='" + this.userId + "', push=" + this.push + ", expiration=" + this.expiration + ", broadcastContent='" + this.broadcastContent + "', resourcesType='" + this.resourcesType + "', buttonName='" + this.buttonName + "', cpspContent=" + this.cpspContent + ", jumpAction=" + this.jumpAction + ", deliveryPosition='" + this.deliveryPosition + "', cardType='" + this.cardType + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.type);
        dest.writeString(this.messageId);
        dest.writeString(this.title);
        dest.writeString(this.contentDesc);
        dest.writeString(this.describe);
        dest.writeString(this.userId);
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
        dest.writeString(this.broadcastContent);
        dest.writeString(this.resourcesType);
        dest.writeString(this.buttonName);
        dest.writeParcelable(this.cpspContent, flags);
        dest.writeParcelable(this.jumpAction, flags);
        dest.writeString(this.deliveryPosition);
        dest.writeString(this.cardType);
    }

    public CpspData(Parcel in) {
        this.type = in.readString();
        this.messageId = in.readString();
        this.title = in.readString();
        this.contentDesc = in.readString();
        this.describe = in.readString();
        this.userId = in.readString();
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
        this.broadcastContent = in.readString();
        this.resourcesType = in.readString();
        this.buttonName = in.readString();
        this.cpspContent = (CpspContentBean) in.readParcelable(CpspContentBean.class.getClassLoader());
        this.jumpAction = (JumpActionBean) in.readParcelable(JumpActionBean.class.getClassLoader());
        this.deliveryPosition = in.readString();
        this.cardType = in.readString();
    }
}
