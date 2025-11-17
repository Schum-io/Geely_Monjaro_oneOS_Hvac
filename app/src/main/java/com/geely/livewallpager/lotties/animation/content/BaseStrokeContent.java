package com.geely.livewallpager.lotties.animation.content;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import com.geely.livewallpager.lotties.L;
import com.geely.livewallpager.lotties.LottieDrawable;
import com.geely.livewallpager.lotties.LottieProperty;
import com.geely.livewallpager.lotties.animation.LPaint;
import com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation;
import com.geely.livewallpager.lotties.animation.keyframe.FloatKeyframeAnimation;
import com.geely.livewallpager.lotties.animation.keyframe.IntegerKeyframeAnimation;
import com.geely.livewallpager.lotties.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.geely.livewallpager.lotties.model.KeyPath;
import com.geely.livewallpager.lotties.model.animatable.AnimatableFloatValue;
import com.geely.livewallpager.lotties.model.animatable.AnimatableIntegerValue;
import com.geely.livewallpager.lotties.model.layer.BaseLayer;
import com.geely.livewallpager.lotties.utils.MiscUtils;
import com.geely.livewallpager.lotties.utils.Utils;
import com.geely.livewallpager.lotties.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class BaseStrokeContent implements BaseKeyframeAnimation.AnimationListener, KeyPathElementContent, DrawingContent {
    private BaseKeyframeAnimation<ColorFilter, ColorFilter> colorFilterAnimation;
    private final List<BaseKeyframeAnimation<?, Float>> dashPatternAnimations;
    private final BaseKeyframeAnimation<?, Float> dashPatternOffsetAnimation;
    private final float[] dashPatternValues;
    protected final BaseLayer layer;
    private final LottieDrawable lottieDrawable;
    private final BaseKeyframeAnimation<?, Integer> opacityAnimation;
    final Paint paint;
    private final BaseKeyframeAnimation<?, Float> widthAnimation;
    private final PathMeasure pm = new PathMeasure();
    private final Path path = new Path();
    private final Path trimPathPath = new Path();
    private final RectF rect = new RectF();
    private final List<PathGroup> pathGroups = new ArrayList();

    BaseStrokeContent(final LottieDrawable lottieDrawable, BaseLayer layer, Paint.Cap cap, Paint.Join join, float miterLimit, AnimatableIntegerValue opacity, AnimatableFloatValue width, List<AnimatableFloatValue> dashPattern, AnimatableFloatValue offset) {
        LPaint lPaint = new LPaint(1);
        this.paint = lPaint;
        this.lottieDrawable = lottieDrawable;
        this.layer = layer;
        lPaint.setStyle(Paint.Style.STROKE);
        lPaint.setStrokeCap(cap);
        lPaint.setStrokeJoin(join);
        lPaint.setStrokeMiter(miterLimit);
        this.opacityAnimation = opacity.createAnimation();
        this.widthAnimation = width.createAnimation();
        if (offset == null) {
            this.dashPatternOffsetAnimation = null;
        } else {
            this.dashPatternOffsetAnimation = offset.createAnimation();
        }
        this.dashPatternAnimations = new ArrayList(dashPattern.size());
        this.dashPatternValues = new float[dashPattern.size()];
        for (int i = 0; i < dashPattern.size(); i++) {
            this.dashPatternAnimations.add(dashPattern.get(i).createAnimation());
        }
        layer.addAnimation(this.opacityAnimation);
        layer.addAnimation(this.widthAnimation);
        for (int i2 = 0; i2 < this.dashPatternAnimations.size(); i2++) {
            layer.addAnimation(this.dashPatternAnimations.get(i2));
        }
        BaseKeyframeAnimation<?, Float> baseKeyframeAnimation = this.dashPatternOffsetAnimation;
        if (baseKeyframeAnimation != null) {
            layer.addAnimation(baseKeyframeAnimation);
        }
        this.opacityAnimation.addUpdateListener(this);
        this.widthAnimation.addUpdateListener(this);
        for (int i3 = 0; i3 < dashPattern.size(); i3++) {
            this.dashPatternAnimations.get(i3).addUpdateListener(this);
        }
        BaseKeyframeAnimation<?, Float> baseKeyframeAnimation2 = this.dashPatternOffsetAnimation;
        if (baseKeyframeAnimation2 != null) {
            baseKeyframeAnimation2.addUpdateListener(this);
        }
    }

    @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public void onValueChanged() {
        this.lottieDrawable.invalidateSelf();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0055  */
    @Override // com.geely.livewallpager.lotties.animation.content.Content
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setContents(List<Content> r8, List<Content> r9) {
        /*
            r7 = this;
            int r0 = r8.size()
            int r0 = r0 + (-1)
            r1 = 0
            r2 = r1
        L8:
            if (r0 < 0) goto L22
            java.lang.Object r3 = r8.get(r0)
            com.geely.livewallpager.lotties.animation.content.Content r3 = (com.geely.livewallpager.lotties.animation.content.Content) r3
            boolean r4 = r3 instanceof com.geely.livewallpager.lotties.animation.content.TrimPathContent
            if (r4 == 0) goto L1f
            com.geely.livewallpager.lotties.animation.content.TrimPathContent r3 = (com.geely.livewallpager.lotties.animation.content.TrimPathContent) r3
            com.geely.livewallpager.lotties.model.content.ShapeTrimPath$Type r4 = r3.getType()
            com.geely.livewallpager.lotties.model.content.ShapeTrimPath$Type r5 = com.geely.livewallpager.lotties.model.content.ShapeTrimPath.Type.INDIVIDUALLY
            if (r4 != r5) goto L1f
            r2 = r3
        L1f:
            int r0 = r0 + (-1)
            goto L8
        L22:
            if (r2 == 0) goto L27
            r2.addListener(r7)
        L27:
            int r8 = r9.size()
            int r8 = r8 + (-1)
            r0 = r1
        L2e:
            if (r8 < 0) goto L6c
            java.lang.Object r3 = r9.get(r8)
            com.geely.livewallpager.lotties.animation.content.Content r3 = (com.geely.livewallpager.lotties.animation.content.Content) r3
            boolean r4 = r3 instanceof com.geely.livewallpager.lotties.animation.content.TrimPathContent
            if (r4 == 0) goto L55
            r4 = r3
            com.geely.livewallpager.lotties.animation.content.TrimPathContent r4 = (com.geely.livewallpager.lotties.animation.content.TrimPathContent) r4
            com.geely.livewallpager.lotties.model.content.ShapeTrimPath$Type r5 = r4.getType()
            com.geely.livewallpager.lotties.model.content.ShapeTrimPath$Type r6 = com.geely.livewallpager.lotties.model.content.ShapeTrimPath.Type.INDIVIDUALLY
            if (r5 != r6) goto L55
            if (r0 == 0) goto L4c
            java.util.List<com.geely.livewallpager.lotties.animation.content.BaseStrokeContent$PathGroup> r3 = r7.pathGroups
            r3.add(r0)
        L4c:
            com.geely.livewallpager.lotties.animation.content.BaseStrokeContent$PathGroup r0 = new com.geely.livewallpager.lotties.animation.content.BaseStrokeContent$PathGroup
            r0.<init>(r4)
            r4.addListener(r7)
            goto L69
        L55:
            boolean r4 = r3 instanceof com.geely.livewallpager.lotties.animation.content.PathContent
            if (r4 == 0) goto L69
            if (r0 != 0) goto L60
            com.geely.livewallpager.lotties.animation.content.BaseStrokeContent$PathGroup r0 = new com.geely.livewallpager.lotties.animation.content.BaseStrokeContent$PathGroup
            r0.<init>(r2)
        L60:
            java.util.List r4 = com.geely.livewallpager.lotties.animation.content.BaseStrokeContent.PathGroup.access$100(r0)
            com.geely.livewallpager.lotties.animation.content.PathContent r3 = (com.geely.livewallpager.lotties.animation.content.PathContent) r3
            r4.add(r3)
        L69:
            int r8 = r8 + (-1)
            goto L2e
        L6c:
            if (r0 == 0) goto L73
            java.util.List<com.geely.livewallpager.lotties.animation.content.BaseStrokeContent$PathGroup> r8 = r7.pathGroups
            r8.add(r0)
        L73:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.geely.livewallpager.lotties.animation.content.BaseStrokeContent.setContents(java.util.List, java.util.List):void");
    }

    @Override // com.geely.livewallpager.lotties.animation.content.DrawingContent
    public void draw(Canvas canvas, Matrix parentMatrix, int parentAlpha) {
        L.beginSection("StrokeContent#draw");
        if (Utils.hasZeroScaleAxis(parentMatrix)) {
            L.endSection("StrokeContent#draw");
            return;
        }
        this.paint.setAlpha(MiscUtils.clamp((int) ((((parentAlpha / 255.0f) * ((IntegerKeyframeAnimation) this.opacityAnimation).getIntValue()) / 100.0f) * 255.0f), 0, 255));
        this.paint.setStrokeWidth(((FloatKeyframeAnimation) this.widthAnimation).getFloatValue() * Utils.getScale(parentMatrix));
        if (this.paint.getStrokeWidth() <= 0.0f) {
            L.endSection("StrokeContent#draw");
            return;
        }
        applyDashPatternIfNeeded(parentMatrix);
        BaseKeyframeAnimation<ColorFilter, ColorFilter> baseKeyframeAnimation = this.colorFilterAnimation;
        if (baseKeyframeAnimation != null) {
            this.paint.setColorFilter(baseKeyframeAnimation.getValue());
        }
        for (int i = 0; i < this.pathGroups.size(); i++) {
            PathGroup pathGroup = this.pathGroups.get(i);
            if (pathGroup.trimPath != null) {
                applyTrimPath(canvas, pathGroup, parentMatrix);
            } else {
                L.beginSection("StrokeContent#buildPath");
                this.path.reset();
                for (int size = pathGroup.paths.size() - 1; size >= 0; size--) {
                    this.path.addPath(((PathContent) pathGroup.paths.get(size)).getPath(), parentMatrix);
                }
                L.endSection("StrokeContent#buildPath");
                L.beginSection("StrokeContent#drawPath");
                canvas.drawPath(this.path, this.paint);
                L.endSection("StrokeContent#drawPath");
            }
        }
        L.endSection("StrokeContent#draw");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void applyTrimPath(Canvas r13, PathGroup r14, Matrix r15) {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.geely.livewallpager.lotties.animation.content.BaseStrokeContent.applyTrimPath(android.graphics.Canvas, com.geely.livewallpager.lotties.animation.content.BaseStrokeContent$PathGroup, android.graphics.Matrix):void");
    }

    @Override // com.geely.livewallpager.lotties.animation.content.DrawingContent
    public void getBounds(RectF outBounds, Matrix parentMatrix, boolean applyParents) {
        L.beginSection("StrokeContent#getBounds");
        this.path.reset();
        for (int i = 0; i < this.pathGroups.size(); i++) {
            PathGroup pathGroup = this.pathGroups.get(i);
            for (int i2 = 0; i2 < pathGroup.paths.size(); i2++) {
                this.path.addPath(((PathContent) pathGroup.paths.get(i2)).getPath(), parentMatrix);
            }
        }
        this.path.computeBounds(this.rect, false);
        float floatValue = ((FloatKeyframeAnimation) this.widthAnimation).getFloatValue();
        RectF rectF = this.rect;
        float f = floatValue / 2.0f;
        rectF.set(rectF.left - f, this.rect.top - f, this.rect.right + f, this.rect.bottom + f);
        outBounds.set(this.rect);
        outBounds.set(outBounds.left - 1.0f, outBounds.top - 1.0f, outBounds.right + 1.0f, outBounds.bottom + 1.0f);
        L.endSection("StrokeContent#getBounds");
    }

    private void applyDashPatternIfNeeded(Matrix parentMatrix) {
        L.beginSection("StrokeContent#applyDashPattern");
        if (this.dashPatternAnimations.isEmpty()) {
            L.endSection("StrokeContent#applyDashPattern");
            return;
        }
        float scale = Utils.getScale(parentMatrix);
        for (int i = 0; i < this.dashPatternAnimations.size(); i++) {
            this.dashPatternValues[i] = this.dashPatternAnimations.get(i).getValue().floatValue();
            if (i % 2 == 0) {
                float[] fArr = this.dashPatternValues;
                if (fArr[i] < 1.0f) {
                    fArr[i] = 1.0f;
                }
            } else {
                float[] fArr2 = this.dashPatternValues;
                if (fArr2[i] < 0.1f) {
                    fArr2[i] = 0.1f;
                }
            }
            float[] fArr3 = this.dashPatternValues;
            fArr3[i] = fArr3[i] * scale;
        }
        BaseKeyframeAnimation<?, Float> baseKeyframeAnimation = this.dashPatternOffsetAnimation;
        this.paint.setPathEffect(new DashPathEffect(this.dashPatternValues, baseKeyframeAnimation == null ? 0.0f : scale * baseKeyframeAnimation.getValue().floatValue()));
        L.endSection("StrokeContent#applyDashPattern");
    }

    @Override // com.geely.livewallpager.lotties.model.KeyPathElement
    public void resolveKeyPath(KeyPath keyPath, int depth, List<KeyPath> accumulator, KeyPath currentPartialKeyPath) {
        MiscUtils.resolveKeyPath(keyPath, depth, accumulator, currentPartialKeyPath, this);
    }

    @Override // com.geely.livewallpager.lotties.model.KeyPathElement
    public <T> void addValueCallback(T property, LottieValueCallback<T> callback) {
        if (property == LottieProperty.OPACITY) {
            this.opacityAnimation.setValueCallback((LottieValueCallback<Integer>) callback);
            return;
        }
        if (property == LottieProperty.STROKE_WIDTH) {
            this.widthAnimation.setValueCallback((LottieValueCallback<Float>) callback);
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
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = new ValueCallbackKeyframeAnimation((LottieValueCallback) callback);
            this.colorFilterAnimation = valueCallbackKeyframeAnimation;
            valueCallbackKeyframeAnimation.addUpdateListener(this);
            this.layer.addAnimation(this.colorFilterAnimation);
        }
    }

    private static final class PathGroup {
        private final List<PathContent> paths;
        private final TrimPathContent trimPath;

        private PathGroup(TrimPathContent trimPath) {
            this.paths = new ArrayList();
            this.trimPath = trimPath;
        }
        
        static /* synthetic */ List access$100(PathGroup x0) {
            return x0.paths;
        }
    }
}
