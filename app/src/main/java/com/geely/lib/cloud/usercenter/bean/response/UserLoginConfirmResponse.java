package com.geely.lib.cloud.usercenter.bean.response;

/* loaded from: classes.dex */
public class UserLoginConfirmResponse {
    private int code;
    private Data data;
    private String message;

    private class Data {
        private String avatarUrl;
        private String displayName;
        private String qrCodeStatus;
        private String requestId;

        private Data() {
        }
    }
}
