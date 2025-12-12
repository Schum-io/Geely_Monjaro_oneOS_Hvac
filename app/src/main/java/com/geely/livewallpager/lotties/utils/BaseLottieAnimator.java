package com.geely.livewallpager.lotties.utils;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.os.Build;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes.dex */
public abstract class BaseLottieAnimator extends ValueAnimator {
    private final Set<AnimatorUpdateListener> updateListeners = new CopyOnWriteArraySet();
    private final Set<AnimatorListener> listeners = new CopyOnWriteArraySet();

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public long getStartDelay() {
        throw new UnsupportedOperationException("LottieAnimator does not support getStartDelay.");
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void setStartDelay(long startDelay) {
        throw new UnsupportedOperationException("LottieAnimator does not support setStartDelay.");
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public ValueAnimator setDuration(long duration) {
        throw new UnsupportedOperationException("LottieAnimator does not support setDuration.");
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void setInterpolator(TimeInterpolator value) {
        throw new UnsupportedOperationException("LottieAnimator does not support setInterpolator.");
    }

    @Override // android.animation.ValueAnimator
    public void addUpdateListener(AnimatorUpdateListener listener) {
        this.updateListeners.add(listener);
    }

    @Override // android.animation.ValueAnimator
    public void removeUpdateListener(AnimatorUpdateListener listener) {
        this.updateListeners.remove(listener);
    }

    @Override // android.animation.ValueAnimator
    public void removeAllUpdateListeners() {
        this.updateListeners.clear();
    }

    @Override // android.animation.Animator
    public void addListener(AnimatorListener listener) {
        this.listeners.add(listener);
    }

    @Override // android.animation.Animator
    public void removeListener(AnimatorListener listener) {
        this.listeners.remove(listener);
    }

    @Override // android.animation.Animator
    public void removeAllListeners() {
        this.listeners.clear();
    }

    void notifyStart(boolean isReverse) {
        for (AnimatorListener animatorListener : this.listeners) {
            if (Build.VERSION.SDK_INT >= 26) {
                animatorListener.onAnimationStart(this, isReverse);
            } else {
                animatorListener.onAnimationStart(this);
            }
        }
    }

    void notifyRepeat() {
        Iterator<AnimatorListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onAnimationRepeat(this);
        }
    }

    void notifyEnd(boolean isReverse) {
        for (AnimatorListener animatorListener : this.listeners) {
            if (Build.VERSION.SDK_INT >= 26) {
                animatorListener.onAnimationEnd(this, isReverse);
            } else {
                animatorListener.onAnimationEnd(this);
            }
        }
    }

    void notifyCancel() {
        Iterator<AnimatorListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onAnimationCancel(this);
        }
    }

    void notifyUpdate() {
        Iterator<AnimatorUpdateListener> it = this.updateListeners.iterator();
        while (it.hasNext()) {
            it.next().onAnimationUpdate(this);
        }
    }
}
