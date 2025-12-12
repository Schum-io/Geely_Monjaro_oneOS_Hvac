package com.geely.lib.cloud.filmhall.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class DailyRecommendParam implements Parcelable {
    public static final Creator<DailyRecommendParam> CREATOR = new Creator<DailyRecommendParam>() { // from class: com.geely.lib.cloud.filmhall.bean.DailyRecommendParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DailyRecommendParam createFromParcel(Parcel in) {
            return new DailyRecommendParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DailyRecommendParam[] newArray(int size) {
            return new DailyRecommendParam[size];
        }
    };
    private String channelIdList;
    private String currentPage;
    private String passportId;
    private String vinType;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public DailyRecommendParam() {
    }

    public DailyRecommendParam(String channelIdList) {
        this.channelIdList = channelIdList;
    }

    protected DailyRecommendParam(Parcel in) {
        this.channelIdList = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.channelIdList);
    }

    public String getVinType() {
        return this.vinType;
    }

    public void setVinType(String vinType) {
        this.vinType = vinType;
    }

    public String getPassportId() {
        return this.passportId;
    }

    public void setPassportId(String passportId) {
        this.passportId = passportId;
    }

    public String getChannelIdList() {
        return this.channelIdList;
    }

    public void setChannelIdList(String channelIdList) {
        this.channelIdList = channelIdList;
    }

    public String getCurrentPage() {
        return this.currentPage;
    }

    public void setCurrentPage(String currentPage) {
        this.currentPage = currentPage;
    }
}
