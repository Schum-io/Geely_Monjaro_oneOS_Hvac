package com.geely.lib.cloud.appstore.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public class AppVersionParam implements Parcelable {
    public static final Creator<AppVersionParam> CREATOR = new Creator<AppVersionParam>() { // from class: com.geely.lib.cloud.appstore.bean.AppVersionParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppVersionParam createFromParcel(Parcel in) {
            return new AppVersionParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppVersionParam[] newArray(int size) {
            return new AppVersionParam[size];
        }
    };
    private List<AppInfoList> appInfoList;
    private String carModel;
    private String carSeries;
    private String carSystemVersion;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public AppVersionParam() {
    }

    public AppVersionParam(String vin, String carModel, String carSeries, List<AppInfoList> appInfoList, String carSystemVersion) {
        this.vin = vin;
        this.carModel = carModel;
        this.carSeries = carSeries;
        this.appInfoList = appInfoList;
        this.carSystemVersion = carSystemVersion;
    }

    protected AppVersionParam(Parcel in) {
        this.vin = in.readString();
        this.carModel = in.readString();
        this.carSeries = in.readString();
        this.appInfoList = in.createTypedArrayList(AppInfoList.CREATOR);
        this.carSystemVersion = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.vin);
        dest.writeString(this.carModel);
        dest.writeString(this.carSeries);
        dest.writeTypedList(this.appInfoList);
        dest.writeString(this.carSystemVersion);
    }

    public String getVin() {
        return this.vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }

    public String getCarModel() {
        return this.carModel;
    }

    public void setCarModel(String carModel) {
        this.carModel = carModel;
    }

    public String getCarSeries() {
        return this.carSeries;
    }

    public void setCarSeries(String carSeries) {
        this.carSeries = carSeries;
    }

    public List<AppInfoList> getAppInfoList() {
        return this.appInfoList;
    }

    public void setAppInfoList(List<AppInfoList> appInfoList) {
        this.appInfoList = appInfoList;
    }

    public String getCarSystemVersion() {
        return this.carSystemVersion;
    }

    public void setCarSystemVersion(String carSystemVersion) {
        this.carSystemVersion = carSystemVersion;
    }
}
