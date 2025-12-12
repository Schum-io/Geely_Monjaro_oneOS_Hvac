package com.geely.hvac.utils;

import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class Debounce {
    private Timer timer;
    private int wait;

    public interface DebounceTask {
        void invoke(Object[] args);
    }

    public static void main(String[] args) {
    }

    public Debounce(int wait) {
        this.wait = 0;
        this.wait = wait;
    }

    public int getWait() {
        return this.wait;
    }

    public void setWait(int wait) {
        this.wait = wait;
    }

    public void run(final DebounceTask task, final Object... args) {
        Timer timer = this.timer;
        if (timer != null) {
            timer.cancel();
        }
        Timer timer2 = new Timer();
        this.timer = timer2;
        timer2.schedule(new TimerTask() { // from class: com.geely.hvac.utils.Debounce.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                task.invoke(args);
                if (Debounce.this.timer != null) {
                    Debounce.this.timer.cancel();
                }
            }
        }, this.wait);
    }
}
