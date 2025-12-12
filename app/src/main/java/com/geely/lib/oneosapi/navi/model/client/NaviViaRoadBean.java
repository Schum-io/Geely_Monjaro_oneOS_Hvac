package com.geely.lib.oneosapi.navi.model.client;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class NaviViaRoadBean implements Parcelable {
    public static final Creator<NaviViaRoadBean> CREATOR = new Creator<NaviViaRoadBean>() { // from class: com.geely.lib.oneosapi.navi.model.client.NaviViaRoadBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NaviViaRoadBean createFromParcel(Parcel in) {
            return new NaviViaRoadBean(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NaviViaRoadBean[] newArray(int size) {
            return new NaviViaRoadBean[size];
        }
    };
    private Bundle bundle;
    private String roadName;
    private int roadType;

    public NaviViaRoadBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Bundle getBundle() {
        return this.bundle;
    }

    public String getRoadName() {
        return this.roadName;
    }

    public int getRoadType() {
        return this.roadType;
    }

    public void setBundle(Bundle bundle) {
        this.bundle = bundle;
    }

    public void setRoadName(String roadName) {
        this.roadName = roadName;
    }

    public void setRoadType(int roadType) {
        this.roadType = roadType;
    }

    public String toString() {
        return "NaviViaRoadBean{roadName='" + this.roadName + "', roadType=" + this.roadType + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.roadType);
        parcel.writeString(this.roadName);
        parcel.writeBundle(this.bundle);
    }

    public NaviViaRoadBean(Parcel in) {
        this.roadName = in.readString();
        this.roadType = in.readInt();
        this.bundle = in.readBundle(getClass().getClassLoader());
    }
}
