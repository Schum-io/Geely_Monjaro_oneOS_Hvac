package com.geely.livewallpager.lotties.animation.content;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;

/* loaded from: classes.dex */
public interface DrawingContent extends Content {
    void draw(Canvas canvas, Matrix parentMatrix, int alpha);

    void getBounds(RectF outBounds, Matrix parentMatrix, boolean applyParents);
}
