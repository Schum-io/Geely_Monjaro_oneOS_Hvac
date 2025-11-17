package com.geely.lib.cloud.usercenter.bean.response;

/* loaded from: classes.dex */
public class UserLoginQrcodeResponse {
    private int expireAt;
    private String qrCodeUrl;
    private String qrUuid;
    private String requestId;

    public String getQrCodeUrl() {
        return this.qrCodeUrl;
    }

    public void setQrCodeUrl(String qrCodeUrl) {
        this.qrCodeUrl = qrCodeUrl;
    }

    public String getQrUuid() {
        return this.qrUuid;
    }

    public void setQrUuid(String qrUuid) {
        this.qrUuid = qrUuid;
    }

    public int getExpireAt() {
        return this.expireAt;
    }

    public void setExpireAt(int expireAt) {
        this.expireAt = expireAt;
    }

    public String getRequestId() {
        return this.requestId;
    }

    public void setRequestId(String requestId) {
        this.requestId = requestId;
    }
}
