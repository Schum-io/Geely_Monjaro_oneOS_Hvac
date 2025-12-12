package com.geely.lib.cloud.maintain.bean.response;

/* loaded from: classes.dex */
public class GetEnergyConsumptionTodayResponse {
    private int code;
    private Data data;
    private String message;

    private class Data {
        private String averageFuelConsumption;
        private String currentAvgEnergyConsumption;
        private String currentEnergyConsumption;
        private String currentTotalEnergyConsumption;
        private String todayAvgEnergyConsumption;

        private Data() {
        }

        public String getCurrentEnergyConsumption() {
            return this.currentEnergyConsumption;
        }

        public void setCurrentEnergyConsumption(String currentEnergyConsumption) {
            this.currentEnergyConsumption = currentEnergyConsumption;
        }

        public String getAverageFuelConsumption() {
            return this.averageFuelConsumption;
        }

        public void setAverageFuelConsumption(String averageFuelConsumption) {
            this.averageFuelConsumption = averageFuelConsumption;
        }

        public String getTodayAvgEnergyConsumption() {
            return this.todayAvgEnergyConsumption;
        }

        public void setTodayAvgEnergyConsumption(String todayAvgEnergyConsumption) {
            this.todayAvgEnergyConsumption = todayAvgEnergyConsumption;
        }

        public String getCurrentAvgEnergyConsumption() {
            return this.currentAvgEnergyConsumption;
        }

        public void setCurrentAvgEnergyConsumption(String currentAvgEnergyConsumption) {
            this.currentAvgEnergyConsumption = currentAvgEnergyConsumption;
        }

        public String getCurrentTotalEnergyConsumption() {
            return this.currentTotalEnergyConsumption;
        }

        public void setCurrentTotalEnergyConsumption(String currentTotalEnergyConsumption) {
            this.currentTotalEnergyConsumption = currentTotalEnergyConsumption;
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
