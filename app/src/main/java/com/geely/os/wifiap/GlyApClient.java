package com.geely.os.wifiap;

/* loaded from: classes.dex */
public class GlyApClient {
    private boolean forbid;
    private String ip;
    private String mac;
    private String name;

    public GlyApClient() {
    }

    public GlyApClient(String name, String ip, String mac) {
        this.name = name;
        this.ip = ip;
        this.mac = mac;
    }

    public String getIp() {
        return this.ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getMac() {
        return this.mac;
    }

    public void setMac(String mac) {
        this.mac = mac;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isForbid() {
        return this.forbid;
    }

    public void setForbid(boolean forbid) {
        this.forbid = forbid;
    }
}
