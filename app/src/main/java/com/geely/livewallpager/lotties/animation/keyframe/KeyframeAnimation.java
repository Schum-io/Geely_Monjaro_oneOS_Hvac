package com.geely.livewallpager.lotties.animation.keyframe;

import com.geely.livewallpager.lotties.value.Keyframe;
import java.util.List;

/* loaded from: classes.dex */
abstract class KeyframeAnimation<T> extends BaseKeyframeAnimation<T, T> {
    KeyframeAnimation(List<? extends Keyframe<T>> keyframes) {
        super(keyframes);
    }
}
