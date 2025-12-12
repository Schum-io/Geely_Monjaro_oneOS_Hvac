package com.geely.livewallpager.lotties.animation.keyframe;

import android.graphics.PointF;
import com.geely.livewallpager.lotties.value.Keyframe;
import java.util.List;

/* loaded from: classes.dex */
public class PointKeyframeAnimation extends KeyframeAnimation<PointF> {
    private final PointF point;

    public PointKeyframeAnimation(List<Keyframe<PointF>> keyframes) {
        super(keyframes);
        this.point = new PointF();
    }

    @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation
    public PointF getValue(Keyframe<PointF> keyframe, float keyframeProgress) {
        PointF pointF;
        if (keyframe.startValue == null || keyframe.endValue == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        PointF pointF2 = keyframe.startValue;
        PointF pointF3 = keyframe.endValue;
        if (this.valueCallback != null && (pointF = (PointF) this.valueCallback.getValueInternal(keyframe.startFrame, keyframe.endFrame.floatValue(), pointF2, pointF3, keyframeProgress, getLinearCurrentKeyframeProgress(), getProgress())) != null) {
            return pointF;
        }
        this.point.set(pointF2.x + ((pointF3.x - pointF2.x) * keyframeProgress), pointF2.y + (keyframeProgress * (pointF3.y - pointF2.y)));
        return this.point;
    }
}
