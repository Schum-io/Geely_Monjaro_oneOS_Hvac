package com.geely.lib.oneosapi.weather.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class CityBean implements Parcelable {
    public static final Creator<CityBean> CREATOR = new Creator<CityBean>() { // from class: com.geely.lib.oneosapi.weather.bean.CityBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CityBean createFromParcel(Parcel in) {
            return new CityBean(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CityBean[] newArray(int size) {
            return new CityBean[size];
        }
    };
    private String areaId;
    private int direct;
    private String districtCN;
    private String districtEN;
    private String nameCN;
    private String nameEN;
    private String provCN;
    private String provEN;

    public CityBean(Parcel in) {
        this.provCN = in.readString();
        this.districtCN = in.readString();
        this.nameCN = in.readString();
        this.areaId = in.readString();
        this.provEN = in.readString();
        this.districtEN = in.readString();
        this.nameEN = in.readString();
        this.direct = in.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAreaId() {
        return this.areaId;
    }

    public int getDirect() {
        return this.direct;
    }

    public String getDistrictCN() {
        return this.districtCN;
    }

    public String getDistrictEN() {
        return this.districtEN;
    }

    public String getNameCN() {
        return this.nameCN;
    }

    public String getNameEN() {
        return this.nameEN;
    }

    public String getProvCN() {
        return this.provCN;
    }

    public String getProvEN() {
        return this.provEN;
    }

    public void setAreaId(String areaId) {
        this.areaId = areaId;
    }

    public void setDirect(int direct) {
        this.direct = direct;
    }

    public void setDistrictCN(String districtCN) {
        this.districtCN = districtCN;
    }

    public void setDistrictEN(String districtEN) {
        this.districtEN = districtEN;
    }

    public void setNameCN(String nameCN) {
        this.nameCN = nameCN;
    }

    public void setNameEN(String nameEN) {
        this.nameEN = nameEN;
    }

    public void setProvCN(String provCN) {
        this.provCN = provCN;
    }

    public void setProvEN(String provEN) {
        this.provEN = provEN;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.provCN);
        dest.writeString(this.districtCN);
        dest.writeString(this.nameCN);
        dest.writeString(this.areaId);
        dest.writeString(this.provEN);
        dest.writeString(this.districtEN);
        dest.writeString(this.nameEN);
        dest.writeInt(this.direct);
    }
}
