package com.geely.os.ota;

import android.content.Context;

/* loaded from: classes.dex */
public class GlyOTA {
    public static IGlyOTA create(Context context) {
        return GlyOTAImpl.create(context);
    }
}
