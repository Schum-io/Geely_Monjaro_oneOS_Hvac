package com.geely.hvac.utils;

import android.util.Log;

/* loaded from: classes.dex */
public class LogUtil {
    private static final String prefix = "HvacApp:092900";

    public static void d(String tag, Object obj) {
        Log.d("HvacApp:092900:" + tag, String.valueOf(obj));
    }

    public static void e(String tag, Object obj) {
        Log.e("HvacApp:092900:" + tag, String.valueOf(obj));
    }

    public static void i(String tag, Object obj) {
        Log.i("HvacApp:092900:" + tag, String.valueOf(obj));
    }

    public static void w(String tag, Object obj) {
        Log.w("HvacApp:092900:" + tag, String.valueOf(obj));
    }
}
