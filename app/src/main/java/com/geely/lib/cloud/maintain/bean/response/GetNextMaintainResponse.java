package com.geely.lib.cloud.maintain.bean.response;

/* loaded from: classes.dex */
public class GetNextMaintainResponse {
    private int code;
    private Data data;
    private String message;

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

    private class Data {
        private String nestDistance;
        private String nextDate;

        private Data() {
        }

        public String getNextDate() {
            return this.nextDate;
        }

        public void setNextDate(String nextDate) {
            this.nextDate = nextDate;
        }

        public String getNestDistance() {
            return this.nestDistance;
        }

        public void setNestDistance(String nestDistance) {
            this.nestDistance = nestDistance;
        }
    }
}
