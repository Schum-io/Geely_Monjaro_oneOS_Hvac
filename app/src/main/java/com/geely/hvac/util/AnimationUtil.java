package com.geely.hvac.util;

import android.view.animation.TranslateAnimation;
import android.widget.ImageView;

/* loaded from: classes.dex */
public class AnimationUtil extends RuntimeException {
    private static final String TAG = "AnimationUtil";
    private static Boolean mAnimationStop;
    private static ImageView mImageView;
    private static TranslateAnimation translateAnimation;

    /* JADX WARN: Removed duplicated region for block: B:13:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0043 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void translationImages(ImageView r2, java.util.Map r3, boolean r4) throws NumberFormatException {
        /*
            java.lang.String r0 = "AnimationUtil"
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r4)
            com.geely.hvac.util.AnimationUtil.mAnimationStop = r4
            com.geely.hvac.util.AnimationUtil.mImageView = r2
            r2 = 0
            java.lang.String r4 = "hmiX"
            java.lang.Object r4 = r3.get(r4)     // Catch: java.lang.RuntimeException -> L2a
            java.lang.String r4 = r4.toString()     // Catch: java.lang.RuntimeException -> L2a
            int r4 = java.lang.Integer.parseInt(r4)     // Catch: java.lang.RuntimeException -> L2a
            java.lang.String r1 = "hmiY"
            java.lang.Object r3 = r3.get(r1)     // Catch: java.lang.RuntimeException -> L28
            java.lang.String r3 = r3.toString()     // Catch: java.lang.RuntimeException -> L28
            int r3 = java.lang.Integer.parseInt(r3)     // Catch: java.lang.RuntimeException -> L28
            goto L34
        L28:
            r3 = move-exception
            goto L2c
        L2a:
            r3 = move-exception
            r4 = r2
        L2c:
            java.lang.String r3 = r3.getMessage()
            com.geely.hvac.utils.LogUtil.e(r0, r3)
            r3 = r2
        L34:
            android.view.animation.TranslateAnimation r1 = com.geely.hvac.util.AnimationUtil.translateAnimation
            if (r1 != 0) goto L43
            android.view.animation.TranslateAnimation r0 = new android.view.animation.TranslateAnimation
            float r4 = (float) r4
            float r3 = (float) r3
            r1 = 0
            r0.<init>(r1, r4, r1, r3)
            com.geely.hvac.util.AnimationUtil.translateAnimation = r0
            goto L68
        L43:
            r1.cancel()     // Catch: java.lang.Exception -> L4c
            android.widget.ImageView r3 = com.geely.hvac.util.AnimationUtil.mImageView     // Catch: java.lang.Exception -> L4c
            r3.clearAnimation()     // Catch: java.lang.Exception -> L4c
            goto L68
        L4c:
            r3 = move-exception
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r1 = "取消动画异常="
            java.lang.StringBuilder r4 = r4.append(r1)
            java.lang.String r3 = r3.toString()
            java.lang.StringBuilder r3 = r4.append(r3)
            java.lang.String r3 = r3.toString()
            com.geely.hvac.utils.LogUtil.e(r0, r3)
        L68:
            android.view.animation.TranslateAnimation r3 = com.geely.hvac.util.AnimationUtil.translateAnimation
            r0 = 2000(0x7d0, double:9.88E-321)
            r3.setDuration(r0)
            android.view.animation.TranslateAnimation r3 = com.geely.hvac.util.AnimationUtil.translateAnimation
            r3.setFillAfter(r2)
            android.view.animation.TranslateAnimation r3 = com.geely.hvac.util.AnimationUtil.translateAnimation
            r4 = -1
            r3.setRepeatCount(r4)
            android.widget.ImageView r3 = com.geely.hvac.util.AnimationUtil.mImageView
            r3.setVisibility(r2)
            android.widget.ImageView r2 = com.geely.hvac.util.AnimationUtil.mImageView
            android.view.animation.TranslateAnimation r3 = com.geely.hvac.util.AnimationUtil.translateAnimation
            r2.setAnimation(r3)
            android.widget.ImageView r2 = com.geely.hvac.util.AnimationUtil.mImageView
            android.view.animation.TranslateAnimation r3 = com.geely.hvac.util.AnimationUtil.translateAnimation
            r2.startAnimation(r3)
            android.view.animation.TranslateAnimation r2 = com.geely.hvac.util.AnimationUtil.translateAnimation
            com.geely.hvac.util.AnimationUtil$1 r3 = new com.geely.hvac.util.AnimationUtil$1
            r3.<init>()
            r2.setAnimationListener(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.geely.hvac.util.AnimationUtil.translationImages(android.widget.ImageView, java.util.Map, boolean):void");
    }

    public static void cancelTranslateAnimation(boolean animationStop) {
        if (translateAnimation != null) {
            translateAnimation = null;
            mAnimationStop = Boolean.valueOf(animationStop);
        }
    }

    public static void cleanTranslateAnimation() {
        ImageView imageView = mImageView;
        if (imageView != null) {
            imageView.clearAnimation();
            mImageView.setVisibility(8);
        }
    }
}
