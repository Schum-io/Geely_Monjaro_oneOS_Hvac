package com.geely.lib.cloud.membercenter.bean.response;

/* loaded from: classes.dex */
public class QrCodeRequestVO {
    long expireAt;
    private String qrcodeUrl;
    private String qruuid;

    public long getExpireAt() {
        return this.expireAt;
    }

    public void setExpireAt(long expireAt) {
        this.expireAt = expireAt;
    }

    public String getQrcodeUrl() {
        return this.qrcodeUrl;
    }

    public void setQrcodeUrl(String qrcodeUrl) {
        this.qrcodeUrl = qrcodeUrl;
    }

    public String getQruuid() {
        return this.qruuid;
    }

    public void setQruuid(String qruuid) {
        this.qruuid = qruuid;
    }
}
