package com.geely.lib.cloud.engine.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class UpdateReportParam implements Parcelable {
    public static final Creator<UpdateReportParam> CREATOR = new Creator<UpdateReportParam>() { // from class: com.geely.lib.cloud.engine.bean.UpdateReportParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UpdateReportParam createFromParcel(Parcel in) {
            return new UpdateReportParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UpdateReportParam[] newArray(int size) {
            return new UpdateReportParam[size];
        }
    };
    private String requestId;
    private String statusReason;
    private int upgradeStatus;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public UpdateReportParam() {
    }

    public UpdateReportParam(String vin, String requestId, int upgradeStatus, String statusReason) {
        this.vin = vin;
        this.requestId = requestId;
        this.upgradeStatus = upgradeStatus;
        this.statusReason = statusReason;
    }

    protected UpdateReportParam(Parcel in) {
        this.vin = in.readString();
        this.requestId = in.readString();
        this.upgradeStatus = in.readInt();
        this.statusReason = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.vin);
        dest.writeString(this.requestId);
        dest.writeInt(this.upgradeStatus);
        dest.writeString(this.statusReason);
    }

    public String getVin() {
        return this.vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }

    public String getRequestId() {
        return this.requestId;
    }

    public void setRequestId(String requestId) {
        this.requestId = requestId;
    }

    public int getUpgradeStatus() {
        return this.upgradeStatus;
    }

    public void setUpgradeStatus(int upgradeStatus) {
        this.upgradeStatus = upgradeStatus;
    }

    public String getStatusReason() {
        return this.statusReason;
    }

    public void setStatusReason(String statusReason) {
        this.statusReason = statusReason;
    }
}
