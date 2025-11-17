package com.geely.lib.cloud.maintain.bean.response;

import com.geely.lib.cloud.maintain.bean.Location;

/* loaded from: classes.dex */
public class GetDriveQueryTrackResponse {
    private int code;
    private Data data;
    private String message;

    private class Data {
        private String endTime;
        private Location location;
        private String startTime;

        private Data() {
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

        public Location getLocation() {
            return this.location;
        }

        public void setLocation(Location location) {
            this.location = location;
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
