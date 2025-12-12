package com.geely.livewallpager.lotties.animation.keyframe;

import com.geely.livewallpager.lotties.L;
import com.geely.livewallpager.lotties.value.Keyframe;
import com.geely.livewallpager.lotties.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class BaseKeyframeAnimation<K, A> {
    private final KeyframesWrapper<K> keyframesWrapper;
    protected LottieValueCallback<A> valueCallback;
    final List<AnimationListener> listeners = new ArrayList(1);
    private boolean isDiscrete = false;
    protected float progress = 0.0f;
    private A cachedGetValue = null;
    private float cachedStartDelayProgress = -1.0f;
    private float cachedEndProgress = -1.0f;

    public interface AnimationListener {
        void onValueChanged();
    }

    private interface KeyframesWrapper<T> {
        Keyframe<T> getCurrentKeyframe();

        float getEndProgress();

        float getStartDelayProgress();

        boolean isCachedValueEnabled(float interpolatedProgress);

        boolean isEmpty();

        boolean isValueChanged(float progress);
    }

    abstract A getValue(Keyframe<K> keyframe, float keyframeProgress);

    BaseKeyframeAnimation(List<? extends Keyframe<K>> keyframes) {
        this.keyframesWrapper = wrap(keyframes);
    }

    public void setIsDiscrete() {
        this.isDiscrete = true;
    }

    public void addUpdateListener(AnimationListener listener) {
        this.listeners.add(listener);
    }

    public void setProgress(float progress) {
        if (this.keyframesWrapper.isEmpty()) {
            return;
        }
        if (progress < getStartDelayProgress()) {
            progress = getStartDelayProgress();
        } else if (progress > getEndProgress()) {
            progress = getEndProgress();
        }
        if (progress == this.progress) {
            return;
        }
        this.progress = progress;
        if (this.keyframesWrapper.isValueChanged(progress)) {
            notifyListeners();
        }
    }

    public void notifyListeners() {
        for (int i = 0; i < this.listeners.size(); i++) {
            this.listeners.get(i).onValueChanged();
        }
    }

    protected Keyframe<K> getCurrentKeyframe() {
        L.beginSection("BaseKeyframeAnimation#getCurrentKeyframe");
        Keyframe<K> currentKeyframe = this.keyframesWrapper.getCurrentKeyframe();
        L.endSection("BaseKeyframeAnimation#getCurrentKeyframe");
        return currentKeyframe;
    }

    float getLinearCurrentKeyframeProgress() {
        if (this.isDiscrete) {
            return 0.0f;
        }
        Keyframe<K> currentKeyframe = getCurrentKeyframe();
        if (currentKeyframe.isStatic()) {
            return 0.0f;
        }
        return (this.progress - currentKeyframe.getStartProgress()) / (currentKeyframe.getEndProgress() - currentKeyframe.getStartProgress());
    }

    protected float getInterpolatedCurrentKeyframeProgress() {
        Keyframe<K> currentKeyframe = getCurrentKeyframe();
        if (currentKeyframe.isStatic()) {
            return 0.0f;
        }
        return currentKeyframe.interpolator.getInterpolation(getLinearCurrentKeyframeProgress());
    }

    private float getStartDelayProgress() {
        if (this.cachedStartDelayProgress == -1.0f) {
            this.cachedStartDelayProgress = this.keyframesWrapper.getStartDelayProgress();
        }
        return this.cachedStartDelayProgress;
    }

    float getEndProgress() {
        if (this.cachedEndProgress == -1.0f) {
            this.cachedEndProgress = this.keyframesWrapper.getEndProgress();
        }
        return this.cachedEndProgress;
    }

    public A getValue() {
        float interpolatedCurrentKeyframeProgress = getInterpolatedCurrentKeyframeProgress();
        if (this.valueCallback == null && this.keyframesWrapper.isCachedValueEnabled(interpolatedCurrentKeyframeProgress)) {
            return this.cachedGetValue;
        }
        A value = getValue(getCurrentKeyframe(), interpolatedCurrentKeyframeProgress);
        this.cachedGetValue = value;
        return value;
    }

    public float getProgress() {
        return this.progress;
    }

    public void setValueCallback(LottieValueCallback<A> valueCallback) {
        LottieValueCallback<A> lottieValueCallback = this.valueCallback;
        if (lottieValueCallback != null) {
            lottieValueCallback.setAnimation(null);
        }
        this.valueCallback = valueCallback;
        if (valueCallback != null) {
            valueCallback.setAnimation(this);
        }
    }

    private static <T> KeyframesWrapper<T> wrap(List<? extends Keyframe<T>> keyframes) {
        if (keyframes.isEmpty()) {
            return new EmptyKeyframeWrapper();
        }
        if (keyframes.size() == 1) {
            return new SingleKeyframeWrapper(keyframes);
        }
        return new KeyframesWrapperImpl(keyframes);
    }

    private static final class EmptyKeyframeWrapper<T> implements KeyframesWrapper<T> {
        @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public float getEndProgress() {
            return 1.0f;
        }

        @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public float getStartDelayProgress() {
            return 0.0f;
        }

        @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public boolean isEmpty() {
            return true;
        }

        @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public boolean isValueChanged(float progress) {
            return false;
        }

        private EmptyKeyframeWrapper() {
        }

        @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public Keyframe<T> getCurrentKeyframe() {
            throw new IllegalStateException("not implemented");
        }

        @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public boolean isCachedValueEnabled(float interpolatedProgress) {
            throw new IllegalStateException("not implemented");
        }
    }

    private static final class SingleKeyframeWrapper<T> implements KeyframesWrapper<T> {
        private float cachedInterpolatedProgress = -1.0f;
        private final Keyframe<T> keyframe;

        @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public boolean isEmpty() {
            return false;
        }

        SingleKeyframeWrapper(List<? extends Keyframe<T>> keyframes) {
            this.keyframe = keyframes.get(0);
        }

        @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public boolean isValueChanged(float progress) {
            return !this.keyframe.isStatic();
        }

        @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public Keyframe<T> getCurrentKeyframe() {
            return this.keyframe;
        }

        @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public float getStartDelayProgress() {
            return this.keyframe.getStartProgress();
        }

        @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public float getEndProgress() {
            return this.keyframe.getEndProgress();
        }

        @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public boolean isCachedValueEnabled(float interpolatedProgress) {
            if (this.cachedInterpolatedProgress == interpolatedProgress) {
                return true;
            }
            this.cachedInterpolatedProgress = interpolatedProgress;
            return false;
        }
    }

    private static final class KeyframesWrapperImpl<T> implements KeyframesWrapper<T> {
        private Keyframe<T> cachedCurrentKeyframe = null;
        private float cachedInterpolatedProgress = -1.0f;
        private Keyframe<T> currentKeyframe = findKeyframe(0.0f);
        private final List<? extends Keyframe<T>> keyframes;

        @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public boolean isEmpty() {
            return false;
        }

        KeyframesWrapperImpl(List<? extends Keyframe<T>> keyframes) {
            this.keyframes = keyframes;
        }

        @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public boolean isValueChanged(float progress) {
            if (this.currentKeyframe.containsProgress(progress)) {
                return !this.currentKeyframe.isStatic();
            }
            this.currentKeyframe = findKeyframe(progress);
            return true;
        }

        private Keyframe<T> findKeyframe(float progress) {
            List<? extends Keyframe<T>> list = this.keyframes;
            Keyframe<T> keyframe = list.get(list.size() - 1);
            if (progress >= keyframe.getStartProgress()) {
                return keyframe;
            }
            for (int size = this.keyframes.size() - 2; size >= 1; size--) {
                Keyframe<T> keyframe2 = this.keyframes.get(size);
                if (this.currentKeyframe != keyframe2 && keyframe2.containsProgress(progress)) {
                    return keyframe2;
                }
            }
            return this.keyframes.get(0);
        }

        @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public Keyframe<T> getCurrentKeyframe() {
            return this.currentKeyframe;
        }

        @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public float getStartDelayProgress() {
            return this.keyframes.get(0).getStartProgress();
        }

        @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public float getEndProgress() {
            return this.keyframes.get(this.keyframes.size() - 1).getEndProgress();
        }

        @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public boolean isCachedValueEnabled(float interpolatedProgress) {
            Keyframe<T> keyframe = this.cachedCurrentKeyframe;
            Keyframe<T> keyframe2 = this.currentKeyframe;
            if (keyframe == keyframe2 && this.cachedInterpolatedProgress == interpolatedProgress) {
                return true;
            }
            this.cachedCurrentKeyframe = keyframe2;
            this.cachedInterpolatedProgress = interpolatedProgress;
            return false;
        }
    }
}
