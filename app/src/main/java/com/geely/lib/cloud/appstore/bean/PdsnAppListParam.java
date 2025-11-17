package com.geely.lib.cloud.appstore.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public class PdsnAppListParam implements Parcelable {
    public static final Creator<PdsnAppListParam> CREATOR = new Creator<PdsnAppListParam>() { // from class: com.geely.lib.cloud.appstore.bean.PdsnAppListParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PdsnAppListParam createFromParcel(Parcel in) {
            return new PdsnAppListParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PdsnAppListParam[] newArray(int size) {
            return new PdsnAppListParam[size];
        }
    };
    private List<AppList> appList;
    private String vin;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public PdsnAppListParam() {
    }

    public PdsnAppListParam(String pdsn, List<AppList> appListPaaram) {
        this.vin = pdsn;
        this.appList = appListPaaram;
    }

    protected PdsnAppListParam(Parcel in) {
        this.vin = in.readString();
        this.appList = in.createTypedArrayList(AppList.CREATOR);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.vin);
        dest.writeTypedList(this.appList);
    }

    public String getVin() {
        return this.vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }

    public List<AppList> getAppList() {
        return this.appList;
    }

    public void setAppList(List<AppList> appList) {
        this.appList = appList;
    }
}
