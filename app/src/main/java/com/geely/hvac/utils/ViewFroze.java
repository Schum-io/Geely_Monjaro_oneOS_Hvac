package com.geely.hvac.utils;

/* loaded from: classes.dex */
public class ViewFroze {
    public static final int FROZE_TIME = 500;
    private boolean hasGet;
    private final long mStart = System.currentTimeMillis();
    private final int mTime;

    public ViewFroze(int time) {
        this.mTime = time;
    }

    public boolean isFroze(boolean ignoreCount) {
        return System.currentTimeMillis() - this.mStart < ((long) this.mTime);
    }

    public boolean isFroze() {
        boolean z = !this.hasGet && System.currentTimeMillis() - this.mStart < ((long) this.mTime);
        this.hasGet = true;
        return z;
    }
}
