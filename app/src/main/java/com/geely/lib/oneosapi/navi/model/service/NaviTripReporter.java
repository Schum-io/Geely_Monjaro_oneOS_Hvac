package com.geely.lib.oneosapi.navi.model.service;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;

/* loaded from: classes.dex */
public class NaviTripReporter extends NaviBaseModel {
    public static final Creator<NaviTripReporter> CREATOR = new Creator<NaviTripReporter>() { // from class: com.geely.lib.oneosapi.navi.model.service.NaviTripReporter.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NaviTripReporter createFromParcel(Parcel source) {
            return new NaviTripReporter(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NaviTripReporter[] newArray(int size) {
            return new NaviTripReporter[size];
        }
    };
    private String tripAveSpeed;
    private String tripDriveDistance;
    private String tripDriveTime;

    public NaviTripReporter() {
        setProtocolID(1007);
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getTripAveSpeed() {
        return this.tripAveSpeed;
    }

    public String getTripDriveDistance() {
        return this.tripDriveDistance;
    }

    public String getTripDriveTime() {
        return this.tripDriveTime;
    }

    public void setTripAveSpeed(String tripAveSpeed) {
        this.tripAveSpeed = tripAveSpeed;
    }

    public void setTripDriveDistance(String tripDriveDistance) {
        this.tripDriveDistance = tripDriveDistance;
    }

    public void setTripDriveTime(String tripDriveTime) {
        this.tripDriveTime = tripDriveTime;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        StringBuilder sb = new StringBuilder("NaviTripReporter{");
        sb.append("tripDriveDistance=").append(this.tripDriveDistance);
        sb.append("tripDriveTime=").append(this.tripDriveTime);
        sb.append("tripAveSpeed=").append(this.tripAveSpeed);
        sb.append("{base=").append(super.toString()).append("}; ");
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeString(this.tripDriveDistance);
        dest.writeString(this.tripDriveTime);
        dest.writeString(this.tripAveSpeed);
    }

    public NaviTripReporter(Parcel in) {
        super(in);
        this.tripDriveDistance = in.readString();
        this.tripDriveTime = in.readString();
        this.tripAveSpeed = in.readString();
    }
}
