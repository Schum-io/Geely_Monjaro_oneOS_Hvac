package com.geely.lib.cloud.maintain.bean;

/* loaded from: classes.dex */
public class DailyEnergyConsumptionVos {
    private String averageOilConsumption;
    private String averagePowerConsumption;
    private String queryDate;
    private String totalDistance;
    private String totalTime;

    public String getAverageOilConsumption() {
        return this.averageOilConsumption;
    }

    public void setAverageOilConsumption(String averageOilConsumption) {
        this.averageOilConsumption = averageOilConsumption;
    }

    public String getAveragePowerConsumption() {
        return this.averagePowerConsumption;
    }

    public void setAveragePowerConsumption(String averagePowerConsumption) {
        this.averagePowerConsumption = averagePowerConsumption;
    }

    public String getQueryDate() {
        return this.queryDate;
    }

    public void setQueryDate(String queryDate) {
        this.queryDate = queryDate;
    }

    public String getTotalDistance() {
        return this.totalDistance;
    }

    public void setTotalDistance(String totalDistance) {
        this.totalDistance = totalDistance;
    }

    public String getTotalTime() {
        return this.totalTime;
    }

    public void setTotalTime(String totalTime) {
        this.totalTime = totalTime;
    }
}
