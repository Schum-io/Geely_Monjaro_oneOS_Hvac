package com.geely.hvac.component;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.airbnb.lottie.LottieListener;
import com.geely.hvac.R;
import com.geely.hvac.utils.Executor;
import com.geely.hvac.utils.LogUtil;
import java.io.File;

/* loaded from: classes.dex */
public class BlowWindAnimateIons extends BlowWindAnimateBasic {
    private static final String LOTTIE_PREFIX = "lottie/";
    String currentResPath;
    boolean mActivityVisible;
    private boolean mIsGclean;
    boolean mPagerVisible;
    AnimatorListenerAdapter secondPartAnimatorListener;

    public static void bindVisible(final BlowWindAnimateIons v, final boolean visible) {
        LogUtil.d(BlowWindAnimateBasic.TAG, "bindVisible, visible:" + visible);
        v.setVisibility(8);
        Executor.MAIN.postDelayed(new Runnable() { // from class: com.geely.hvac.component.BlowWindAnimateIons.1
            @Override // java.lang.Runnable
            public void run() {
                if (visible) {
                    v.setVisibility(0);
                } else {
                    v.setVisibility(8);
                }
            }
        }, 200L);
    }

    public static void bindActivityVisible(BlowWindAnimateIons v, boolean visible) {
        LogUtil.d(BlowWindAnimateBasic.TAG, "bindActivityVisible, visible:" + visible);
        v.mActivityVisible = visible;
        if (visible) {
            v.loadAnimate();
        }
        v.onPageVisiChanged();
    }

    public static void bindPagerVisible(BlowWindAnimateIons v, boolean visible) {
        v.mPagerVisible = visible;
        v.onPageVisiChanged();
    }

    public static void bindLottiePath(BlowWindAnimateIons v, String path) {
        LogUtil.i(BlowWindAnimateBasic.TAG, "bindLottieAniPath, path:" + path);
        v.currentResPath = path;
        v.loadAnimate();
    }

    public BlowWindAnimateIons(Context context) {
        super(context);
        this.mPagerVisible = false;
        this.mActivityVisible = false;
        this.secondPartAnimatorListener = new AnonymousClass2();
        init(context, (AttributeSet) null);
    }

    public BlowWindAnimateIons(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mPagerVisible = false;
        this.mActivityVisible = false;
        this.secondPartAnimatorListener = new AnonymousClass2();
        init(context, attrs);
    }

    public BlowWindAnimateIons(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mPagerVisible = false;
        this.mActivityVisible = false;
        this.secondPartAnimatorListener = new AnonymousClass2();
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        if (attrs == null) {
            LogUtil.d(BlowWindAnimateBasic.TAG, "init, attr is null");
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.BlowWindAnimateIons);
        this.mIsGclean = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // com.geely.hvac.component.BlowWindAnimateBasic
    boolean getPageVisibility() {
        return getVisibility() == 0 && this.mPagerVisible;
    }

    @Override // com.geely.hvac.component.BlowWindAnimateBasic
    boolean getActivityVisibility() {
        return this.mActivityVisible;
    }

    @Override // com.geely.hvac.component.BlowWindAnimateBasic
    public void loadAnimate() {
        if (!getPageVisibility()) {
            LogUtil.i(BlowWindAnimateBasic.TAG, "getPageVisibility:false");
            setNextVisiReloadAnimate(true);
            return;
        }
        String strFindAnimatePath = findAnimatePath();
        if (!new File(strFindAnimatePath).exists()) {
            setNextVisiReloadAnimate(true);
            return;
        }
        LogUtil.i(BlowWindAnimateBasic.TAG, "getPageVisibility:true");
        if (this.currentResPath == null) {
            LogUtil.i(BlowWindAnimateBasic.TAG, "currentResPath null!");
            return;
        }
        String str = strFindAnimatePath + "/animate.json";
        String str2 = strFindAnimatePath + "/images/";
        LogUtil.i(BlowWindAnimateBasic.TAG, "jsonPath:" + str);
        if (!new File(str).exists()) {
            setNextVisiReloadAnimate(true);
        } else if (!new File(str2).exists()) {
            setNextVisiReloadAnimate(true);
        } else {
            cancelAnimation();
            setAnimationPath(str, str2, new Runnable() { // from class: com.geely.hvac.component.-$$Lambda$BlowWindAnimateIons$weJd5ZP4zURRQf4PjPxwrxohaPA
                @Override // java.lang.Runnable
                public final void run() {
                    lambda$loadAnimate$0$BlowWindAnimateIons();
                }
            }, new LottieListener() { // from class: com.geely.hvac.component.-$$Lambda$BlowWindAnimateIons$uq-r-u0IUJJul6g8Zo3e93-kmTY
                @Override // com.airbnb.lottie.LottieListener
                public final void onResult(Object obj) {
                    lambda$loadAnimate$1$BlowWindAnimateIons((Throwable) obj);
                }
            });
        }
    }

    public /* synthetic */ void lambda$loadAnimate$0$BlowWindAnimateIons() {
        LogUtil.i(BlowWindAnimateBasic.TAG, "动画加载成功");
        setRepeatCount(0);
        removeAnimatorListener(this.secondPartAnimatorListener);
        addAnimatorListener(this.secondPartAnimatorListener);
        playAnimation();
    }

    public /* synthetic */ void lambda$loadAnimate$1$BlowWindAnimateIons(Throwable th) {
        setNextVisiReloadAnimate(true);
        LogUtil.i(BlowWindAnimateBasic.TAG, th);
    }

    /* renamed from: com.geely.hvac.component.BlowWindAnimateIons$2, reason: invalid class name */
    class AnonymousClass2 extends AnimatorListenerAdapter {
        AnonymousClass2() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            super.onAnimationEnd(animation);
            BlowWindAnimateIons.this.removeAnimatorListener(this);
            String str = BlowWindAnimateIons.this.findAnimatePath() + "_circle";
            final String str2 = str + "/animate.json";
            BlowWindAnimateIons.this.setAnimationPath(str2, str + "/images/", new Runnable() { // from class: com.geely.hvac.component.-$$Lambda$BlowWindAnimateIons$2$swMK3ucUIVlBPsiuK9e_HCE7z44
                @Override // java.lang.Runnable
                public final void run() {
                    lambda$onAnimationEnd$0$BlowWindAnimateIons$2(str2);
                }
            }, new LottieListener() { // from class: com.geely.hvac.component.-$$Lambda$BlowWindAnimateIons$2$ABZLBbuTUSmfSJEy3Np0nie8OA0
                @Override // com.airbnb.lottie.LottieListener
                public final void onResult(Object obj) {
                    lambda$onAnimationEnd$1$BlowWindAnimateIons$2((Throwable) obj);
                }
            });
        }

        public /* synthetic */ void lambda$onAnimationEnd$0$BlowWindAnimateIons$2(String str) {
            LogUtil.i(BlowWindAnimateBasic.TAG, "jsonPathSecond:" + str);
            BlowWindAnimateIons.this.setRepeatCount(-1);
            BlowWindAnimateIons.this.playAnimation();
        }

        public /* synthetic */ void lambda$onAnimationEnd$1$BlowWindAnimateIons$2(Throwable th) {
            BlowWindAnimateIons.this.setNextVisiReloadAnimate(true);
            LogUtil.i(BlowWindAnimateBasic.TAG, th);
        }
    }

    @Override // com.geely.hvac.component.BlowWindAnimateBasic, android.widget.ImageView, android.view.View
    public void setVisibility(int visibility) {
        super.setVisibility(visibility);
        LogUtil.d(BlowWindAnimateBasic.TAG, "setVisibility:" + visibility);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String findAnimatePath() {
        return "/storage/emulated/0/hvac/lottie/light/" + this.currentResPath + (this.mIsGclean ? "_gclean" : "_ions");
    }
}
