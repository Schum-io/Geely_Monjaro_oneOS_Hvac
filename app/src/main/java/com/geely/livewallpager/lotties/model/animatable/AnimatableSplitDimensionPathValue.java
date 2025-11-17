package com.geely.livewallpager.lotties.model.animatable;

import android.graphics.PointF;
import com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation;
import com.geely.livewallpager.lotties.animation.keyframe.SplitDimensionPathKeyframeAnimation;
import com.geely.livewallpager.lotties.value.Keyframe;
import java.util.List;

/* loaded from: classes.dex */
public class AnimatableSplitDimensionPathValue implements AnimatableValue<PointF, PointF> {
    private final AnimatableFloatValue animatableXDimension;
    private final AnimatableFloatValue animatableYDimension;

    public AnimatableSplitDimensionPathValue(AnimatableFloatValue animatableXDimension, AnimatableFloatValue animatableYDimension) {
        this.animatableXDimension = animatableXDimension;
        this.animatableYDimension = animatableYDimension;
    }

    @Override // com.geely.livewallpager.lotties.model.animatable.AnimatableValue
    public List<Keyframe<PointF>> getKeyframes() {
        throw new UnsupportedOperationException("Cannot call getKeyframes on AnimatableSplitDimensionPathValue.");
    }

    @Override // com.geely.livewallpager.lotties.model.animatable.AnimatableValue
    public boolean isStatic() {
        return this.animatableXDimension.isStatic() && this.animatableYDimension.isStatic();
    }

    @Override // com.geely.livewallpager.lotties.model.animatable.AnimatableValue
    public BaseKeyframeAnimation<PointF, PointF> createAnimation() {
        return new SplitDimensionPathKeyframeAnimation(this.animatableXDimension.createAnimation(), this.animatableYDimension.createAnimation());
    }
}
