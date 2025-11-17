package com.geely.hvac.beans;

/* loaded from: classes.dex */
public class AdaptApiFloat {
    private float mValue;
    private int mZone;

    public AdaptApiFloat(float value) {
        this.mValue = value;
    }

    public AdaptApiFloat(float value, int zone) {
        this.mValue = value;
        this.mZone = zone;
    }

    public float getValue() {
        return this.mValue;
    }

    public int getZone() {
        return this.mZone;
    }

    public String toString() {
        return "AdaptApiFloat{mValue=" + this.mValue + ", mZone=" + this.mZone + '}';
    }
}
