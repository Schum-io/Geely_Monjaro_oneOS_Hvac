package com.geely.os.tbox;

import android.content.Context;

/* loaded from: classes.dex */
public class GlyTBox {
    public static IGlyTBox create(Context context) {
        return GlyTBoxImpl.create(context);
    }
}
