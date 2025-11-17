package com.geely.livewallpager.lotties.model.animatable;

import com.geely.livewallpager.lotties.animation.keyframe.TextKeyframeAnimation;
import com.geely.livewallpager.lotties.model.DocumentData;
import com.geely.livewallpager.lotties.value.Keyframe;
import java.util.List;

/* loaded from: classes.dex */
public class AnimatableTextFrame extends BaseAnimatableValue<DocumentData, DocumentData> {
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

    public AnimatableTextFrame(List<Keyframe<DocumentData>> keyframes) {
        super((List) keyframes);
    }

    @Override // com.geely.livewallpager.lotties.model.animatable.AnimatableValue
    public TextKeyframeAnimation createAnimation() {
        return new TextKeyframeAnimation(this.keyframes);
    }
}
