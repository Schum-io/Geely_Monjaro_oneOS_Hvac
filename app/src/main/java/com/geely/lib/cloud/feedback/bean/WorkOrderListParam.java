package com.geely.lib.cloud.feedback.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class WorkOrderListParam implements Parcelable {
    public static final Creator<WorkOrderListParam> CREATOR = new Creator<WorkOrderListParam>() { // from class: com.geely.lib.cloud.feedback.bean.WorkOrderListParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WorkOrderListParam createFromParcel(Parcel in) {
            return new WorkOrderListParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WorkOrderListParam[] newArray(int size) {
            return new WorkOrderListParam[size];
        }
    };
    private String classifyID;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public WorkOrderListParam() {
    }

    public WorkOrderListParam(String classifyID, String vin) {
        this.classifyID = classifyID;
        this.vin = vin;
    }

    protected WorkOrderListParam(Parcel in) {
        this.classifyID = in.readString();
        this.vin = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.classifyID);
        dest.writeString(this.vin);
    }

    public String getClassifyID() {
        return this.classifyID;
    }

    public void setClassifyID(String classifyID) {
        this.classifyID = classifyID;
    }

    public String getVin() {
        return this.vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }
}
