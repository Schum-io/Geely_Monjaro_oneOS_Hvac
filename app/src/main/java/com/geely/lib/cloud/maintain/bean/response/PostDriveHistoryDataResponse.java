package com.geely.lib.cloud.maintain.bean.response;

/* loaded from: classes.dex */
public class PostDriveHistoryDataResponse {
    private int code;
    private Data data;
    private String message;

    private class Data {
        private Integer brakeSuddenlyCount;
        private Integer illegalLaneChangeCount;
        private Integer overSpeedCount;
        private Integer rapidAccelerationCount;
        private Integer sharpTurnCount;
        private Integer tiredDrivingCount;
        private String trackId;

        private Data() {
        }

        public Integer getBrakeSuddenlyCount() {
            return this.brakeSuddenlyCount;
        }

        public void setBrakeSuddenlyCount(Integer brakeSuddenlyCount) {
            this.brakeSuddenlyCount = brakeSuddenlyCount;
        }

        public Integer getIllegalLaneChangeCount() {
            return this.illegalLaneChangeCount;
        }

        public void setIllegalLaneChangeCount(Integer illegalLaneChangeCount) {
            this.illegalLaneChangeCount = illegalLaneChangeCount;
        }

        public Integer getOverSpeedCount() {
            return this.overSpeedCount;
        }

        public void setOverSpeedCount(Integer overSpeedCount) {
            this.overSpeedCount = overSpeedCount;
        }

        public Integer getRapidAccelerationCount() {
            return this.rapidAccelerationCount;
        }

        public void setRapidAccelerationCount(Integer rapidAccelerationCount) {
            this.rapidAccelerationCount = rapidAccelerationCount;
        }

        public Integer getSharpTurnCount() {
            return this.sharpTurnCount;
        }

        public void setSharpTurnCount(Integer sharpTurnCount) {
            this.sharpTurnCount = sharpTurnCount;
        }

        public Integer getTiredDrivingCount() {
            return this.tiredDrivingCount;
        }

        public void setTiredDrivingCount(Integer tiredDrivingCount) {
            this.tiredDrivingCount = tiredDrivingCount;
        }

        public String getTrackId() {
            return this.trackId;
        }

        public void setTrackId(String trackId) {
            this.trackId = trackId;
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
