package com.geely.hvac.utils;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import androidx.viewpager2.widget.ViewPager2;

/* loaded from: classes.dex */
public class ViewPagerHelper {
    private int previousValue;

    public void setCurrentItem(final ViewPager2 pager, int item, long duration) {
        this.previousValue = 0;
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, pager.getWidth() * (item - pager.getCurrentItem()));
        valueAnimatorOfInt.addUpdateListener(animation -> onAnimationUpdate(pager, animation));
        valueAnimatorOfInt.addListener(new Animator.AnimatorListener() { // from class: com.geely.hvac.utils.ViewPagerHelper.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animation) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animation) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                pager.beginFakeDrag();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                pager.endFakeDrag();
            }
        });
        valueAnimatorOfInt.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimatorOfInt.setDuration(duration);
        valueAnimatorOfInt.start();
    }

    public void onAnimationUpdate(ViewPager2 viewPager2, ValueAnimator valueAnimator) {
        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        viewPager2.fakeDragBy(-(iIntValue - this.previousValue));
        this.previousValue = iIntValue;
    }
}
