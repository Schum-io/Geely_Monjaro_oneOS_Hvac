package com.geely.lib.oneosapi.weather.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ResponseWeatherBean implements Parcelable {
    public static final Creator<ResponseWeatherBean> CREATOR = new Creator<ResponseWeatherBean>() { // from class: com.geely.lib.oneosapi.weather.bean.ResponseWeatherBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResponseWeatherBean createFromParcel(Parcel in) {
            return new ResponseWeatherBean(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResponseWeatherBean[] newArray(int size) {
            return new ResponseWeatherBean[size];
        }
    };
    private int code;
    private WeatherInfo data;
    private String message;

    public ResponseWeatherBean(Parcel in) {
        this.code = in.readInt();
        this.data = (WeatherInfo) in.readParcelable(WeatherInfo.class.getClassLoader());
        this.message = in.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getCode() {
        return this.code;
    }

    public WeatherInfo getData() {
        return this.data;
    }

    public String getMessage() {
        return this.message;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public void setData(WeatherInfo data) {
        this.data = data;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.code);
        dest.writeParcelable(this.data, flags);
        dest.writeString(this.message);
    }
}
