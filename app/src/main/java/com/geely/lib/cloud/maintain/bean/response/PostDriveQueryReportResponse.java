package com.geely.lib.cloud.maintain.bean.response;

/* loaded from: classes.dex */
public class PostDriveQueryReportResponse {
    private int code;
    private Data data;
    private String message;

    private class Data {
        private String averageFuelConsumption;
        private String averageSpeed;
        private String distance;
        private String endTime;
        private String startTime;
        private String totalDuration;
        private String totalPowerConsumption;

        private Data() {
        }

        public String getAverageFuelConsumption() {
            return this.averageFuelConsumption;
        }

        public void setAverageFuelConsumption(String averageFuelConsumption) {
            this.averageFuelConsumption = averageFuelConsumption;
        }

        public String getAverageSpeed() {
            return this.averageSpeed;
        }

        public void setAverageSpeed(String averageSpeed) {
            this.averageSpeed = averageSpeed;
        }

        public String getDistance() {
            return this.distance;
        }

        public void setDistance(String distance) {
            this.distance = distance;
        }

        public String getEndTime() {
            return this.endTime;
        }

        public void setEndTime(String endTime) {
            this.endTime = endTime;
        }

        public String getStartTime() {
            return this.startTime;
        }

        public void setStartTime(String startTime) {
            this.startTime = startTime;
        }

        public String getTotalDuration() {
            return this.totalDuration;
        }

        public void setTotalDuration(String totalDuration) {
            this.totalDuration = totalDuration;
        }

        public String getTotalPowerConsumption() {
            return this.totalPowerConsumption;
        }

        public void setTotalPowerConsumption(String totalPowerConsumption) {
            this.totalPowerConsumption = totalPowerConsumption;
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
