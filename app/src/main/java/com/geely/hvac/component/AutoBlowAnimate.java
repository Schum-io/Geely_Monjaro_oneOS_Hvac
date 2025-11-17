package com.geely.hvac.component;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.geely.hvac.component.intf.AutoBlowAnimateAbs;
import com.geely.hvac.utils.LogUtil;

/* loaded from: classes.dex */
public class AutoBlowAnimate extends AutoBlowAnimateAbs {
    public AutoBlowAnimate(Context context) {
        super(context);
    }

    public AutoBlowAnimate(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public AutoBlowAnimate(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @Override // com.airbnb.lottie.LottieAnimationView, android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mAutoOn) {
            if (TextUtils.isEmpty(this.mCurrentAnimateRes)) {
                LogUtil.d(this.TAG, "onAttachedToWindow, path is empty");
            } else {
                setRepeatCount(-1);
                playAnimation();
            }
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cancelAnimation();
    }

    @Override // com.geely.hvac.component.intf.AutoBlowAnimateAbs
    protected void updateAutoState() {
        if (this.mAutoOn) {
            if (TextUtils.isEmpty(this.mCurrentAnimateRes)) {
                LogUtil.d(this.TAG, "updateAutoState, path is empty");
                return;
            } else {
                setRepeatCount(-1);
                playAnimation();
                return;
            }
        }
        cancelAnimation();
    }

    @Override // com.geely.hvac.component.intf.AutoBlowAnimateAbs
    protected void updateAnimateRes() {
        cancelAnimation();
        if (TextUtils.isEmpty(this.mCurrentAnimateRes)) {
            LogUtil.d(this.TAG, "updateAnimateRes, path is empty");
            return;
        }
        setAnimation(this.mCurrentAnimateRes + "/animate.json");
        setImageAssetsFolder(this.mCurrentAnimateRes + "/images");
        if (isAttachedToWindow() && this.mAutoOn) {
            setRepeatCount(-1);
            playAnimation();
        }
    }
}
