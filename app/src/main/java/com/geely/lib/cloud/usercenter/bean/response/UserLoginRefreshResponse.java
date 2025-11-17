package com.geely.lib.cloud.usercenter.bean.response;

/* loaded from: classes.dex */
public class UserLoginRefreshResponse {
    private Number expireAt;
    private String refreshToken;
    private Number refreshTokenExpireAt;
    private String token;

    public UserLoginRefreshResponse(Number expireAt, String token, Number refreshTokenExpireAt, String refreshToken) {
        this.expireAt = expireAt;
        this.token = token;
        this.refreshTokenExpireAt = refreshTokenExpireAt;
        this.refreshToken = refreshToken;
    }

    public Number getExpireAt() {
        return this.expireAt;
    }

    public void setExpireAt(Number expireAt) {
        this.expireAt = expireAt;
    }

    public String getToken() {
        return this.token;
    }

    public void setToken(String token) {
        this.token = token;
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
}
