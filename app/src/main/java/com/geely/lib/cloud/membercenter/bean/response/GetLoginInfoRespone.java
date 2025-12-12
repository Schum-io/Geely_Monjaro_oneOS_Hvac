package com.geely.lib.cloud.membercenter.bean.response;

/* loaded from: classes.dex */
public class GetLoginInfoRespone {
    private int code;
    private GetTokenAndUserInfoVO data;
    private String message;
    private boolean success;

    public int getCode() {
        return this.code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public GetTokenAndUserInfoVO getData() {
        return this.data;
    }

    public void setData(GetTokenAndUserInfoVO data) {
        this.data = data;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public boolean isSuccess() {
        return this.success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }
}
