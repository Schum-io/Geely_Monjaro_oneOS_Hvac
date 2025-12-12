package com.geely.livewallpager.lotties.value;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import com.geely.livewallpager.lotties.utils.MiscUtils;

/* loaded from: classes.dex */
public class LottieInterpolatedPointValue extends LottieInterpolatedValue<PointF> {
    private final PointF point;

    public LottieInterpolatedPointValue(PointF startValue, PointF endValue) {
        super(startValue, endValue);
        this.point = new PointF();
    }

    public LottieInterpolatedPointValue(PointF startValue, PointF endValue, Interpolator interpolator) {
        super(startValue, endValue, interpolator);
        this.point = new PointF();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.geely.livewallpager.lotties.value.LottieInterpolatedValue
    public PointF interpolateValue(PointF startValue, PointF endValue, float progress) {
        this.point.set(MiscUtils.lerp(startValue.x, endValue.x, progress), MiscUtils.lerp(startValue.y, endValue.y, progress));
        return this.point;
    }
}
