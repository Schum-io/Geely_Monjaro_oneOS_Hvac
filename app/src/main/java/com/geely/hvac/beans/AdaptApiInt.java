package com.geely.hvac.beans;

/* loaded from: classes.dex */
public class AdaptApiInt {
    private int mValue;
    private int mZone;

    public AdaptApiInt(int value) {
        this.mValue = value;
    }

    public AdaptApiInt(int value, int zone) {
        this.mValue = value;
        this.mZone = zone;
    }

    public int getValue() {
        return this.mValue;
    }

    public int getZone() {
        return this.mZone;
    }

    public String toString() {
        return "AdaptApiInt{mValue=" + this.mValue + ", mZone=" + this.mZone + '}';
    }
}
