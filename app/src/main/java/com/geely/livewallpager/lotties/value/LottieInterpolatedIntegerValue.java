package com.geely.livewallpager.lotties.value;

import android.view.animation.Interpolator;
import com.geely.livewallpager.lotties.utils.MiscUtils;

/* loaded from: classes.dex */
public class LottieInterpolatedIntegerValue extends LottieInterpolatedValue<Integer> {

    public LottieInterpolatedIntegerValue(Integer startValue, Integer endValue) {
        super(startValue, endValue);
    }

    public LottieInterpolatedIntegerValue(Integer startValue, Integer endValue, Interpolator interpolator) {
        super(startValue, endValue, interpolator);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.geely.livewallpager.lotties.value.LottieInterpolatedValue
    public Integer interpolateValue(Integer startValue, Integer endValue, float progress) {
        return Integer.valueOf(MiscUtils.lerp(startValue.intValue(), endValue.intValue(), progress));
    }
}
