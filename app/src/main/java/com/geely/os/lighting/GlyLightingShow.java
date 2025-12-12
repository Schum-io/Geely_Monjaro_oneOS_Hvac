package com.geely.os.lighting;

import android.content.Context;

/* loaded from: classes.dex */
public class GlyLightingShow {
    public static IGlyLightingShow create(Context context) {
        return GlyLightingShowImpl.create(context);
    }
}
