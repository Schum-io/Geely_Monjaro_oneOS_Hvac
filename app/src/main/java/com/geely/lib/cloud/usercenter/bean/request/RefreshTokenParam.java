package com.geely.lib.cloud.usercenter.bean.request;

/* loaded from: classes.dex */
public class RefreshTokenParam {
    private String refreshToken;
    private String refreshTokenFlag;

    public String getRefreshTokenFlag() {
        return this.refreshTokenFlag;
    }

    public void setRefreshTokenFlag(String refreshTokenFlag) {
        this.refreshTokenFlag = refreshTokenFlag;
    }

    public String getRefreshToken() {
        return this.refreshToken;
    }

    public void setRefreshToken(String refreshToken) {
        this.refreshToken = refreshToken;
    }
}
