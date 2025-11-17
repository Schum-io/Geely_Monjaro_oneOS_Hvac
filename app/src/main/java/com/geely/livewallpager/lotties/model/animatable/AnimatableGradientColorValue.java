package com.geely.livewallpager.lotties.model.animatable;

import com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation;
import com.geely.livewallpager.lotties.animation.keyframe.GradientColorKeyframeAnimation;
import com.geely.livewallpager.lotties.model.content.GradientColor;
import com.geely.livewallpager.lotties.value.Keyframe;
import java.util.List;

/* loaded from: classes.dex */
public class AnimatableGradientColorValue extends BaseAnimatableValue<GradientColor, GradientColor> {
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

    public AnimatableGradientColorValue(List<Keyframe<GradientColor>> keyframes) {
        super((List) keyframes);
    }

    @Override // com.geely.livewallpager.lotties.model.animatable.AnimatableValue
    public BaseKeyframeAnimation<GradientColor, GradientColor> createAnimation() {
        return new GradientColorKeyframeAnimation(this.keyframes);
    }
}
