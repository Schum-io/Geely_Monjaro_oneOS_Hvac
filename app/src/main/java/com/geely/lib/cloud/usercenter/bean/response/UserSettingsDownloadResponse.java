package com.geely.lib.cloud.usercenter.bean.response;

/* loaded from: classes.dex */
public class UserSettingsDownloadResponse {
    private int code;
    private Data data;
    private String message;

    private class Data {
        private String profile;
        private String profileId;
        private String profileName;

        private Data() {
        }
    }
}
