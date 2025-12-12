package com.geely.lib.cloud.usercenter.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class VehicleModelParam implements Parcelable {
    public static final Creator<VehicleModelParam> CREATOR = new Creator<VehicleModelParam>() { // from class: com.geely.lib.cloud.usercenter.bean.VehicleModelParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VehicleModelParam createFromParcel(Parcel in) {
            return new VehicleModelParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VehicleModelParam[] newArray(int size) {
            return new VehicleModelParam[size];
        }
    };
    private String vehicleModel;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public VehicleModelParam() {
    }

    protected VehicleModelParam(Parcel in) {
        this.vehicleModel = in.readString();
    }

    public VehicleModelParam(String vehicleModel) {
        this.vehicleModel = vehicleModel;
    }

    public String getVehicleModel() {
        return this.vehicleModel;
    }

    public void setVehicleModel(String vehicleModel) {
        this.vehicleModel = vehicleModel;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.vehicleModel);
    }
}
