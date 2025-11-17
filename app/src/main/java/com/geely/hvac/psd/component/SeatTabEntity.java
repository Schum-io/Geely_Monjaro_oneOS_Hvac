package com.geely.hvac.psd.component;

/* loaded from: classes.dex */
public class SeatTabEntity {
    private String mTabName;
    private int mTabResource;

    public SeatTabEntity(String tabName, int tabResource) {
        this.mTabName = tabName;
        this.mTabResource = tabResource;
    }

    public String getTabName() {
        return this.mTabName;
    }

    public void setTabName(String tabName) {
        this.mTabName = tabName;
    }

    public int getTabResource() {
        return this.mTabResource;
    }

    public void setTabResource(int tabResource) {
        this.mTabResource = tabResource;
    }
}
