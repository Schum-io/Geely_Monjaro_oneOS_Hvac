package com.geely.os.dock;

import android.content.Context;

/* loaded from: classes.dex */
public class GlyDock {
    public static IGlyDock create(Context context) {
        return GlyDockImpl.create(context);
    }
}
