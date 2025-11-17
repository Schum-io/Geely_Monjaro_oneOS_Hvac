package com.geely.hvac.component.intf;

import android.content.Context;
import android.util.AttributeSet;
import com.airbnb.lottie.LottieAnimationView;
import com.geely.hvac.utils.UiUtil;

/* loaded from: classes.dex */
public abstract class AutoBlowAnimateAbs extends LottieAnimationView {
    protected final String TAG;
    protected boolean mAutoOn;
    protected String mCurrentAnimateRes;
    protected String mLightRes;
    protected String mNightRes;

    protected abstract void updateAnimateRes();

    protected abstract void updateAutoState();

    public AutoBlowAnimateAbs(Context context) {
        super(context);
        this.TAG = getClass().getSimpleName();
        this.mAutoOn = false;
    }

    public AutoBlowAnimateAbs(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.TAG = getClass().getSimpleName();
        this.mAutoOn = false;
    }

    public AutoBlowAnimateAbs(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.TAG = getClass().getSimpleName();
        this.mAutoOn = false;
    }

    public static void bindAnimateRes(AutoBlowAnimateAbs v, String light, String night) {
        v.setAnimateRes(light, night);
    }

    public static void bindAutoState(AutoBlowAnimateAbs v, boolean on) {
        v.setAutoState(on);
    }

    private void setAnimateRes(String light, String night) {
        this.mLightRes = light;
        this.mNightRes = night;
        this.mCurrentAnimateRes = UiUtil.isLight(getContext()) ? this.mLightRes : this.mNightRes;
        updateAnimateRes();
    }

    private void setAutoState(boolean on) {
        this.mAutoOn = on;
        updateAutoState();
    }
}
