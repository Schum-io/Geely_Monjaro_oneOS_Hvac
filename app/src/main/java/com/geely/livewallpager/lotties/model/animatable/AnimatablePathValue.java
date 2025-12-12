package com.geely.livewallpager.lotties.model.animatable;

import android.graphics.PointF;
import com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation;
import com.geely.livewallpager.lotties.animation.keyframe.PathKeyframeAnimation;
import com.geely.livewallpager.lotties.animation.keyframe.PointKeyframeAnimation;
import com.geely.livewallpager.lotties.value.Keyframe;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class AnimatablePathValue implements AnimatableValue<PointF, PointF> {
    private final List<Keyframe<PointF>> keyframes;

    public AnimatablePathValue() {
        this.keyframes = Collections.singletonList(new Keyframe(new PointF(0.0f, 0.0f)));
    }

    public AnimatablePathValue(List<Keyframe<PointF>> keyframes) {
        this.keyframes = keyframes;
    }

    @Override // com.geely.livewallpager.lotties.model.animatable.AnimatableValue
    public List<Keyframe<PointF>> getKeyframes() {
        return this.keyframes;
    }

    @Override // com.geely.livewallpager.lotties.model.animatable.AnimatableValue
    public boolean isStatic() {
        return this.keyframes.size() == 1 && this.keyframes.get(0).isStatic();
    }

    @Override // com.geely.livewallpager.lotties.model.animatable.AnimatableValue
    public BaseKeyframeAnimation<PointF, PointF> createAnimation() {
        if (this.keyframes.get(0).isStatic()) {
            return new PointKeyframeAnimation(this.keyframes);
        }
        return new PathKeyframeAnimation(this.keyframes);
    }
}
