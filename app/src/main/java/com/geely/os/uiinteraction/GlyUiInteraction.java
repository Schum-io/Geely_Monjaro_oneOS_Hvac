package com.geely.os.uiinteraction;

import android.content.Context;

/* loaded from: classes.dex */
public class GlyUiInteraction {
    public static IGlyUiInteraction create(Context context) {
        return GlyUiInteractionImpl.create(context);
    }
}
