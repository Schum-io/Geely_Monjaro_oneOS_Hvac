package com.geely.lib.cloud.weather.bean.response;

/* loaded from: classes.dex */
public class WeatherManagementResponse {
    private String aqi;
    private String areaId;
    private String currentTemp;
    private String districtCN;
    private String districtEN;
    private String nameCN;
    private String nameEN;
    private String provCN;
    private String provEN;
    private String weathPheno;

    public String getAreaId() {
        return this.areaId;
    }

    public void setAreaId(String areaId) {
        this.areaId = areaId;
    }

    public String getDistrictCN() {
        return this.districtCN;
    }

    public void setDistrictCN(String districtCN) {
        this.districtCN = districtCN;
    }

    public String getDistrictEN() {
        return this.districtEN;
    }

    public void setDistrictEN(String districtEN) {
        this.districtEN = districtEN;
    }

    public String getNameCN() {
        return this.nameCN;
    }

    public void setNameCN(String nameCN) {
        this.nameCN = nameCN;
    }

    public String getNameEN() {
        return this.nameEN;
    }

    public void setNameEN(String nameEN) {
        this.nameEN = nameEN;
    }

    public String getProvCN() {
        return this.provCN;
    }

    public void setProvCN(String provCN) {
        this.provCN = provCN;
    }

    public String getProvEN() {
        return this.provEN;
    }

    public void setProvEN(String provEN) {
        this.provEN = provEN;
    }

    public String getAqi() {
        return this.aqi;
    }

    public void setAqi(String aqi) {
        this.aqi = aqi;
    }

    public String getCurrentTemp() {
        return this.currentTemp;
    }

    public void setCurrentTemp(String currentTemp) {
        this.currentTemp = currentTemp;
    }

    public String getWeathPheno() {
        return this.weathPheno;
    }

    public void setWeathPheno(String weathPheno) {
        this.weathPheno = weathPheno;
    }
}
