package com.geely.lib.cloud.schedule.bean.response;

import com.geely.lib.cloud.schedule.DailyListParam;

/* loaded from: classes.dex */
public class PostMachineAskScheduleResponse {
    private int code;
    private Data data;
    private String message;

    private class Data {
        private DailyListParam dailyList;

        private Data() {
        }

        public DailyListParam getDailyList() {
            return this.dailyList;
        }

        public void setDailyList(DailyListParam dailyList) {
            this.dailyList = dailyList;
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
