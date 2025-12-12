package com.geely.hvac.utils;

import android.os.Looper;

/* loaded from: classes.dex */
public class CommonUtil {
    public static boolean isMainThread() {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }
}
