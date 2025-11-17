package com.geely.livewallpager.lotties.model;

import com.geely.livewallpager.lotties.value.LottieValueCallback;
import java.util.List;

/* loaded from: classes.dex */
public interface KeyPathElement {
    <T> void addValueCallback(T property, LottieValueCallback<T> callback);

    void resolveKeyPath(KeyPath keyPath, int depth, List<KeyPath> accumulator, KeyPath currentPartialKeyPath);
}
