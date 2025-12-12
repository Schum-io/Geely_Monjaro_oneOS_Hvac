package com.geely.lib.cloud.maintain.bean.response;

import com.geely.lib.cloud.maintain.bean.DailyEnergyConsumptionVos;

/* loaded from: classes.dex */
public class PostEnergyConsumptionHistoryResponse {
    private int code;
    private Data data;
    private String message;

    private class Data {
        private DailyEnergyConsumptionVos dailyEnergyConsumptionVos;
        private String endDate;
        private String oilConsumption;
        private String powerConsumption;
        private String startDate;
        private String timeConsumption;
        private String totalDistance;

        private Data() {
        }

        public DailyEnergyConsumptionVos getDailyEnergyConsumptionVos() {
            return this.dailyEnergyConsumptionVos;
        }

        public void setDailyEnergyConsumptionVos(DailyEnergyConsumptionVos dailyEnergyConsumptionVos) {
            this.dailyEnergyConsumptionVos = dailyEnergyConsumptionVos;
        }

        public String getEndDate() {
            return this.endDate;
        }

        public void setEndDate(String endDate) {
            this.endDate = endDate;
        }

        public String getOilConsumption() {
            return this.oilConsumption;
        }

        public void setOilConsumption(String oilConsumption) {
            this.oilConsumption = oilConsumption;
        }

        public String getPowerConsumption() {
            return this.powerConsumption;
        }

        public void setPowerConsumption(String powerConsumption) {
            this.powerConsumption = powerConsumption;
        }

        public String getStartDate() {
            return this.startDate;
        }

        public void setStartDate(String startDate) {
            this.startDate = startDate;
        }

        public String getTimeConsumption() {
            return this.timeConsumption;
        }

        public void setTimeConsumption(String timeConsumption) {
            this.timeConsumption = timeConsumption;
        }

        public String getTotalDistance() {
            return this.totalDistance;
        }

        public void setTotalDistance(String totalDistance) {
            this.totalDistance = totalDistance;
        }
    }

    public int getCode() {
        return this.code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Data getData() {
        return this.data;
    }

    public void setData(Data data) {
        this.data = data;
    }
}
