package com.geely.lib.cloud.usercenter.bean.response;

/* loaded from: classes.dex */
public class UserInfoResponse {
    private int code;
    private Data data;
    private String message;

    private class Data {
        private String accountId;
        private String avatarUrl;
        private String displayName;
        private String mobile;

        private Data() {
        }

        public String getAccountId() {
            return this.accountId;
        }

        public void setAccountId(String accountId) {
            this.accountId = accountId;
        }

        public String getDisplayName() {
            return this.displayName;
        }

        public void setDisplayName(String displayName) {
            this.displayName = displayName;
        }

        public String getAvatarUrl() {
            return this.avatarUrl;
        }

        public void setAvatarUrl(String avatarUrl) {
            this.avatarUrl = avatarUrl;
        }

        public String getMobile() {
            return this.mobile;
        }

        public void setMobile(String mobile) {
            this.mobile = mobile;
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
