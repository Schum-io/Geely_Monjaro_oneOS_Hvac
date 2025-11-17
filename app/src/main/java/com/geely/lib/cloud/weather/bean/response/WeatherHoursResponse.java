package com.geely.lib.cloud.weather.bean.response;

/* loaded from: classes.dex */
public class WeatherHoursResponse {
    private int id;
    private String temp;
    private String updateTime;
    private String weathPheno;
    private String windCode;
    private String windDirCode;

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTemp() {
        return this.temp;
    }

    public void setTemp(String temp) {
        this.temp = temp;
    }

    public String getWindCode() {
        return this.windCode;
    }

    public void setWindCode(String windCode) {
        this.windCode = windCode;
    }

    public String getWindDirCode() {
        return this.windDirCode;
    }

    public void setWindDirCode(String windDirCode) {
        this.windDirCode = windDirCode;
    }

    public String getWeathPheno() {
        return this.weathPheno;
    }

    public void setWeathPheno(String weathPheno) {
        this.weathPheno = weathPheno;
    }

    public String getUpdateTime() {
        return this.updateTime;
    }

    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime;
    }
}
