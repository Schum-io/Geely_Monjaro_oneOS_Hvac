package com.geely.lib.oneosapi.schedule.bean;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class CPQueryScheduleBean implements Parcelable {
    public static final Creator<CPQueryScheduleBean> CREATOR = new Creator<CPQueryScheduleBean>() { // from class: com.geely.lib.oneosapi.schedule.bean.CPQueryScheduleBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CPQueryScheduleBean createFromParcel(Parcel in) {
            return new CPQueryScheduleBean(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CPQueryScheduleBean[] newArray(int size) {
            return new CPQueryScheduleBean[size];
        }
    };
    private int resultCode;
    private String time;

    public CPQueryScheduleBean(Parcel in) {
        this.resultCode = in.readInt();
        this.time = in.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getResultCode() {
        return this.resultCode;
    }

    public String getTime() {
        return this.time;
    }

    public void setResultCode(int resultCode) {
        this.resultCode = resultCode;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String toString() {
        return "CPQueryScheduleBean{resultCode=" + this.resultCode + ", time='" + this.time + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.resultCode);
        parcel.writeString(this.time);
    }

    public CPQueryScheduleBean() {
    }

    public CPQueryScheduleBean(JSONObject json) {
        this.resultCode = json.optInt("resultCode");
        this.time = json.optString("time");
    }
}
