package com.geely.livewallpager.lotties.model.animatable;

import android.graphics.Path;
import com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation;
import com.geely.livewallpager.lotties.animation.keyframe.ShapeKeyframeAnimation;
import com.geely.livewallpager.lotties.model.content.ShapeData;
import com.geely.livewallpager.lotties.value.Keyframe;
import java.util.List;

/* loaded from: classes.dex */
public class AnimatableShapeValue extends BaseAnimatableValue<ShapeData, Path> {
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

    public AnimatableShapeValue(List<Keyframe<ShapeData>> keyframes) {
        super((List) keyframes);
    }

    @Override // com.geely.livewallpager.lotties.model.animatable.AnimatableValue
    public BaseKeyframeAnimation<ShapeData, Path> createAnimation() {
        return new ShapeKeyframeAnimation(this.keyframes);
    }
}
