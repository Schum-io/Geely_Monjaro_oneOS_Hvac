package com.geely.os.car;

import android.util.Log;

/* loaded from: classes.dex */
public class GlyLog {
    public static final String DEFAULT_TAG = "OneVehicleSDK";
    private static final String TAG = "";

    public static void i(String TAG2, String msg) {
        Log.i(TAG2, getFileLineMethod() + msg);
    }

    public static void i(String msg) {
        Log.i(TAG, getFileLineMethod() + msg);
    }

    public static void d(String TAG2, String msg) {
        Log.d(TAG2, getFileLineMethod() + msg);
    }

    public static void d(String msg) {
        Log.d(TAG, getFileLineMethod() + msg);
    }

    public static void e(String msg) {
        Log.e(TAG, getFileLineMethod() + msg);
    }

    public static void e(String TAG2, String msg) {
        Log.e(TAG2, getFileLineMethod() + msg);
    }

    public static void v(String msg) {
        Log.i(TAG, getFileLineMethod() + msg);
    }

    public static void v(String TAG2, String msg) {
        Log.i(TAG2, getFileLineMethod() + msg);
    }

    public static void w(String msg) {
        Log.w(TAG, getFileLineMethod() + msg);
    }

    public static void w(String TAG2, String msg) {
        Log.w(TAG2, getFileLineMethod() + msg);
    }

    public static String getFileLineMethod() {
        Thread threadCurrentThread = Thread.currentThread();
        StackTraceElement stackTraceElement = threadCurrentThread.getStackTrace()[4];
        return "[" + threadCurrentThread.getName() + "](" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ") ";
    }
}
