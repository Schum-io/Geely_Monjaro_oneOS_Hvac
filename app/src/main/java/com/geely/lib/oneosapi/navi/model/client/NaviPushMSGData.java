package com.geely.lib.oneosapi.navi.model.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;
import com.geely.lib.oneosapi.navi.model.base.NaviProtocolID;

/* loaded from: classes.dex */
public class NaviPushMSGData extends NaviBaseModel {
    public static final Creator<NaviPushMSGData> CREATOR = new Creator<NaviPushMSGData>() { // from class: com.geely.lib.oneosapi.navi.model.client.NaviPushMSGData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NaviPushMSGData createFromParcel(Parcel source) {
            return new NaviPushMSGData(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NaviPushMSGData[] newArray(int size) {
            return new NaviPushMSGData[size];
        }
    };
    public static final int PRIORITY_HIGH = 2;
    public static final int PRIORITY_LOW = 0;
    public static final int PRIORITY_MIDDLE = 1;
    private int countDownTime;
    private double poiLatitude;
    private double poiLongitude;
    private String poiName;
    private int priority;
    private String sender;
    private String subTitle;
    private String title;

    public NaviPushMSGData() {
        setProtocolID(NaviProtocolID.NAVI_PUSH_MESSAGE);
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getCountDownTime() {
        return this.countDownTime;
    }

    public double getPoiLatitude() {
        return this.poiLatitude;
    }

    public double getPoiLongitude() {
        return this.poiLongitude;
    }

    public String getPoiName() {
        return this.poiName;
    }

    public int getPriority() {
        return this.priority;
    }

    public String getSender() {
        return this.sender;
    }

    public String getSubTitle() {
        return this.subTitle;
    }

    public String getTitle() {
        return this.title;
    }

    public NaviPushMSGData setCountDownTime(int countDownTime) {
        this.countDownTime = countDownTime;
        return this;
    }

    public NaviPushMSGData setPoiLatitude(double poiLatitude) {
        this.poiLatitude = poiLatitude;
        return this;
    }

    public NaviPushMSGData setPoiLongitude(double poiLongitude) {
        this.poiLongitude = poiLongitude;
        return this;
    }

    public NaviPushMSGData setPoiName(String name) {
        this.poiName = name;
        return this;
    }

    public NaviPushMSGData setPriority(int priority) {
        this.priority = priority;
        return this;
    }

    public NaviPushMSGData setSender(String sender) {
        this.sender = sender;
        return this;
    }

    public NaviPushMSGData setSubTitle(String subTitle) {
        this.subTitle = subTitle;
        return this;
    }

    public NaviPushMSGData setTitle(String title) {
        this.title = title;
        return this;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        StringBuilder sb = new StringBuilder("NaviPushMSGData{");
        sb.append("priority=").append(this.priority);
        sb.append(", priority='").append(this.priority).append('\'');
        sb.append(", countDownTime=").append(this.countDownTime);
        sb.append(", title='").append(this.title).append('\'');
        sb.append(", subTitle='").append(this.subTitle).append('\'');
        sb.append(", poiName='").append(this.poiName).append('\'');
        sb.append(", poiLatitude='").append(this.poiLatitude).append('\'');
        sb.append(", poiLongitude='").append(this.poiLongitude).append('\'');
        sb.append(", sender='").append(this.sender).append('\'');
        sb.append("{base=").append(super.toString()).append("}; ");
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeInt(this.priority);
        dest.writeInt(this.countDownTime);
        dest.writeString(this.title);
        dest.writeString(this.subTitle);
        dest.writeString(this.poiName);
        dest.writeDouble(this.poiLatitude);
        dest.writeDouble(this.poiLongitude);
        dest.writeString(this.sender);
    }

    public NaviPushMSGData(Parcel in) {
        super(in);
        this.priority = in.readInt();
        this.countDownTime = in.readInt();
        this.title = in.readString();
        this.subTitle = in.readString();
        this.poiName = in.readString();
        this.poiLatitude = in.readDouble();
        this.poiLongitude = in.readDouble();
        this.sender = in.readString();
    }
}
