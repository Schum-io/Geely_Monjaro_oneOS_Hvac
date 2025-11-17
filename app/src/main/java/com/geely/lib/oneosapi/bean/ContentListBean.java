package com.geely.lib.oneosapi.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.bean.util.BeanUtils;
import com.google.gson.annotations.SerializedName;
import java.util.List;

/* loaded from: classes.dex */
public class ContentListBean implements Parcelable {
    public static final Creator<ContentListBean> CREATOR = new Creator<ContentListBean>() { // from class: com.geely.lib.oneosapi.bean.ContentListBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ContentListBean createFromParcel(Parcel in) {
            return new ContentListBean(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ContentListBean[] newArray(int size) {
            return new ContentListBean[size];
        }
    };
    private int areaSerialId;
    public BookInfo book;
    private int contentId;
    public int errcode;
    private String from;
    public int id;

    @SerializedName("logo_url")
    private String logoUrl;
    public List<NewsItemBean> newslist;
    public String reply;
    public List<BaseSongItemBean> songlist;

    @SerializedName("source_info")
    public String sourceInfo;
    private String title;

    @SerializedName("top_id")
    private String topId;
    public String type;

    public ContentListBean(Parcel in) {
        this.errcode = -1;
        this.errcode = in.readInt();
        this.id = in.readInt();
        this.type = in.readString();
        this.reply = in.readString();
        this.songlist = in.createTypedArrayList(BaseSongItemBean.CREATOR);
        this.newslist = in.createTypedArrayList(NewsItemBean.CREATOR);
        this.book = (BookInfo) in.readParcelable(BookInfo.class.getClassLoader());
        this.sourceInfo = in.readString();
        this.contentId = in.readInt();
        this.title = in.readString();
        this.from = in.readString();
        this.topId = in.readString();
        this.logoUrl = in.readString();
        this.areaSerialId = in.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getAreaSerialId() {
        return this.areaSerialId;
    }

    public BookInfo getBook() {
        return this.book;
    }

    public int getContentId() {
        return this.contentId;
    }

    public String getFrom() {
        return this.from;
    }

    public int getId() {
        return this.id;
    }

    public String getLogoUrl() {
        return this.logoUrl;
    }

    public List<NewsMediaBean> getNewslist() {
        return BeanUtils.convertNewsFeedList(this.newslist);
    }

    public String getReply() {
        return this.reply;
    }

    public List<BaseSongItemBean> getSonglist() {
        return this.songlist;
    }

    public String getSourceInfo() {
        return this.sourceInfo;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTopId() {
        return this.topId;
    }

    public String getType() {
        return this.type;
    }

    public boolean isNewUser() {
        return this.errcode == 860;
    }

    public boolean isQQExpired() {
        return this.errcode == 800;
    }

    public boolean isSuccess() {
        return this.errcode == 0;
    }

    public boolean isWxExpired() {
        return this.errcode == 801;
    }

    public void setAreaSerialId(int areaSerialId) {
        this.areaSerialId = areaSerialId;
    }

    public void setBook(BookInfo book) {
        this.book = book;
    }

    public void setContentId(int contentId) {
        this.contentId = contentId;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setLogoUrl(String logoUrl) {
        this.logoUrl = logoUrl;
    }

    public void setReply(String reply) {
        this.reply = reply;
    }

    public void setSonglist(List<BaseSongItemBean> songlist) {
        this.songlist = songlist;
    }

    public void setSourceInfo(String sourceInfo) {
        this.sourceInfo = sourceInfo;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setTopId(String topId) {
        this.topId = topId;
    }

    public void setType(String type) {
        this.type = type;
    }

    public boolean shouldBind() {
        return this.errcode == 861;
    }

    public String toString() {
        return "errcode : " + this.errcode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.errcode);
        dest.writeInt(this.id);
        dest.writeString(this.type);
        dest.writeString(this.reply);
        dest.writeTypedList(this.songlist);
        dest.writeTypedList(this.newslist);
        dest.writeParcelable(this.book, flags);
        dest.writeString(this.sourceInfo);
        dest.writeInt(this.contentId);
        dest.writeString(this.title);
        dest.writeString(this.from);
        dest.writeString(this.topId);
        dest.writeString(this.logoUrl);
        dest.writeInt(this.areaSerialId);
    }
}
