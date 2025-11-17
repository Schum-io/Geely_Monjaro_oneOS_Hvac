package com.geely.livewallpager.lotties.animation.content;

import android.graphics.Path;
import android.graphics.PointF;
import com.geely.livewallpager.lotties.LottieDrawable;
import com.geely.livewallpager.lotties.LottieProperty;
import com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation;
import com.geely.livewallpager.lotties.model.KeyPath;
import com.geely.livewallpager.lotties.model.content.CircleShape;
import com.geely.livewallpager.lotties.model.content.ShapeTrimPath;
import com.geely.livewallpager.lotties.model.layer.BaseLayer;
import com.geely.livewallpager.lotties.utils.MiscUtils;
import com.geely.livewallpager.lotties.value.LottieValueCallback;
import java.util.List;

/* loaded from: classes.dex */
public class EllipseContent implements PathContent, BaseKeyframeAnimation.AnimationListener, KeyPathElementContent {
    private static final float ELLIPSE_CONTROL_POINT_PERCENTAGE = 0.55228f;
    private final CircleShape circleShape;
    private boolean isPathValid;
    private final LottieDrawable lottieDrawable;
    private final String name;
    private final BaseKeyframeAnimation<?, PointF> positionAnimation;
    private final BaseKeyframeAnimation<?, PointF> sizeAnimation;
    private final Path path = new Path();
    private CompoundTrimPathContent trimPaths = new CompoundTrimPathContent();

    public EllipseContent(LottieDrawable lottieDrawable, BaseLayer layer, CircleShape circleShape) {
        this.name = circleShape.getName();
        this.lottieDrawable = lottieDrawable;
        BaseKeyframeAnimation<PointF, PointF> baseKeyframeAnimationCreateAnimation = circleShape.getSize().createAnimation();
        this.sizeAnimation = baseKeyframeAnimationCreateAnimation;
        BaseKeyframeAnimation<PointF, PointF> baseKeyframeAnimationCreateAnimation2 = circleShape.getPosition().createAnimation();
        this.positionAnimation = baseKeyframeAnimationCreateAnimation2;
        this.circleShape = circleShape;
        layer.addAnimation(baseKeyframeAnimationCreateAnimation);
        layer.addAnimation(baseKeyframeAnimationCreateAnimation2);
        baseKeyframeAnimationCreateAnimation.addUpdateListener(this);
        baseKeyframeAnimationCreateAnimation2.addUpdateListener(this);
    }

    @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public void onValueChanged() {
        invalidate();
    }

    private void invalidate() {
        this.isPathValid = false;
        this.lottieDrawable.invalidateSelf();
    }

    @Override // com.geely.livewallpager.lotties.animation.content.Content
    public void setContents(List<Content> contentsBefore, List<Content> contentsAfter) {
        for (int i = 0; i < contentsBefore.size(); i++) {
            Content content = contentsBefore.get(i);
            if (content instanceof TrimPathContent) {
                TrimPathContent trimPathContent = (TrimPathContent) content;
                if (trimPathContent.getType() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.trimPaths.addTrimPath(trimPathContent);
                    trimPathContent.addListener(this);
                }
            }
        }
    }

    @Override // com.geely.livewallpager.lotties.animation.content.Content
    public String getName() {
        return this.name;
    }

    @Override // com.geely.livewallpager.lotties.animation.content.PathContent
    public Path getPath() {
        if (this.isPathValid) {
            return this.path;
        }
        this.path.reset();
        if (this.circleShape.isHidden()) {
            this.isPathValid = true;
            return this.path;
        }
        PointF value = this.sizeAnimation.getValue();
        float f = value.x / 2.0f;
        float f2 = value.y / 2.0f;
        float f3 = f * ELLIPSE_CONTROL_POINT_PERCENTAGE;
        float f4 = ELLIPSE_CONTROL_POINT_PERCENTAGE * f2;
        this.path.reset();
        if (this.circleShape.isReversed()) {
            float f5 = -f2;
            this.path.moveTo(0.0f, f5);
            float f6 = 0.0f - f3;
            float f7 = -f;
            float f8 = 0.0f - f4;
            this.path.cubicTo(f6, f5, f7, f8, f7, 0.0f);
            float f9 = f4 + 0.0f;
            this.path.cubicTo(f7, f9, f6, f2, 0.0f, f2);
            float f10 = f3 + 0.0f;
            this.path.cubicTo(f10, f2, f, f9, f, 0.0f);
            this.path.cubicTo(f, f8, f10, f5, 0.0f, f5);
        } else {
            float f11 = -f2;
            this.path.moveTo(0.0f, f11);
            float f12 = f3 + 0.0f;
            float f13 = 0.0f - f4;
            this.path.cubicTo(f12, f11, f, f13, f, 0.0f);
            float f14 = f4 + 0.0f;
            this.path.cubicTo(f, f14, f12, f2, 0.0f, f2);
            float f15 = 0.0f - f3;
            float f16 = -f;
            this.path.cubicTo(f15, f2, f16, f14, f16, 0.0f);
            this.path.cubicTo(f16, f13, f15, f11, 0.0f, f11);
        }
        PointF value2 = this.positionAnimation.getValue();
        this.path.offset(value2.x, value2.y);
        this.path.close();
        this.trimPaths.apply(this.path);
        this.isPathValid = true;
        return this.path;
    }

    @Override // com.geely.livewallpager.lotties.model.KeyPathElement
    public void resolveKeyPath(KeyPath keyPath, int depth, List<KeyPath> accumulator, KeyPath currentPartialKeyPath) {
        MiscUtils.resolveKeyPath(keyPath, depth, accumulator, currentPartialKeyPath, this);
    }

    @Override // com.geely.livewallpager.lotties.model.KeyPathElement
    public <T> void addValueCallback(T property, LottieValueCallback<T> callback) {
        if (property == LottieProperty.ELLIPSE_SIZE) {
            this.sizeAnimation.setValueCallback((LottieValueCallback<PointF>) callback);
        } else if (property == LottieProperty.POSITION) {
            this.positionAnimation.setValueCallback((LottieValueCallback<PointF>) callback);
        }
    }
}
