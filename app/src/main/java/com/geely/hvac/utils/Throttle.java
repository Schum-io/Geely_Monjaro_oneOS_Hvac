package com.geely.hvac.utils;

/* loaded from: classes.dex */
public class Throttle {
    private long lastRunTimeMillis = 0;
    private int wait;

    public interface ThrottleTask {
        void invoke(Object[] args);
    }

    public Throttle(int wait) {
        this.wait = wait;
    }

    public int getWait() {
        return this.wait;
    }

    public void setWait(int wait) {
        this.wait = wait;
    }

    public void run(ThrottleTask task, Object... args) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = this.lastRunTimeMillis;
        if (jCurrentTimeMillis > this.wait + j || jCurrentTimeMillis < j) {
            this.lastRunTimeMillis = jCurrentTimeMillis;
            task.invoke(args);
        }
    }
}
