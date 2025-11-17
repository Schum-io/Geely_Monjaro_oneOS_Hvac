package com.geely.lib.cloud.maintain.bean.response;

/* loaded from: classes.dex */
public class PostDriveDataResponse {
    private int code;
    private Data data;
    private String message;

    private class Data {
        private Integer bra;
        private String endTime;
        private String idleSpeed;
        private Integer overSpeedCount;
        private Integer parkingCount;
        private Integer rapidAccelerationCount;
        private String startTime;
        private String totalDistance;
        private String totalDuration;

        private Data() {
        }

        public Integer getBra() {
            return this.bra;
        }

        public void setBra(Integer bra) {
            this.bra = bra;
        }

        public String getEndTime() {
            return this.endTime;
        }

        public void setEndTime(String endTime) {
            this.endTime = endTime;
        }

        public String getIdleSpeed() {
            return this.idleSpeed;
        }

        public void setIdleSpeed(String idleSpeed) {
            this.idleSpeed = idleSpeed;
        }

        public Integer getOverSpeedCount() {
            return this.overSpeedCount;
        }

        public void setOverSpeedCount(Integer overSpeedCount) {
            this.overSpeedCount = overSpeedCount;
        }

        public Integer getParkingCount() {
            return this.parkingCount;
        }

        public void setParkingCount(Integer parkingCount) {
            this.parkingCount = parkingCount;
        }

        public Integer getRapidAccelerationCount() {
            return this.rapidAccelerationCount;
        }

        public void setRapidAccelerationCount(Integer rapidAccelerationCount) {
            this.rapidAccelerationCount = rapidAccelerationCount;
        }

        public String getStartTime() {
            return this.startTime;
        }

        public void setStartTime(String startTime) {
            this.startTime = startTime;
        }

        public String getTotalDistance() {
            return this.totalDistance;
        }

        public void setTotalDistance(String totalDistance) {
            this.totalDistance = totalDistance;
        }

        public String getTotalDuration() {
            return this.totalDuration;
        }

        public void setTotalDuration(String totalDuration) {
            this.totalDuration = totalDuration;
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
