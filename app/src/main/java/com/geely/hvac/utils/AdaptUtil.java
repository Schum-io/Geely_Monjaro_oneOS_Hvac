package com.geely.hvac.utils;

import com.geely.os.car.GlySupportStatus;

/* loaded from: classes.dex */
public class AdaptUtil {
    public static boolean isFunctionAvailable(int supportState) {
        return supportState == GlySupportStatus.active || supportState == GlySupportStatus.notactive;
    }
}
