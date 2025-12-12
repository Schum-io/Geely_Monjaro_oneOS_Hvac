package com.geely.livewallpager.lotties.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import com.geely.livewallpager.lotties.LottieDrawable;

/* loaded from: classes.dex */
public class NullLayer extends BaseLayer {
    @Override // com.geely.livewallpager.lotties.model.layer.BaseLayer
    void drawLayer(Canvas canvas, Matrix parentMatrix, int parentAlpha) {
    }

    NullLayer(LottieDrawable lottieDrawable, Layer layerModel) {
        super(lottieDrawable, layerModel);
    }

    @Override // com.geely.livewallpager.lotties.model.layer.BaseLayer, com.geely.livewallpager.lotties.animation.content.DrawingContent
    public void getBounds(RectF outBounds, Matrix parentMatrix, boolean applyParents) {
        super.getBounds(outBounds, parentMatrix, applyParents);
        outBounds.set(0.0f, 0.0f, 0.0f, 0.0f);
    }
}
