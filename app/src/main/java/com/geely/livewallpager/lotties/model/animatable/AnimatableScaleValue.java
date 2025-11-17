package com.geely.livewallpager.lotties.model.animatable;

import com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation;
import com.geely.livewallpager.lotties.animation.keyframe.ScaleKeyframeAnimation;
import com.geely.livewallpager.lotties.value.Keyframe;
import com.geely.livewallpager.lotties.value.ScaleXY;
import java.util.List;

/* loaded from: classes.dex */
public class AnimatableScaleValue extends BaseAnimatableValue<ScaleXY, ScaleXY> {
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

    AnimatableScaleValue() {
        this(new ScaleXY(1.0f, 1.0f));
    }

    public AnimatableScaleValue(ScaleXY value) {
        super(value);
    }

    public AnimatableScaleValue(List<Keyframe<ScaleXY>> keyframes) {
        super((List) keyframes);
    }

    @Override // com.geely.livewallpager.lotties.model.animatable.AnimatableValue
    public BaseKeyframeAnimation<ScaleXY, ScaleXY> createAnimation() {
        return new ScaleKeyframeAnimation(this.keyframes);
    }
}
