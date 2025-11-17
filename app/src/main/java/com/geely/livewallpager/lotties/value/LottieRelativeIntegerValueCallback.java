package com.geely.livewallpager.lotties.value;

import com.geely.livewallpager.lotties.utils.MiscUtils;

/* loaded from: classes.dex */
public class LottieRelativeIntegerValueCallback extends LottieValueCallback<Integer> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.geely.livewallpager.lotties.value.LottieValueCallback
    public Integer getValue(LottieFrameInfo<Integer> frameInfo) {
        return Integer.valueOf(MiscUtils.lerp(frameInfo.getStartValue().intValue(), frameInfo.getEndValue().intValue(), frameInfo.getInterpolatedKeyframeProgress()) + getOffset(frameInfo).intValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Integer getOffset(LottieFrameInfo<Integer> frameInfo) {
        if (this.value == 0) {
            throw new IllegalArgumentException("You must provide a static value in the constructor , call setValue, or override getValue.");
        }
        return (Integer) this.value;
    }
}
