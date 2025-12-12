package com.geely.os.car;

import android.content.Context;

/* loaded from: classes.dex */
public final class GlyCar {
    public static IGlyCar create(Context context) {
        return GlyCarImpl.create(context);
    }

    public static IGlyCar create(Context context, ConnectionListener connectionListener) {
        return GlyCarImpl.create(context, connectionListener);
    }

    public static IGlyHev createHev(Context context) {
        return GlyHevImpl.create(context);
    }

    public static IGlyCarInfo createCarInfo(Context context) {
        return GlyCarInfoImpl.create(context);
    }
}
