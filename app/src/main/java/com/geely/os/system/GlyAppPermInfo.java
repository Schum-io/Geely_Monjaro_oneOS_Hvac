package com.geely.os.system;

import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public class GlyAppPermInfo {
    private Drawable mAppIcon;
    private CharSequence mAppLabel;
    private String mAppPackageName;
    private int mGrantMode;
    private String mPerm;
    private Drawable mPermIcon;
    private CharSequence mPermLabel;

    public GlyAppPermInfo(String mAppPackageName, String mPerm, CharSequence mPermLabel, Drawable mPermIcon) {
        this.mAppPackageName = mAppPackageName;
        this.mPerm = mPerm;
        this.mPermLabel = mPermLabel;
        this.mPermIcon = mPermIcon;
    }

    public GlyAppPermInfo(String mAppPackageName, CharSequence mAppLabel, Drawable mAppIcon) {
        this.mAppPackageName = mAppPackageName;
        this.mAppLabel = mAppLabel;
        this.mAppIcon = mAppIcon;
    }

    public String getAppPackageName() {
        return this.mAppPackageName;
    }

    public void setAppPackageName(String mAppPackageName) {
        this.mAppPackageName = mAppPackageName;
    }

    public CharSequence getAppLabel() {
        return this.mAppLabel;
    }

    public void setAppLabel(CharSequence mAppLabel) {
        this.mAppLabel = mAppLabel;
    }

    public Drawable getAppIcon() {
        return this.mAppIcon;
    }

    public void setAppIcon(Drawable mAppIcon) {
        this.mAppIcon = mAppIcon;
    }

    public String getPerm() {
        return this.mPerm;
    }

    public void setPerm(String mPerm) {
        this.mPerm = mPerm;
    }

    public CharSequence getPermLabel() {
        return this.mPermLabel;
    }

    public void setPermLabel(CharSequence mPermLabel) {
        this.mPermLabel = mPermLabel;
    }

    public Drawable getPermIcon() {
        return this.mPermIcon;
    }

    public void setPermIcon(Drawable mPermIcon) {
        this.mPermIcon = mPermIcon;
    }

    public int getGrantMode() {
        return this.mGrantMode;
    }

    public void setGrantMode(int mGrantMode) {
        this.mGrantMode = mGrantMode;
    }
}
