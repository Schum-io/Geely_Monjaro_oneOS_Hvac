package com.geely.livewallpager.lotties.animation.keyframe;

import com.geely.livewallpager.lotties.model.DocumentData;
import com.geely.livewallpager.lotties.value.Keyframe;
import java.util.List;

/* loaded from: classes.dex */
public class TextKeyframeAnimation extends KeyframeAnimation<DocumentData> {

    public TextKeyframeAnimation(List<Keyframe<DocumentData>> keyframes) {
        super(keyframes);
    }

    @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation
    DocumentData getValue(Keyframe<DocumentData> keyframe, float keyframeProgress) {
        return keyframe.startValue;
    }
}
