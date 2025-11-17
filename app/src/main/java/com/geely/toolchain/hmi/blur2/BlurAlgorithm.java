package com.geely.toolchain.hmi.blur2;

import android.graphics.Bitmap;
import android.graphics.Canvas;

/* loaded from: classes.dex */
public interface BlurAlgorithm {
    Bitmap blur(Bitmap bitmap, float blurRadius);

    boolean canModifyBitmap();

    void destroy();

    Bitmap.Config getSupportedBitmapConfig();

    void render(Canvas canvas, Bitmap bitmap);

    float scaleFactor();
}
