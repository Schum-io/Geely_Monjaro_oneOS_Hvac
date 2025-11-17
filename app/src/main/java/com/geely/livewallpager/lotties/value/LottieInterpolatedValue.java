package com.geely.livewallpager.lotties.value;

import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;

/* loaded from: classes.dex */
abstract class LottieInterpolatedValue<T> extends LottieValueCallback<T> {
    private final T endValue;
    private final Interpolator interpolator;
    private final T startValue;

    abstract T interpolateValue(T startValue, T endValue, float progress);

    LottieInterpolatedValue(T startValue, T endValue) {
        this(startValue, endValue, new LinearInterpolator());
    }

    LottieInterpolatedValue(T startValue, T endValue, Interpolator interpolator) {
        this.startValue = startValue;
        this.endValue = endValue;
        this.interpolator = interpolator;
    }

    @Override // com.geely.livewallpager.lotties.value.LottieValueCallback
    public T getValue(LottieFrameInfo<T> frameInfo) {
        return interpolateValue(this.startValue, this.endValue, this.interpolator.getInterpolation(frameInfo.getOverallProgress()));
    }
}
