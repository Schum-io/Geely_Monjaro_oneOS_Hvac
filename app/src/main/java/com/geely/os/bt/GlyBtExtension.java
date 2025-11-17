package com.geely.os.bt;

import android.content.Context;

/* loaded from: classes.dex */
public class GlyBtExtension {
    public static IGlyBtExtension createExtension(Context context) {
        return GlyBtExtensionImpl.create(context);
    }
}
