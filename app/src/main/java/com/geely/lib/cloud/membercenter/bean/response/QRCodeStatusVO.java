package com.geely.lib.cloud.membercenter.bean.response;

/* loaded from: classes.dex */
public class QRCodeStatusVO {
    private String avatarUrl;
    private String displayName;
    private String qrCodeStatus;
    private String requestId;

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

    public String getQrCodeStatus() {
        return this.qrCodeStatus;
    }

    public void setQrCodeStatus(String qrCodeStatus) {
        this.qrCodeStatus = qrCodeStatus;
    }

    public String getRequestId() {
        return this.requestId;
    }

    public void setRequestId(String requestId) {
        this.requestId = requestId;
    }
}
