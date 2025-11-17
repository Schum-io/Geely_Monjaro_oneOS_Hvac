package com.geely.lib.cloud.maintain.bean.response;

/* loaded from: classes.dex */
public class GetDriveSuggestionResponse {
    private int code;
    private Data data;
    private String message;

    private class Data {
        private String drivingSuggestion;

        private Data() {
        }

        public String getDrivingSuggestion() {
            return this.drivingSuggestion;
        }

        public void setDrivingSuggestion(String drivingSuggestion) {
            this.drivingSuggestion = drivingSuggestion;
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
