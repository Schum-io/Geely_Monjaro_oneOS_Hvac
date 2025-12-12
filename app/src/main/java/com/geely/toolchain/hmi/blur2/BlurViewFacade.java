package com.geely.toolchain.hmi.blur2;

import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public interface BlurViewFacade {
    BlurViewFacade setBlurAutoUpdate(boolean enabled);

    BlurViewFacade setBlurEnabled(boolean enabled);

    BlurViewFacade setBlurRadius(float radius);

    BlurViewFacade setFrameClearDrawable(Drawable frameClearDrawable);

    BlurViewFacade setOverlayColor(int overlayColor);
}
