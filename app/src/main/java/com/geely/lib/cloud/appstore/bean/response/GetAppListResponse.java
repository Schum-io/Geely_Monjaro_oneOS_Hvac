package com.geely.lib.cloud.appstore.bean.response;

/* loaded from: classes.dex */
public class GetAppListResponse {
    private Data data;
    private String message;
    private String status;

    public Data getData() {
        return this.data;
    }

    public void setData(Data data) {
        this.data = data;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    private class Data {
        private Apps apps;
        private IIndex iIndex;

        private Data() {
        }

        public IIndex getiIndex() {
            return this.iIndex;
        }

        public void setiIndex(IIndex iIndex) {
            this.iIndex = iIndex;
        }

        public Apps getApps() {
            return this.apps;
        }

        public void setApps(Apps apps) {
            this.apps = apps;
        }
    }

    private class IIndex {
        private int pageNo;
        private int pageSize;
        private int pageTotal;
        private int totalResult;

        private IIndex() {
        }

        public int getPageTotal() {
            return this.pageTotal;
        }

        public void setPageTotal(int pageTotal) {
            this.pageTotal = pageTotal;
        }

        public int getTotalResult() {
            return this.totalResult;
        }

        public void setTotalResult(int totalResult) {
            this.totalResult = totalResult;
        }

        public int getPageSize() {
            return this.pageSize;
        }

        public void setPageSize(int pageSize) {
            this.pageSize = pageSize;
        }

        public int getPageNo() {
            return this.pageNo;
        }

        public void setPageNo(int pageNo) {
            this.pageNo = pageNo;
        }
    }

    private class Apps {
        private String apkSize;
        private String icon;
        private String name;

        private Apps() {
        }

        public String getName() {
            return this.name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public String getIcon() {
            return this.icon;
        }

        public void setIcon(String icon) {
            this.icon = icon;
        }

        public String getApkSize() {
            return this.apkSize;
        }

        public void setApkSize(String apkSize) {
            this.apkSize = apkSize;
        }
    }
}
