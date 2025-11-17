package com.geely.toolchain.hmi.blur2;

import android.graphics.Canvas;

/* loaded from: classes.dex */
interface BlurController extends BlurViewFacade {
    public static final float DEFAULT_BLUR_RADIUS = 16.0f;
    public static final float DEFAULT_SCALE_FACTOR = 6.0f;

    void destroy();

    boolean draw(Canvas canvas);

    void updateBlurViewSize();
}
