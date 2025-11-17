package com.geely.lib.cloud.schedule.bean.response;

import java.util.Map;

/* loaded from: classes.dex */
public class ScheduleSyncResponse {
    private Map<String, String> actionParam;
    private String actionType;
    private String appId;
    private String describe;
    private Long expiration;
    private Long push;
    private String title;
    private String type;

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescribe() {
        return this.describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getActionType() {
        return this.actionType;
    }

    public void setActionType(String actionType) {
        this.actionType = actionType;
    }

    public Map<String, String> getActionParam() {
        return this.actionParam;
    }

    public void setActionParam(Map<String, String> actionParam) {
        this.actionParam = actionParam;
    }

    public String getAppId() {
        return this.appId;
    }

    public void setAppId(String appId) {
        this.appId = appId;
    }

    public Long getPush() {
        return this.push;
    }

    public void setPush(Long push) {
        this.push = push;
    }

    public Long getExpiration() {
        return this.expiration;
    }

    public void setExpiration(Long expiration) {
        this.expiration = expiration;
    }
}
