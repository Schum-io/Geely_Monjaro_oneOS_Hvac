package com.geely.livewallpager.lotties.model.animatable;

import com.geely.livewallpager.lotties.value.Keyframe;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
abstract class BaseAnimatableValue<V, O> implements AnimatableValue<V, O> {
    final List<Keyframe<V>> keyframes;

    BaseAnimatableValue(V value) {
        this(Collections.singletonList(new Keyframe(value)));
    }

    BaseAnimatableValue(List<Keyframe<V>> keyframes) {
        this.keyframes = keyframes;
    }

    @Override // com.geely.livewallpager.lotties.model.animatable.AnimatableValue
    public List<Keyframe<V>> getKeyframes() {
        return this.keyframes;
    }

    @Override // com.geely.livewallpager.lotties.model.animatable.AnimatableValue
    public boolean isStatic() {
        return this.keyframes.isEmpty() || (this.keyframes.size() == 1 && this.keyframes.get(0).isStatic());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (!this.keyframes.isEmpty()) {
            sb.append("values=").append(Arrays.toString(this.keyframes.toArray()));
        }
        return sb.toString();
    }
}
