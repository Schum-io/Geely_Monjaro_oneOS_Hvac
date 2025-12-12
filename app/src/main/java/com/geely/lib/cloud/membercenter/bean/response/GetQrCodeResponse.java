package com.geely.lib.cloud.membercenter.bean.response;

/* loaded from: classes.dex */
public class GetQrCodeResponse {
    private int code;
    private QrCodeRequestVO data;
    private String message;

    public int getCode() {
        return this.code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public QrCodeRequestVO getData() {
        return this.data;
    }

    public void setData(QrCodeRequestVO data) {
        this.data = data;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
