package com.geely.hvac.util;

import android.os.SystemClock;
import com.geely.hvac.utils.LogUtil;

/* loaded from: classes.dex */
public class ClickUtils {
    private static final int MAX_CLICK_DELAY_TIME = 800;
    private static final int MIN_CLICK_DELAY_TIME = 500;
    private static final String TAG = "ClickUtils";
    private static long lastClickTime;
    private static long mLastTime;

    public static boolean isFastClick() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (Math.abs(jCurrentTimeMillis - lastClickTime) <= 500) {
            LogUtil.i(TAG, "is fast click");
            return true;
        }
        lastClickTime = jCurrentTimeMillis;
        return false;
    }

    public static boolean isSeatFastClick() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (Math.abs(jCurrentTimeMillis - lastClickTime) <= 800) {
            LogUtil.i(TAG, "is fast click");
            return true;
        }
        lastClickTime = jCurrentTimeMillis;
        return false;
    }

    public static void uploadTime() {
        lastClickTime = 0L;
    }

    public static boolean isEffectiveDate() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - mLastTime < 300) {
            return false;
        }
        LogUtil.i(TAG, "is effective date");
        mLastTime = jElapsedRealtime;
        return true;
    }
}
