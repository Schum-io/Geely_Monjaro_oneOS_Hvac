package com.geely.hvac.component;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import com.geely.hvac.common.R;
import com.geely.hvac.utils.LogUtil;

/* loaded from: classes.dex */
public class BoolStateImageView extends AppCompatImageView {
    private final String TAG;
    private int mDisableFalseDrawableRes;
    private int mDisableTrueDrawableRes;
    private boolean mEnable;
    private int mFalseDrawableRes;
    private boolean mStatus;
    private int mTrueDrawableRes;

    public BoolStateImageView(Context context) {
        super(context);
        this.TAG = getClass().getSimpleName();
        this.mEnable = true;
        init(context, null);
    }

    public BoolStateImageView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.TAG = getClass().getSimpleName();
        this.mEnable = true;
        init(context, attrs);
    }

    public BoolStateImageView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.TAG = getClass().getSimpleName();
        this.mEnable = true;
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        if (attrs == null) {
            LogUtil.d(this.TAG, "init, attr is null");
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.BoolStateImageView);
        this.mFalseDrawableRes = typedArrayObtainStyledAttributes.getResourceId(R.styleable.BoolStateImageView_stateFalseImage, 0);
        this.mTrueDrawableRes = typedArrayObtainStyledAttributes.getResourceId(R.styleable.BoolStateImageView_stateTrueImage, 0);
        this.mDisableFalseDrawableRes = typedArrayObtainStyledAttributes.getResourceId(R.styleable.BoolStateImageView_stateDisableFalseImage, 0);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.BoolStateImageView_stateDisableTrueImage, 0);
        this.mDisableTrueDrawableRes = resourceId;
        if (this.mDisableFalseDrawableRes == 0) {
            this.mDisableFalseDrawableRes = this.mFalseDrawableRes;
        }
        if (resourceId == 0) {
            this.mDisableTrueDrawableRes = this.mFalseDrawableRes;
        }
        typedArrayObtainStyledAttributes.recycle();
        int i = this.mFalseDrawableRes;
        if (i != 0) {
            setImageResource(i);
        }
    }

    public static void bind(BoolStateImageView ecoView, boolean isOn) {
        ecoView.setStatus(isOn);
    }

    public static void bindEnable(BoolStateImageView view, boolean enable) {
        LogUtil.d("BoolStateImageView", "bindBoolStateImageEnable enable = " + enable);
        view.setEnable(enable);
        view.setAlpha(enable ? 1.0f : 0.6f);
    }

    public void setEnable(boolean enable) {
        setClickable(enable);
        setFocusable(enable);
        this.mEnable = enable;
        updateImg();
    }

    private void updateImg() {
        int i;
        LogUtil.d(this.TAG, "updateImg, mEnable:" + this.mEnable + ",mStatus:" + this.mStatus + ", this:" + this);
        if (this.mEnable) {
            i = this.mStatus ? this.mTrueDrawableRes : this.mFalseDrawableRes;
        } else {
            i = this.mStatus ? this.mDisableTrueDrawableRes : this.mDisableFalseDrawableRes;
        }
        if (i != 0) {
            setImageResource(i);
        } else {
            LogUtil.d(this.TAG, "updateImg, resId is 0, this:" + this);
        }
    }

    public void setStatus(boolean isOn) {
        this.mStatus = isOn;
        updateImg();
    }
}
