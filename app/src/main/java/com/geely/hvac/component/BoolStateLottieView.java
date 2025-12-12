package com.geely.hvac.component;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.geely.hvac.R;
import com.geely.hvac.databinding.LayoutBoolStateLottieViewBinding;
import com.geely.hvac.utils.DayNightUtil;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.utils.StackPrinter;

/* loaded from: classes.dex */
public class BoolStateLottieView extends ConstraintLayout {
    private static final String TAG = "BoolStateLottieView";
    private LayoutBoolStateLottieViewBinding mBinding;
    private boolean mCloseAnimateEnable;
    private int mDisableFalseDrawableRes;
    private int mDisableTrueDrawableRes;
    private volatile boolean mEnable;
    private String mLightClose;
    private String mLightOpen;
    private String mNightClose;
    private String mNightOpen;
    private String mPath;
    private volatile boolean mStatus;

    public static void bind(BoolStateLottieView view, boolean isOn) {
        view.setStatus(isOn);
        LogUtil.d(TAG, "bindBoolLottieViewState,view:" + view + ",isOn:" + isOn);
    }

    public static void bindEnable(BoolStateLottieView view, boolean enable) {
        LogUtil.d(TAG, "bindBoolLottieViewEnable,view:" + view + ",enable:" + enable);
        view.setEnable(enable);
    }

    public BoolStateLottieView(Context context) {
        super(context);
        this.mEnable = true;
        this.mStatus = false;
        this.mCloseAnimateEnable = false;
        init(context, null);
    }

    public BoolStateLottieView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mEnable = true;
        this.mStatus = false;
        this.mCloseAnimateEnable = false;
        init(context, attrs);
    }

    public BoolStateLottieView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mEnable = true;
        this.mStatus = false;
        this.mCloseAnimateEnable = false;
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        if (attrs == null) {
            LogUtil.d(TAG, "init, attr is null");
            return;
        }
        this.mBinding = LayoutBoolStateLottieViewBinding.inflate(LayoutInflater.from(context), this);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.BoolStateLottieView);
        this.mNightClose = typedArrayObtainStyledAttributes.getString(5);
        this.mNightOpen = typedArrayObtainStyledAttributes.getString(6);
        this.mLightClose = typedArrayObtainStyledAttributes.getString(3);
        this.mLightOpen = typedArrayObtainStyledAttributes.getString(4);
        this.mCloseAnimateEnable = typedArrayObtainStyledAttributes.getBoolean(0, false);
        this.mDisableFalseDrawableRes = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        this.mDisableTrueDrawableRes = typedArrayObtainStyledAttributes.getResourceId(2, 0);
        typedArrayObtainStyledAttributes.recycle();
        updateVisibility();
    }

    private void updateVisibility() {
        this.mBinding.img.setVisibility(this.mEnable ? 8 : 0);
        this.mBinding.lottie.setVisibility(this.mEnable ? 0 : 8);
        if (this.mEnable) {
            try {
                String path = getPath(getContext());
                if (!path.equals(this.mPath)) {
                    this.mBinding.lottie.setImageAssetsFolder(path + "/images");
                    this.mBinding.lottie.setAnimation(path + "/animate.json");
                    this.mPath = path;
                }
                if (this.mStatus) {
                    this.mBinding.lottie.setProgress(1.0f);
                    return;
                } else {
                    this.mBinding.lottie.setProgress(this.mCloseAnimateEnable ? 1.0f : 0.0f);
                    return;
                }
            } catch (Exception e) {
                LogUtil.d(TAG, StackPrinter.getExceptionStack(e));
                return;
            }
        }
        this.mBinding.lottie.cancelAnimation();
        this.mBinding.lottie.setProgress(0.0f);
        int i = this.mStatus ? this.mDisableTrueDrawableRes : this.mDisableFalseDrawableRes;
        if (i != 0) {
            this.mBinding.img.setImageResource(i);
        }
        LogUtil.d(TAG, " updateVisibility imgResId : " + i);
    }

    private String getPath(Context context) {
        boolean zIsLight = DayNightUtil.isLight();
        return this.mCloseAnimateEnable ? zIsLight ? this.mStatus ? this.mLightOpen : this.mLightClose : this.mStatus ? this.mNightOpen : this.mNightClose : zIsLight ? this.mLightOpen : this.mNightOpen;
    }

    public void setEnable(boolean enable) {
        if (this.mEnable == enable) {
            return;
        }
        setClickable(enable);
        setFocusable(enable);
        this.mEnable = enable;
        updateVisibility();
    }

    public void setStatus(boolean isOn) {
        if (this.mStatus == isOn) {
            return;
        }
        this.mStatus = isOn;
        if (this.mEnable) {
            if (this.mBinding.lottie.isAnimating()) {
                LogUtil.d(TAG, "setStatus, is running");
                this.mBinding.lottie.cancelAnimation();
            }
            try {
                String path = getPath(getContext());
                if (!path.equals(this.mPath)) {
                    LogUtil.d(TAG, "setStatus change path");
                    this.mBinding.lottie.setImageAssetsFolder(path + "/images");
                    this.mBinding.lottie.setAnimation(path + "/animate.json");
                    this.mPath = path;
                } else {
                    LogUtil.d(TAG, "setStatus, not change path");
                }
                LogUtil.d(TAG, "setStatus, mStatus:" + this.mStatus + ",mCloseAnimateEnable:" + this.mCloseAnimateEnable + ",path:" + path);
                this.mBinding.lottie.cancelAnimation();
                if (this.mStatus) {
                    this.mBinding.lottie.setProgress(0.0f);
                    this.mBinding.lottie.playAnimation();
                    return;
                } else if (this.mCloseAnimateEnable) {
                    this.mBinding.lottie.setProgress(0.0f);
                    this.mBinding.lottie.playAnimation();
                    return;
                } else {
                    this.mBinding.lottie.setProgress(0.0f);
                    return;
                }
            } catch (Exception e) {
                LogUtil.d(TAG, StackPrinter.getExceptionStack(e));
                return;
            }
        }
        int i = this.mStatus ? this.mDisableTrueDrawableRes : this.mDisableFalseDrawableRes;
        if (i != 0) {
            this.mBinding.img.setImageResource(i);
        }
        LogUtil.d(TAG, " setStatus imgResId : " + i);
    }
}
