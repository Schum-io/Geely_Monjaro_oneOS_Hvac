package com.geely.lib.cloud.payment.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class LearJudgeParam implements Parcelable {
    public static final Creator<LearJudgeParam> CREATOR = new Creator<LearJudgeParam>() { // from class: com.geely.lib.cloud.payment.bean.LearJudgeParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LearJudgeParam createFromParcel(Parcel in) {
            return new LearJudgeParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LearJudgeParam[] newArray(int size) {
            return new LearJudgeParam[size];
        }
    };
    private String educationId;
    private String vehicleModelApplicable;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public LearJudgeParam() {
    }

    public LearJudgeParam(String educationId, String vehicleModelApplicable) {
        this.educationId = educationId;
        this.vehicleModelApplicable = vehicleModelApplicable;
    }

    protected LearJudgeParam(Parcel in) {
        this.educationId = in.readString();
        this.vehicleModelApplicable = in.readString();
    }

    public String getEducationId() {
        return this.educationId;
    }

    public void setEducationId(String educationId) {
        this.educationId = educationId;
    }

    public String getVehicleModelApplicable() {
        return this.vehicleModelApplicable;
    }

    public void setVehicleModelApplicable(String vehicleModelApplicable) {
        this.vehicleModelApplicable = vehicleModelApplicable;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.educationId);
        dest.writeString(this.vehicleModelApplicable);
    }
}
