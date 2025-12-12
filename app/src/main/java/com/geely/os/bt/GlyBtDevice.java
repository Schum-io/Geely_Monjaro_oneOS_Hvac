package com.geely.os.bt;

/* loaded from: classes.dex */
public class GlyBtDevice {
    private String address;
    private String name;
    private int supportProfile = 0;
    private int category = 0;
    private int bondState = 0;
    private int connectState = 0;

    public int describeContents() {
        return 0;
    }

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getSupportProfile() {
        return this.supportProfile;
    }

    public void setSupportProfile(int supportProfile) {
        this.supportProfile = supportProfile;
    }

    public int getCategory() {
        return this.category;
    }

    public void setCategory(int category) {
        this.category = category;
    }

    public int getBondState() {
        return this.bondState;
    }

    public void setBondState(int bondState) {
        this.bondState = bondState;
    }

    public int getConnectState() {
        return this.connectState;
    }

    public void setConnectState(int connectState) {
        this.connectState = connectState;
    }
}
