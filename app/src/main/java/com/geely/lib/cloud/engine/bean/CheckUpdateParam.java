package com.geely.lib.cloud.engine.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class CheckUpdateParam implements Parcelable {
    public static final Creator<CheckUpdateParam> CREATOR = new Creator<CheckUpdateParam>() { // from class: com.geely.lib.cloud.engine.bean.CheckUpdateParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CheckUpdateParam createFromParcel(Parcel in) {
            return new CheckUpdateParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CheckUpdateParam[] newArray(int size) {
            return new CheckUpdateParam[size];
        }
    };
    private VehicleCloudSenceListParam vehicleCloudSenceListParam;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public CheckUpdateParam() {
    }

    public CheckUpdateParam(String vin, VehicleCloudSenceListParam vehicleCloudSenceListParam) {
        this.vin = vin;
        this.vehicleCloudSenceListParam = vehicleCloudSenceListParam;
    }

    protected CheckUpdateParam(Parcel in) {
        this.vin = in.readString();
        this.vehicleCloudSenceListParam = (VehicleCloudSenceListParam) in.readParcelable(VehicleCloudSenceListParam.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.vin);
        dest.writeParcelable(this.vehicleCloudSenceListParam, flags);
    }

    public String getVin() {
        return this.vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }

    public VehicleCloudSenceListParam getVehicleCloudSenceListParam() {
        return this.vehicleCloudSenceListParam;
    }

    public void setVehicleCloudSenceListParam(VehicleCloudSenceListParam vehicleCloudSenceListParam) {
        this.vehicleCloudSenceListParam = vehicleCloudSenceListParam;
    }
}
