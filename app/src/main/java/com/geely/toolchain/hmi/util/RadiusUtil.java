package com.geely.toolchain.hmi.util;

import android.util.Log;
import android.view.View;

/* loaded from: classes.dex */
public class RadiusUtil {
    private static final int ONE_OS_RADIUS = 24;
    private static final String TAG = "RadiusUtil";

    public static void setRadius(View view, int normalColor, int pressColor) {
        Log.i(TAG, "setRadius: normalColor = " + normalColor + " pressColor = " + pressColor);
        UiUtil.setBackgroundColor(view, normalColor, pressColor, UiUtil.dp2px(view.getContext(), 24.0f));
    }
}
