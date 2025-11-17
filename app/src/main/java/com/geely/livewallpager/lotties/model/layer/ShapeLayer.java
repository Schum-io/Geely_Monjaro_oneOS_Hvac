package com.geely.livewallpager.lotties.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import com.geely.livewallpager.lotties.LottieDrawable;
import com.geely.livewallpager.lotties.animation.content.ContentGroup;
import com.geely.livewallpager.lotties.model.KeyPath;
import com.geely.livewallpager.lotties.model.content.ShapeGroup;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class ShapeLayer extends BaseLayer {
    private final ContentGroup contentGroup;

    ShapeLayer(LottieDrawable lottieDrawable, Layer layerModel) {
        super(lottieDrawable, layerModel);
        ContentGroup contentGroup = new ContentGroup(lottieDrawable, this, new ShapeGroup("__container", layerModel.getShapes(), false));
        this.contentGroup = contentGroup;
        contentGroup.setContents(Collections.emptyList(), Collections.emptyList());
    }

    @Override // com.geely.livewallpager.lotties.model.layer.BaseLayer
    void drawLayer(Canvas canvas, Matrix parentMatrix, int parentAlpha) {
        this.contentGroup.draw(canvas, parentMatrix, parentAlpha);
    }

    @Override // com.geely.livewallpager.lotties.model.layer.BaseLayer, com.geely.livewallpager.lotties.animation.content.DrawingContent
    public void getBounds(RectF outBounds, Matrix parentMatrix, boolean applyParents) {
        super.getBounds(outBounds, parentMatrix, applyParents);
        this.contentGroup.getBounds(outBounds, this.boundsMatrix, applyParents);
    }

    @Override // com.geely.livewallpager.lotties.model.layer.BaseLayer
    protected void resolveChildKeyPath(KeyPath keyPath, int depth, List<KeyPath> accumulator, KeyPath currentPartialKeyPath) {
        this.contentGroup.resolveKeyPath(keyPath, depth, accumulator, currentPartialKeyPath);
    }
}
