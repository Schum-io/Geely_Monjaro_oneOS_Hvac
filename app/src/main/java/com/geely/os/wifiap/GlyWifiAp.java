package com.geely.os.wifiap;

import android.content.Context;

/* loaded from: classes.dex */
public class GlyWifiAp {
    public static IGlyWifiAp create(Context context) {
        return GlyWifiApImpl.create(context);
    }
}
