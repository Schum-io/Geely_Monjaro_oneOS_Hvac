package com.geely.lib.oneosapi.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;

/* loaded from: classes.dex */
public class BaseMediaBean implements Parcelable {
    public static final Creator<BaseMediaBean> CREATOR = new Creator<BaseMediaBean>() { // from class: com.geely.lib.oneosapi.bean.BaseMediaBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BaseMediaBean createFromParcel(Parcel in) {
            return new BaseMediaBean(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BaseMediaBean[] newArray(int size) {
            return new BaseMediaBean[size];
        }
    };
    public static final String TYPE_BOOK = "book";
    public static final String TYPE_NEWS = "news";
    public static final String TYPE_RADIO = "radio";
    public static final String TYPE_SONG = "song";
    private String itemAuthor;
    private String itemId;
    private String itemImageUrl;
    private int itemIndex;
    private int itemNextUid;
    private boolean itemRead;
    private String itemTitle;
    private int itemTotal;
    public String itemType;

    @SerializedName("source_info")
    private String sourceInfo;

    public BaseMediaBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getItemAuthor() {
        return this.itemAuthor;
    }

    public String getItemId() {
        return this.itemId;
    }

    public String getItemImageUrl() {
        return this.itemImageUrl;
    }

    public int getItemIndex() {
        return this.itemIndex;
    }

    public int getItemNextUid() {
        return this.itemNextUid;
    }

    public String getItemTitle() {
        return this.itemTitle;
    }

    public int getItemTotal() {
        return this.itemTotal;
    }

    public String getItemType() {
        return this.itemType;
    }

    public String getSourceInfo() {
        return this.sourceInfo;
    }

    public boolean isItemOver() {
        return false;
    }

    public boolean isItemRead() {
        return this.itemRead;
    }

    public void setItemAuthor(String itemAuthor) {
        this.itemAuthor = itemAuthor;
    }

    public void setItemId(String itemId) {
        this.itemId = itemId;
    }

    public void setItemImageUrl(String imageUrl) {
        this.itemImageUrl = imageUrl;
    }

    public void setItemIndex(int itemIndex) {
        this.itemIndex = itemIndex;
    }

    public void setItemNextUid(int itemNextUid) {
        this.itemNextUid = itemNextUid;
    }

    public void setItemOver(boolean flag) {
    }

    public void setItemRead(boolean itemRead) {
        this.itemRead = itemRead;
    }

    public void setItemTitle(String itemTitle) {
        this.itemTitle = itemTitle;
    }

    public void setItemTotal(int itemTotal) {
        this.itemTotal = itemTotal;
    }

    public void setItemType(String itemType) {
        this.itemType = itemType;
    }

    public void setSourceInfo(String sourceInfo) {
        this.sourceInfo = sourceInfo;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.itemType);
        parcel.writeString(this.itemTitle);
        parcel.writeString(this.itemAuthor);
        parcel.writeString(this.itemId);
        parcel.writeInt(this.itemIndex);
        parcel.writeString(this.itemImageUrl);
        parcel.writeString(this.sourceInfo);
        parcel.writeByte(this.itemRead ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.itemNextUid);
        parcel.writeInt(this.itemTotal);
    }

    public BaseMediaBean(Parcel in) {
        this.itemType = in.readString();
        this.itemTitle = in.readString();
        this.itemAuthor = in.readString();
        this.itemId = in.readString();
        this.itemIndex = in.readInt();
        this.itemImageUrl = in.readString();
        this.sourceInfo = in.readString();
        this.itemRead = in.readByte() != 0;
        this.itemNextUid = in.readInt();
        this.itemTotal = in.readInt();
    }
}
