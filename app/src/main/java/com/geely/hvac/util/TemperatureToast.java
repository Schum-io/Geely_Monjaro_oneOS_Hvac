package com.geely.hvac.util;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import androidx.lifecycle.ViewModelProvider;
import com.ecarx.xui.adaptapi.policy.Policy;
import com.geely.hvac.GlyAcApp;
import com.geely.hvac.R;
import com.geely.hvac.databinding.LayoutTemperatureToastBinding;
import com.geely.hvac.util.TemperatureToastRoot;
import com.geely.hvac.utils.Executor;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.viewmodel.AppMainViewModel;
import com.geely.os.policy.IGlyWindowManagerPolicy;
import com.geely.toolchain.hmi.BuildConfig;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class TemperatureToast {
    private static String TAG = "TemperatureToast";
    private static int mWindowType = Policy.create(GlyAcApp.getInstance()).getWindowManagerPolicy().getWindowTypeByCode(IGlyWindowManagerPolicy.CODE_SWIPE_FROM_BOTTOM_VIEW);
    private LayoutTemperatureToastBinding mBinding;
    private Context mContext;
    private boolean mHasShow = false;
    private boolean mHasCancel = false;
    private int mDuration = 5000;
    private Runnable mRunnable = new Runnable() { // from class: com.geely.hvac.util.TemperatureToast.1
        @Override // java.lang.Runnable
        public void run() {
            TemperatureToast.this.cancel();
        }
    };

    static {
        LogUtil.d(TAG, "Toast static, mWindowType:" + mWindowType);
    }

    public TemperatureToast(Context context) {
        this.mContext = context;
    }

    public void cancel() {
        Executor.MAIN.post(this::lambda$cancel$1$TemperatureToast);
    }

    public /* synthetic */ void lambda$cancel$1$TemperatureToast() {
        if (!this.mHasShow) {
            LogUtil.d(TAG, "not show return");
            return;
        }
        if (this.mHasCancel) {
            LogUtil.d(TAG, "already canceled, return");
            return;
        }
        this.mHasCancel = true;
        final ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat.addUpdateListener(valueAnimator -> lambda$cancel$0$TemperatureToast(valueAnimatorOfFloat, valueAnimator));
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.geely.hvac.util.TemperatureToast.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                super.onAnimationEnd(animation);
                WindowManager windowManager = (WindowManager) TemperatureToast.this.mContext.getSystemService("window");
                try {
                    LogUtil.d(TemperatureToast.TAG, "cancel, view:" + TemperatureToast.this.mBinding.getRoot());
                    TemperatureToast.this.mBinding.getRoot().setVisibility(8);
                    windowManager.removeView(TemperatureToast.this.mBinding.getRoot());
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
        valueAnimatorOfFloat.start();
    }

    public /* synthetic */ void lambda$cancel$0$TemperatureToast(ValueAnimator valueAnimator, ValueAnimator valueAnimator2) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.mBinding.root.setAlpha(fFloatValue);
        LogUtil.d(TAG, "cancel, alpha:" + fFloatValue);
    }

    public boolean isShow() {
        return this.mHasShow && !this.mHasCancel;
    }

    public void resetTimer() {
        LogUtil.d(TAG, "resetTimer");
        Executor.MAIN.removeCallbacks(this.mRunnable);
        Executor.MAIN.postDelayed(this.mRunnable, this.mDuration);
    }

    public void show() {
        Executor.MAIN.post(this::lambda$show$4$TemperatureToast);
    }

    public /* synthetic */ void lambda$show$4$TemperatureToast() {
        LayoutTemperatureToastBinding layoutTemperatureToastBindingInflate = LayoutTemperatureToastBinding.inflate(LayoutInflater.from(this.mContext));
        this.mBinding = layoutTemperatureToastBindingInflate;
        if (this.mHasShow) {
            return;
        }
        layoutTemperatureToastBindingInflate.setModel((AppMainViewModel) new ViewModelProvider(GlyAcApp.getInstance(), new ViewModelProvider.NewInstanceFactory()).get(AppMainViewModel.class));
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{this.mContext.getColor(R.color.temperature_toast_bg_color1), this.mContext.getColor(R.color.temperature_toast_bg_color2), this.mContext.getColor(R.color.temperature_toast_bg_color_center), this.mContext.getColor(R.color.temperature_toast_bg_color3), this.mContext.getColor(R.color.temperature_toast_bg_color4)});
        gradientDrawable.setGradientType(0);
        this.mBinding.content.setBackgroundDrawable(gradientDrawable);
        this.mBinding.wrap.setTouchListener(this::resetTimer);
        this.mBinding.root.setOnClickListener(this::lambda$show$2$TemperatureToast);
        this.mHasShow = true;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(300L);
        valueAnimatorOfFloat.addUpdateListener(this::lambda$show$3$TemperatureToast);
        valueAnimatorOfFloat.start();
        LogUtil.d(TAG, "windowType:" + mWindowType);
        WindowManager windowManager = (WindowManager) this.mContext.getSystemService("window");
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.width = BuildConfig.srceenWidth;
        layoutParams.height = BuildConfig.srceenHeight;
        layoutParams.type = mWindowType + 1;
        layoutParams.format = -3;
        layoutParams.flags = 159646792;
        layoutParams.flags &= -17;
        layoutParams.systemUiVisibility |= Integer.MIN_VALUE;
        layoutParams.packageName = this.mContext.getPackageName();
        layoutParams.gravity = 3;
        layoutParams.x = 0;
        layoutParams.y = 0;
        LogUtil.d(TAG, "show, view:" + this.mBinding.getRoot());
        windowManager.addView(this.mBinding.getRoot(), layoutParams);
        Executor.MAIN.postDelayed(this.mRunnable, this.mDuration);
    }

    public /* synthetic */ void lambda$show$2$TemperatureToast(View view) {
        LogUtil.d(TAG, "root click");
        cancel();
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$show$3$TemperatureToast(ValueAnimator valueAnimator) {
        this.mBinding.root.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
