package com.geely.hvac.utils;

import com.geely.hvac.GlyAcApp;
import com.geely.hvac.R;

/* loaded from: classes.dex */
public class DayNightUtil {
    public static boolean isLight() {
        return GlyAcApp.getInstance().getResources().getBoolean(R.bool.isLight);
    }
}
