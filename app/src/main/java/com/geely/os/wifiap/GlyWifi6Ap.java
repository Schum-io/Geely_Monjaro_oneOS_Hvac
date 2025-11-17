package com.geely.os.wifiap;

import android.content.Context;

/* loaded from: classes.dex */
public class GlyWifi6Ap {
    public static IGlyWifi6Ap create(Context context) {
        return GlyWifi6ApImpl.create(context);
    }
}
