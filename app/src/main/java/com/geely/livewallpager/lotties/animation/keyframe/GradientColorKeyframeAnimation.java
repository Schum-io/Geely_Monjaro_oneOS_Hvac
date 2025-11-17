package com.geely.livewallpager.lotties.animation.keyframe;

import com.geely.livewallpager.lotties.model.content.GradientColor;
import com.geely.livewallpager.lotties.value.Keyframe;
import java.util.List;

public class GradientColorKeyframeAnimation extends KeyframeAnimation<GradientColor> {
    private final GradientColor gradientColor;

    public GradientColorKeyframeAnimation(List<Keyframe<GradientColor>> keyframes) {
        super(keyframes);
        GradientColor startValue = keyframes.get(0).startValue;
        int size = startValue != null ? startValue.getSize() : 0;
        this.gradientColor = new GradientColor(new float[size], new int[size]);
    }

    @Override
    GradientColor getValue(Keyframe<GradientColor> keyframe, float keyframeProgress) {
        return getValueInternal(keyframe, keyframeProgress);
    }

    GradientColor getValueInternal(Keyframe<GradientColor> keyframe, float keyframeProgress) {
        this.gradientColor.lerp(keyframe.startValue, keyframe.endValue, keyframeProgress);
        return this.gradientColor;
    }
}
