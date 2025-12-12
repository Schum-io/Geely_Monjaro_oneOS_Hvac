package com.geely.lib.cloud.membercenter.bean.response;

/* loaded from: classes.dex */
public class HuRefreshTokenVO {
    private long expireAt;
    private String refreshToken;
    private long refreshTokenExpireAt;
    private String token;

    public long getExpireAt() {
        return this.expireAt;
    }

    public void setExpireAt(long expireAt) {
        this.expireAt = expireAt;
    }

    public String getRefreshToken() {
        return this.refreshToken;
    }

    public void setRefreshToken(String refreshToken) {
        this.refreshToken = refreshToken;
    }

    public String getToken() {
        return this.token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public long getRefreshTokenExpireAt() {
        return this.refreshTokenExpireAt;
    }

    public void setRefreshTokenExpireAt(long refreshTokenExpireAt) {
        this.refreshTokenExpireAt = refreshTokenExpireAt;
    }
}
