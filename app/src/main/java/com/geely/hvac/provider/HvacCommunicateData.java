package com.geely.hvac.provider;

/* loaded from: classes.dex */
public class HvacCommunicateData {
    private final String mExtra;
    private final String mType;

    public HvacCommunicateData(String type, String extra) {
        this.mType = type;
        this.mExtra = extra;
    }

    public String toString() {
        return "HvacCommunicateData{type='" + this.mType + "', extra='" + this.mExtra + "'}";
    }

    public String getType() {
        return this.mType;
    }

    public String getExtra() {
        return this.mExtra;
    }
}
