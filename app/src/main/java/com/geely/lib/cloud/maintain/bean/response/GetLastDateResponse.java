package com.geely.lib.cloud.maintain.bean.response;

/* loaded from: classes.dex */
public class GetLastDateResponse {
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
        private int lastDate;

        private Data() {
        }

        public int getLastDate() {
            return this.lastDate;
        }

        public void setLastDate(int lastDate) {
            this.lastDate = lastDate;
        }
    }
}
