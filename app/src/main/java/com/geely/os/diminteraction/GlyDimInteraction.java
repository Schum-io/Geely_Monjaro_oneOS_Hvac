package com.geely.os.diminteraction;

import android.content.Context;

/* loaded from: classes.dex */
public class GlyDimInteraction {
    public static IGlyDimInteraction create(Context context) {
        return GlyDimInteractionImpl.create(context);
    }
}
