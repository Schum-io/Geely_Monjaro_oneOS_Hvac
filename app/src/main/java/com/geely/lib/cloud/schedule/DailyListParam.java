package com.geely.lib.cloud.schedule;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public class DailyListParam implements Parcelable {
    public static final Creator<DailyListParam> CREATOR = new Creator<DailyListParam>() { // from class: com.geely.lib.cloud.schedule.DailyListParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DailyListParam createFromParcel(Parcel in) {
            return new DailyListParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DailyListParam[] newArray(int size) {
            return new DailyListParam[size];
        }
    };
    private List<DailyParam> dailyList;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<DailyParam> getDailyList() {
        return this.dailyList;
    }

    public void setDailyList(List<DailyParam> dailyList) {
        this.dailyList = dailyList;
    }

    public DailyListParam() {
    }

    public DailyListParam(List<DailyParam> dailyList) {
        this.dailyList = dailyList;
    }

    protected DailyListParam(Parcel in) {
        this.dailyList = in.createTypedArrayList(DailyParam.CREATOR);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeTypedList(this.dailyList);
    }
}
