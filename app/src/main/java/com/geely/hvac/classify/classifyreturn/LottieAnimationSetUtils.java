package com.geely.hvac.classify.classifyreturn;

import android.animation.ValueAnimator;
import com.geely.hvac.utils.LogUtil;
import com.geely.livewallpager.lotties.LottieAnimationView;
import com.geely.toolchain.hmi.view.HmiImageView;
import java.util.Map;

/* loaded from: classes.dex */
public class LottieAnimationSetUtils {
    private static final String TAG = "LottieAnimationSetUtils";
    private static Boolean mCancel = false;

    public static void oneLottieAnimationSet(final LottieAnimationView lottieImages, final HmiImageView seatBg, Map key) {
        try {
            seatBg.setVisibility(8);
            lottieImages.setVisibility(0);
            lottieImages.setAnimation(key.get("json").toString());
            lottieImages.setImageAssetsFolder(key.get("images").toString());
            lottieImages.playAnimation();
            lottieImages.addAnimatorUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.geely.hvac.classify.classifyreturn.-$$Lambda$LottieAnimationSetUtils$fFu-T5Q_D5Xr6Uai0Pmi1fwiTKM
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    LottieAnimationSetUtils.lambda$oneLottieAnimationSet$0(lottieImages, seatBg, valueAnimator);
                }
            });
        } catch (RuntimeException e) {
            LogUtil.e(TAG, e.getMessage());
        }
    }

    static /* synthetic */ void lambda$oneLottieAnimationSet$0(LottieAnimationView lottieAnimationView, HmiImageView hmiImageView, ValueAnimator valueAnimator) {
        if (valueAnimator.getAnimatedFraction() == 1.0f) {
            LogUtil.i(TAG, "动画播放完1次  = " + lottieAnimationView.getId());
            lottieAnimationView.cancelAnimation();
            lottieAnimationView.setVisibility(8);
            hmiImageView.setVisibility(0);
        }
    }

    public static void startLottieAnimationSet(LottieAnimationView lottieImages, Map key) {
        mCancel = false;
        try {
            lottieImages.setVisibility(0);
            lottieImages.setAnimation(key.get("json").toString());
            lottieImages.setImageAssetsFolder(key.get("images").toString());
            lottieImages.playAnimation();
        } catch (RuntimeException e) {
            LogUtil.e(TAG, e.getMessage());
        }
    }

    public static void stopLottieAnimationSet(final LottieAnimationView lottieImages, boolean cancel) {
        mCancel = Boolean.valueOf(cancel);
        lottieImages.addAnimatorUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.geely.hvac.classify.classifyreturn.-$$Lambda$LottieAnimationSetUtils$vNM0nNmRqPgzpRw37MLlTMdpMq4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                LottieAnimationSetUtils.lambda$stopLottieAnimationSet$1(lottieImages, valueAnimator);
            }
        });
    }

    static /* synthetic */ void lambda$stopLottieAnimationSet$1(LottieAnimationView lottieAnimationView, ValueAnimator valueAnimator) {
        if (valueAnimator.getAnimatedFraction() == 1.0f && mCancel.booleanValue()) {
            lottieAnimationView.cancelAnimation();
            lottieAnimationView.setVisibility(8);
        }
    }
}
