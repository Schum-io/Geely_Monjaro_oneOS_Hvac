package com.geely.hvac.utils;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Printer;

/* loaded from: classes.dex */
public class KadunMonitor implements Printer {
    private static final String LOG_END = "<<<<< Finished";
    private static final String LOG_START = ">>>>> Dispatching";
    private static final String TAG = "KadunMonitor";
    private static final int TIME_RECORD_LIMIT = 5;
    private static final int TIME_TASK_LIMIT = 14;
    private long mLoopStart;
    private final Handler mStackRecordHandler;
    private final HandlerThread mStackRecordHandlerThread;
    private final Runnable mStackRecordRunnable;

    private static class KadunMonitorHolder {
        private static final KadunMonitor INSTANCE = new KadunMonitor();

        private KadunMonitorHolder() {
        }
    }

    public static KadunMonitor getInstance() {
        return KadunMonitorHolder.INSTANCE;
    }

    private KadunMonitor() {
        this.mLoopStart = 0L;
        this.mStackRecordRunnable = new Runnable() { // from class: com.geely.hvac.utils.KadunMonitor.1
            @Override // java.lang.Runnable
            public void run() {
                StackTraceElement[] stackTrace = Looper.getMainLooper().getThread().getStackTrace();
                StringBuilder sb = new StringBuilder();
                for (StackTraceElement stackTraceElement : stackTrace) {
                    sb.append(stackTraceElement.toString()).append("\n");
                }
                LogUtil.d(KadunMonitor.TAG, "卡了，这里是堆栈\n" + ((Object) sb));
            }
        };
        HandlerThread handlerThread = new HandlerThread("STACK_RECORD_HANDLER_THREAD");
        this.mStackRecordHandlerThread = handlerThread;
        handlerThread.start();
        this.mStackRecordHandler = new Handler(handlerThread.getLooper());
    }

    @Override // android.util.Printer
    public void println(String log) {
        if (log == null) {
            return;
        }
        if (log.contains(LOG_START)) {
            this.mLoopStart = System.currentTimeMillis();
            this.mStackRecordHandler.postDelayed(this.mStackRecordRunnable, 14L);
        } else if (log.contains(LOG_END)) {
            this.mStackRecordHandler.removeCallbacks(this.mStackRecordRunnable);
            long jCurrentTimeMillis = System.currentTimeMillis() - this.mLoopStart;
            if (jCurrentTimeMillis >= 5) {
                LogUtil.d(TAG, "handler task time:" + jCurrentTimeMillis);
            }
        }
    }

    public void init() {
        Looper.getMainLooper().setMessageLogging(this);
    }
}
