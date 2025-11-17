package com.geely.lib.cloud.maintain.bean.response;

import com.geely.lib.cloud.maintain.bean.Maintenances;

/* loaded from: classes.dex */
public class GetMaintainHistoryResponse {
    private int code;
    private Data data;
    private String message;

    private class Data {
        private Maintenances maintenances;
        private Integer totalCount;

        private Data() {
        }

        public Maintenances getMaintenances() {
            return this.maintenances;
        }

        public void setMaintenances(Maintenances maintenances) {
            this.maintenances = maintenances;
        }

        public Integer getTotalCount() {
            return this.totalCount;
        }

        public void setTotalCount(Integer totalCount) {
            this.totalCount = totalCount;
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
