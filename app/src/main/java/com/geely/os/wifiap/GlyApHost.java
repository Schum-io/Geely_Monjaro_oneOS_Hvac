package com.geely.os.wifiap;

/* loaded from: classes.dex */
public class GlyApHost {
    public static final int AP_BAND_2GHZ = 0;
    public static final int AP_BAND_5GHZ = 1;
    private String apName;
    private int frequency;
    private String password;

    public GlyApHost() {
        this.frequency = 0;
    }

    public GlyApHost(String name, String psw) {
        this.frequency = 0;
        this.apName = name;
        this.password = psw;
    }

    public GlyApHost(String name, String psw, int frequency) {
        this.frequency = 0;
        this.apName = name;
        this.password = psw;
        this.frequency = frequency;
    }

    public String getApName() {
        return this.apName;
    }

    public void setApName(String apName) {
        this.apName = apName;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getFrequency() {
        return this.frequency;
    }

    public void setFrequency(int frequency) {
        this.frequency = frequency;
    }

    public String toString() {
        return "GlyApHost{apName='" + this.apName + "', password='" + this.password + "', frequency=" + this.frequency + '}';
    }
}
