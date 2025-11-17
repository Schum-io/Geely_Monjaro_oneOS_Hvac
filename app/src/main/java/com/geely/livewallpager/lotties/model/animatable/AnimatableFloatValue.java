package com.geely.livewallpager.lotties.model.animatable;

import com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation;
import com.geely.livewallpager.lotties.animation.keyframe.FloatKeyframeAnimation;
import com.geely.livewallpager.lotties.value.Keyframe;
import java.util.List;

/* loaded from: classes.dex */
public class AnimatableFloatValue extends BaseAnimatableValue<Float, Float> {
    @Override // com.geely.livewallpager.lotties.model.animatable.BaseAnimatableValue, com.geely.livewallpager.lotties.model.animatable.AnimatableValue
    public /* bridge */ /* synthetic */ List getKeyframes() {
        return super.getKeyframes();
    }

    @Override // com.geely.livewallpager.lotties.model.animatable.BaseAnimatableValue, com.geely.livewallpager.lotties.model.animatable.AnimatableValue
    public /* bridge */ /* synthetic */ boolean isStatic() {
        return super.isStatic();
    }

    @Override // com.geely.livewallpager.lotties.model.animatable.BaseAnimatableValue
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    AnimatableFloatValue() {
        super(Float.valueOf(0.0f));
    }

    public AnimatableFloatValue(List<Keyframe<Float>> keyframes) {
        super((List) keyframes);
    }

    @Override // com.geely.livewallpager.lotties.model.animatable.AnimatableValue
    public BaseKeyframeAnimation<Float, Float> createAnimation() {
        return new FloatKeyframeAnimation(this.keyframes);
    }
}
