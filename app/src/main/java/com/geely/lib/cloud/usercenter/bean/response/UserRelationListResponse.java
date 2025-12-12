package com.geely.lib.cloud.usercenter.bean.response;

/* loaded from: classes.dex */
public class UserRelationListResponse {
    private int code;
    private Data data;
    private String message;

    private class Data {
        private String userEmail;
        private String userId;
        private String userImage;
        private String userName;
        private String userPhone;

        private Data() {
        }
    }
}
