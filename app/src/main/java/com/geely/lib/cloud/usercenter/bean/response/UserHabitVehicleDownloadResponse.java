package com.geely.lib.cloud.usercenter.bean.response;

/* loaded from: classes.dex */
public class UserHabitVehicleDownloadResponse {
    private int code;
    private Data data;
    private String message;

    private class Data {
        private String profile;
        private String profileId;
        private String profileName;

        private Data() {
        }

        public String getProfileName() {
            return this.profileName;
        }

        public void setProfileName(String profileName) {
            this.profileName = profileName;
        }

        public String getProfile() {
            return this.profile;
        }

        public void setProfile(String profile) {
            this.profile = profile;
        }

        public String getProfileId() {
            return this.profileId;
        }

        public void setProfileId(String profileId) {
            this.profileId = profileId;
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
