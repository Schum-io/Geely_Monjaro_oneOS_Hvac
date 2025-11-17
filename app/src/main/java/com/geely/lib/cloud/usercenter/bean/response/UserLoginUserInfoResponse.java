package com.geely.lib.cloud.usercenter.bean.response;

/* loaded from: classes.dex */
public class UserLoginUserInfoResponse {
    private String accountType;
    private String avatarUrl;
    private String displayName;
    private String email;
    private Number expireAt;
    private String mobile;
    private String refreshToken;
    private Number refreshTokenExpireAt;
    private String token;
    private String userId;

    public UserLoginUserInfoResponse(String token, Number expireAt, Number refreshTokenExpireAt, String refreshToken, String userId, String accountType, String avatarUrl, String displayName, String email, String mobile) {
        this.token = token;
        this.expireAt = expireAt;
        this.refreshTokenExpireAt = refreshTokenExpireAt;
        this.refreshToken = refreshToken;
        this.userId = userId;
        this.accountType = accountType;
        this.avatarUrl = avatarUrl;
        this.displayName = displayName;
        this.email = email;
        this.mobile = mobile;
    }

    public String getToken() {
        return this.token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public Number getExpireAt() {
        return this.expireAt;
    }

    public void setExpireAt(Number expireAt) {
        this.expireAt = expireAt;
    }

    public Number getRefreshTokenExpireAt() {
        return this.refreshTokenExpireAt;
    }

    public void setRefreshTokenExpireAt(Number refreshTokenExpireAt) {
        this.refreshTokenExpireAt = refreshTokenExpireAt;
    }

    public String getRefreshToken() {
        return this.refreshToken;
    }

    public void setRefreshToken(String refreshToken) {
        this.refreshToken = refreshToken;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getAccountType() {
        return this.accountType;
    }

    public void setAccountType(String accountType) {
        this.accountType = accountType;
    }

    public String getAvatarUrl() {
        return this.avatarUrl;
    }

    public void setAvatarUrl(String avatarUrl) {
        this.avatarUrl = avatarUrl;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return this.mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }
}
