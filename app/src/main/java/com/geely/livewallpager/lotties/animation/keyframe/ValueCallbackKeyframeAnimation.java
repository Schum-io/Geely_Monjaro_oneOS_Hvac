package com.geely.livewallpager.lotties.animation.keyframe;

import com.geely.livewallpager.lotties.value.Keyframe;
import com.geely.livewallpager.lotties.value.LottieFrameInfo;
import com.geely.livewallpager.lotties.value.LottieValueCallback;
import java.util.Collections;

/* loaded from: classes.dex */
public class ValueCallbackKeyframeAnimation<K, A> extends BaseKeyframeAnimation<K, A> {
    private final LottieFrameInfo<A> frameInfo;
    private final A valueCallbackValue;

    @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation
    float getEndProgress() {
        return 1.0f;
    }

    public ValueCallbackKeyframeAnimation(LottieValueCallback<A> valueCallback) {
        this(valueCallback, null);
    }

    public ValueCallbackKeyframeAnimation(LottieValueCallback<A> valueCallback, A valueCallbackValue) {
        super(Collections.emptyList());
        this.frameInfo = new LottieFrameInfo<>();
        setValueCallback(valueCallback);
        this.valueCallbackValue = valueCallbackValue;
    }

    @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation
    public void setProgress(float progress) {
        this.progress = progress;
    }

    @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation
    public void notifyListeners() {
        if (this.valueCallback != null) {
            super.notifyListeners();
        }
    }

    @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation
    public A getValue() {
        LottieValueCallback<A> lottieValueCallback = this.valueCallback;
        A a = this.valueCallbackValue;
        return lottieValueCallback.getValueInternal(0.0f, 0.0f, a, a, getProgress(), getProgress(), getProgress());
    }

    @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation
    A getValue(Keyframe<K> keyframe, float keyframeProgress) {
        return getValue();
    }
}
