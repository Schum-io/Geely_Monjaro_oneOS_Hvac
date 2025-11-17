package com.geely.livewallpager.lotties.animation.keyframe;

import com.geely.livewallpager.lotties.utils.MiscUtils;
import com.geely.livewallpager.lotties.value.Keyframe;
import com.geely.livewallpager.lotties.value.ScaleXY;
import java.util.List;

/* loaded from: classes.dex */
public class ScaleKeyframeAnimation extends KeyframeAnimation<ScaleXY> {
    private final ScaleXY scaleXY;

    public ScaleKeyframeAnimation(List<Keyframe<ScaleXY>> keyframes) {
        super(keyframes);
        this.scaleXY = new ScaleXY();
    }

    @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation
    public ScaleXY getValue(Keyframe<ScaleXY> keyframe, float keyframeProgress) {
        ScaleXY scaleXY;
        if (keyframe.startValue == null || keyframe.endValue == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        ScaleXY scaleXY2 = keyframe.startValue;
        ScaleXY scaleXY3 = keyframe.endValue;
        if (this.valueCallback != null && (scaleXY = (ScaleXY) this.valueCallback.getValueInternal(keyframe.startFrame, keyframe.endFrame.floatValue(), scaleXY2, scaleXY3, keyframeProgress, getLinearCurrentKeyframeProgress(), getProgress())) != null) {
            return scaleXY;
        }
        this.scaleXY.set(MiscUtils.lerp(scaleXY2.getScaleX(), scaleXY3.getScaleX(), keyframeProgress), MiscUtils.lerp(scaleXY2.getScaleY(), scaleXY3.getScaleY(), keyframeProgress));
        return this.scaleXY;
    }
}
