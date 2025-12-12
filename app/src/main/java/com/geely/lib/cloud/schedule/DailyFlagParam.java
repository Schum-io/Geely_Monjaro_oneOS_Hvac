package com.geely.lib.cloud.schedule;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class DailyFlagParam implements Parcelable {
    public static final Creator<DailyFlagParam> CREATOR = new Creator<DailyFlagParam>() { // from class: com.geely.lib.cloud.schedule.DailyFlagParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DailyFlagParam createFromParcel(Parcel in) {
            return new DailyFlagParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DailyFlagParam[] newArray(int size) {
            return new DailyFlagParam[size];
        }
    };
    private int dailyFlag;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public DailyFlagParam() {
    }

    public DailyFlagParam(int dailyFlay) {
        this.dailyFlag = dailyFlay;
    }

    protected DailyFlagParam(Parcel in) {
        this.dailyFlag = in.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.dailyFlag);
    }

    public int getDailyFlag() {
        return this.dailyFlag;
    }

    public void setDailyFlag(int dailyFlag) {
        this.dailyFlag = dailyFlag;
    }
}
