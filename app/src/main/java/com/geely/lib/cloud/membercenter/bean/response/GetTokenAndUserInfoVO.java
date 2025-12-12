package com.geely.lib.cloud.membercenter.bean.response;

/* loaded from: classes.dex */
public class GetTokenAndUserInfoVO {
    private String accountType;
    private String avatarUrl;
    private String displayName;
    private String email;
    private long expireAt;
    private String mobile;
    private String refreshToken;
    private String refreshTokenExpireAt;
    private String token;
    private String userId;

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

    public long getExpireAt() {
        return this.expireAt;
    }

    public void setExpireAt(long expireAt) {
        this.expireAt = expireAt;
    }

    public String getMobile() {
        return this.mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getRefreshToken() {
        return this.refreshToken;
    }

    public void setRefreshToken(String refreshToken) {
        this.refreshToken = refreshToken;
    }

    public String getRefreshTokenExpireAt() {
        return this.refreshTokenExpireAt;
    }

    public void setRefreshTokenExpireAt(String refreshTokenExpireAt) {
        this.refreshTokenExpireAt = refreshTokenExpireAt;
    }

    public String getToken() {
        return this.token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }
}
