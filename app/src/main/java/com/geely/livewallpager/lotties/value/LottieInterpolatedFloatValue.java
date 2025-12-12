package com.geely.livewallpager.lotties.value;

import android.view.animation.Interpolator;
import com.geely.livewallpager.lotties.utils.MiscUtils;

/* loaded from: classes.dex */
public class LottieInterpolatedFloatValue extends LottieInterpolatedValue<Float> {

    public LottieInterpolatedFloatValue(Float startValue, Float endValue) {
        super(startValue, endValue);
    }

    public LottieInterpolatedFloatValue(Float startValue, Float endValue, Interpolator interpolator) {
        super(startValue, endValue, interpolator);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.geely.livewallpager.lotties.value.LottieInterpolatedValue
    public Float interpolateValue(Float startValue, Float endValue, float progress) {
        return Float.valueOf(MiscUtils.lerp(startValue.floatValue(), endValue.floatValue(), progress));
    }
}
