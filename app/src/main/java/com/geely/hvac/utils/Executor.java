package com.geely.hvac.utils;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class Executor {
    public static final java.util.concurrent.Executor COMPUTER;
    private static int CPU_CORES = 0;
    private static final HandlerThread HANDLER_THREAD;
    public static final java.util.concurrent.Executor IO;
    public static final Handler IO_HANDLER;
    private static final int IO_THREAD_NUMBER = 50;
    public static final Handler MAIN;

    static {
        HandlerThread handlerThread = new HandlerThread("Executor-Thread");
        HANDLER_THREAD = handlerThread;
        handlerThread.start();
        IO_HANDLER = new Handler(handlerThread.getLooper());
        MAIN = new Handler(Looper.getMainLooper());
        IO = new ThreadPoolExecutor(0, 50, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        CPU_CORES = Runtime.getRuntime().availableProcessors();
        int i = CPU_CORES;
        COMPUTER = new ThreadPoolExecutor(i + 1, i + 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
    }
}
