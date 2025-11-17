package com.geely.livewallpager.lotties.animation.keyframe;

import com.geely.livewallpager.lotties.utils.GammaEvaluator;
import com.geely.livewallpager.lotties.utils.MiscUtils;
import com.geely.livewallpager.lotties.value.Keyframe;
import java.util.List;

/* loaded from: classes.dex */
public class ColorKeyframeAnimation extends KeyframeAnimation<Integer> {

    public ColorKeyframeAnimation(List<Keyframe<Integer>> keyframes) {
        super(keyframes);
    }

    @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation
    Integer getValue(Keyframe<Integer> keyframe, float keyframeProgress) {
        return Integer.valueOf(getIntValue(keyframe, keyframeProgress));
    }

    public int getIntValue(Keyframe<Integer> keyframe, float keyframeProgress) {
        Integer num;
        if (keyframe.startValue == null || keyframe.endValue == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        int iIntValue = keyframe.startValue.intValue();
        int iIntValue2 = keyframe.endValue.intValue();
        if (this.valueCallback != null && (num = (Integer) this.valueCallback.getValueInternal(keyframe.startFrame, keyframe.endFrame.floatValue(), Integer.valueOf(iIntValue), Integer.valueOf(iIntValue2), keyframeProgress, getLinearCurrentKeyframeProgress(), getProgress())) != null) {
            return num.intValue();
        }
        return GammaEvaluator.evaluate(MiscUtils.clamp(keyframeProgress, 0.0f, 1.0f), iIntValue, iIntValue2);
    }

    public int getIntValue() {
        return getIntValue(getCurrentKeyframe(), getInterpolatedCurrentKeyframeProgress());
    }
}
