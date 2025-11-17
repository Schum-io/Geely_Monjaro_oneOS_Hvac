package com.geely.livewallpager.lotties.animation.content;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.geely.livewallpager.lotties.L;
import com.geely.livewallpager.lotties.LottieDrawable;
import com.geely.livewallpager.lotties.LottieProperty;
import com.geely.livewallpager.lotties.animation.LPaint;
import com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation;
import com.geely.livewallpager.lotties.animation.keyframe.ColorKeyframeAnimation;
import com.geely.livewallpager.lotties.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.geely.livewallpager.lotties.model.KeyPath;
import com.geely.livewallpager.lotties.model.content.ShapeFill;
import com.geely.livewallpager.lotties.model.layer.BaseLayer;
import com.geely.livewallpager.lotties.utils.MiscUtils;
import com.geely.livewallpager.lotties.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class FillContent implements DrawingContent, BaseKeyframeAnimation.AnimationListener, KeyPathElementContent {
    private final BaseKeyframeAnimation<Integer, Integer> colorAnimation;
    private BaseKeyframeAnimation<ColorFilter, ColorFilter> colorFilterAnimation;
    private final boolean hidden;
    private final BaseLayer layer;
    private final LottieDrawable lottieDrawable;
    private final String name;
    private final BaseKeyframeAnimation<Integer, Integer> opacityAnimation;
    private final Paint paint;
    private final Path path;
    private final List<PathContent> paths;

    public FillContent(final LottieDrawable lottieDrawable, BaseLayer layer, ShapeFill fill) {
        Path path = new Path();
        this.path = path;
        this.paint = new LPaint(1);
        this.paths = new ArrayList();
        this.layer = layer;
        this.name = fill.getName();
        this.hidden = fill.isHidden();
        this.lottieDrawable = lottieDrawable;
        if (fill.getColor() == null || fill.getOpacity() == null) {
            this.colorAnimation = null;
            this.opacityAnimation = null;
            return;
        }
        path.setFillType(fill.getFillType());
        BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimationCreateAnimation = fill.getColor().createAnimation();
        this.colorAnimation = baseKeyframeAnimationCreateAnimation;
        baseKeyframeAnimationCreateAnimation.addUpdateListener(this);
        layer.addAnimation(baseKeyframeAnimationCreateAnimation);
        BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimationCreateAnimation2 = fill.getOpacity().createAnimation();
        this.opacityAnimation = baseKeyframeAnimationCreateAnimation2;
        baseKeyframeAnimationCreateAnimation2.addUpdateListener(this);
        layer.addAnimation(baseKeyframeAnimationCreateAnimation2);
    }

    @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public void onValueChanged() {
        this.lottieDrawable.invalidateSelf();
    }

    @Override // com.geely.livewallpager.lotties.animation.content.Content
    public void setContents(List<Content> contentsBefore, List<Content> contentsAfter) {
        for (int i = 0; i < contentsAfter.size(); i++) {
            Content content = contentsAfter.get(i);
            if (content instanceof PathContent) {
                this.paths.add((PathContent) content);
            }
        }
    }

    @Override // com.geely.livewallpager.lotties.animation.content.Content
    public String getName() {
        return this.name;
    }

    @Override // com.geely.livewallpager.lotties.animation.content.DrawingContent
    public void draw(Canvas canvas, Matrix parentMatrix, int parentAlpha) {
        if (this.hidden) {
            return;
        }
        L.beginSection("FillContent#draw");
        this.paint.setColor(((ColorKeyframeAnimation) this.colorAnimation).getIntValue());
        this.paint.setAlpha(MiscUtils.clamp((int) ((((parentAlpha / 255.0f) * this.opacityAnimation.getValue().intValue()) / 100.0f) * 255.0f), 0, 255));
        BaseKeyframeAnimation<ColorFilter, ColorFilter> baseKeyframeAnimation = this.colorFilterAnimation;
        if (baseKeyframeAnimation != null) {
            this.paint.setColorFilter(baseKeyframeAnimation.getValue());
        }
        this.path.reset();
        for (int i = 0; i < this.paths.size(); i++) {
            this.path.addPath(this.paths.get(i).getPath(), parentMatrix);
        }
        canvas.drawPath(this.path, this.paint);
        L.endSection("FillContent#draw");
    }

    @Override // com.geely.livewallpager.lotties.animation.content.DrawingContent
    public void getBounds(RectF outBounds, Matrix parentMatrix, boolean applyParents) {
        this.path.reset();
        for (int i = 0; i < this.paths.size(); i++) {
            this.path.addPath(this.paths.get(i).getPath(), parentMatrix);
        }
        this.path.computeBounds(outBounds, false);
        outBounds.set(outBounds.left - 1.0f, outBounds.top - 1.0f, outBounds.right + 1.0f, outBounds.bottom + 1.0f);
    }

    @Override // com.geely.livewallpager.lotties.model.KeyPathElement
    public void resolveKeyPath(KeyPath keyPath, int depth, List<KeyPath> accumulator, KeyPath currentPartialKeyPath) {
        MiscUtils.resolveKeyPath(keyPath, depth, accumulator, currentPartialKeyPath, this);
    }

    @Override // com.geely.livewallpager.lotties.model.KeyPathElement
    public <T> void addValueCallback(T property, LottieValueCallback<T> callback) {
        if (property == LottieProperty.COLOR) {
            this.colorAnimation.setValueCallback((LottieValueCallback<Integer>) callback);
            return;
        }
        if (property == LottieProperty.OPACITY) {
            this.opacityAnimation.setValueCallback((LottieValueCallback<Integer>) callback);
            return;
        }
        if (property == LottieProperty.COLOR_FILTER) {
            BaseKeyframeAnimation<ColorFilter, ColorFilter> baseKeyframeAnimation = this.colorFilterAnimation;
            if (baseKeyframeAnimation != null) {
                this.layer.removeAnimation(baseKeyframeAnimation);
            }
            if (callback == null) {
                this.colorFilterAnimation = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = new ValueCallbackKeyframeAnimation((LottieValueCallback<ColorFilter>) callback);
            this.colorFilterAnimation = valueCallbackKeyframeAnimation;
            valueCallbackKeyframeAnimation.addUpdateListener(this);
            this.layer.addAnimation(this.colorFilterAnimation);
        }
    }
}
