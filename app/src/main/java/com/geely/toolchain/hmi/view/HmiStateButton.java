package com.geely.toolchain.hmi.view;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.appcompat.R;

/* loaded from: classes.dex */
public class HmiStateButton extends HmiIconButton {
    public static final String TAG = "HmiStateColorButton";
    private boolean mAnimEnable;
    private GradientDrawable mNormalBackground;
    private OnClickListener mOnClickListener;
    private float mRadius;
    StateListDrawable mStateBackground;
    private int mStrokeColor;
    private int mStrokeWidth;
    private int[][] states;
    private ValueAnimator valueAnimator;

    public HmiStateButton(Context context) {
        this(context, null);
    }

    public HmiStateButton(Context context, AttributeSet attrs) {
        this(context, attrs, R.attr.buttonStyle);
    }

    public HmiStateButton(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mAnimEnable = false;
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        this.states = new int[2][];
        Drawable background = getBackground();
        if (background instanceof StateListDrawable) {
            this.mStateBackground = (StateListDrawable) background;
        } else {
            this.mStateBackground = new StateListDrawable();
        }
        this.mNormalBackground = new GradientDrawable();
        int[][] iArr = this.states;
        iArr[0] = new int[]{android.R.attr.state_enabled};
        iArr[1] = new int[]{-16842910};
        setOutlineProvider(null);
        initAnim();
        if (attrs == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, com.geely.toolchain.hmi.R.styleable.HmiStateButton);
        int color = typedArrayObtainStyledAttributes.getColor(com.geely.toolchain.hmi.R.styleable.HmiStateButton_hmiBtnColor, 0);
        this.mRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(com.geely.toolchain.hmi.R.styleable.HmiStateButton_hmiBtnRadius, 0);
        this.mAnimEnable = typedArrayObtainStyledAttributes.getBoolean(com.geely.toolchain.hmi.R.styleable.HmiStateButton_hmiBtnAnimEnable, this.mAnimEnable);
        this.mStrokeColor = typedArrayObtainStyledAttributes.getColor(com.geely.toolchain.hmi.R.styleable.HmiStateButton_hmiBtnStrokeColor, 0);
        this.mStrokeWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(com.geely.toolchain.hmi.R.styleable.HmiStateButton_hmiBtnStrokeWidth, 0);
        typedArrayObtainStyledAttributes.recycle();
        setStroke();
        setBtnColorAndRadius(color, this.mRadius);
    }

    private void setStroke() {
        this.mNormalBackground.setStroke(this.mStrokeWidth, this.mStrokeColor);
    }

    private void initAnim() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.95f, 1.0f);
        this.valueAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(400L);
        this.valueAnimator.addUpdateListener(this::lambda$initAnim$0$HmiStateButton);
    }

    public /* synthetic */ void lambda$initAnim$0$HmiStateButton(ValueAnimator valueAnimator) {
        if (valueAnimator == null || valueAnimator.getAnimatedValue() == null) {
            return;
        }
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        setPivotX(getWidth() >> 1);
        setPivotY(getHeight() >> 1);
        setScaleX(fFloatValue);
        setScaleY(fFloatValue);
    }

    public void setBtnColorAndRadius(int backgroundColor, float btnRadius) {
        Log.i(TAG, "setBtnColorAndRadius: defaultColor = " + backgroundColor + "\nbtnRadius = " + btnRadius);
        this.mNormalBackground.setColor(backgroundColor);
        this.mNormalBackground.setCornerRadius(btnRadius);
        this.mStateBackground.addState(this.states[0], this.mNormalBackground);
        this.mStateBackground.addState(this.states[1], this.mNormalBackground);
        setBackgroundDrawable(this.mStateBackground);
    }

    public void setRadius(float radius) {
        Log.i(TAG, "setRadius: radius = " + radius);
        this.mRadius = radius;
        this.mNormalBackground.setCornerRadius(radius);
    }

    public void setStrokeColor(int strokeColor) {
        this.mStrokeColor = strokeColor;
        setStroke();
    }

    public void setStrokeWidth(int strokeWidth) {
        this.mStrokeWidth = strokeWidth;
        setStroke();
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        if (enabled) {
            setAlpha(1.0f);
        } else {
            setAlpha(0.3f);
        }
    }

    public void setAnimEnable(boolean animEnable) {
        this.mAnimEnable = animEnable;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0010  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0028  */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r3) {
        /*
            r2 = this;
            int r0 = r3.getAction()
            if (r0 == 0) goto L28
            r1 = 1
            if (r0 == r1) goto L10
            r1 = 2
            if (r0 == r1) goto L28
            r1 = 3
            if (r0 == r1) goto L10
            goto L3f
        L10:
            boolean r0 = r2.isEnabled()
            if (r0 == 0) goto L3f
            boolean r0 = r2.mAnimEnable
            if (r0 != 0) goto L3f
            float r0 = r2.getAlpha()
            r1 = 1065353216(0x3f800000, float:1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L3f
            r2.setAlpha(r1)
            goto L3f
        L28:
            boolean r0 = r2.isEnabled()
            if (r0 == 0) goto L3f
            boolean r0 = r2.mAnimEnable
            if (r0 != 0) goto L3f
            float r0 = r2.getAlpha()
            r1 = 1061158912(0x3f400000, float:0.75)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L3f
            r2.setAlpha(r1)
        L3f:
            boolean r3 = super.onTouchEvent(r3)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.geely.toolchain.hmi.view.HmiStateButton.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cancelAnim();
    }

    private void cancelAnim() {
        this.valueAnimator.cancel();
        setScaleX(1.0f);
        setScaleY(1.0f);
        this.valueAnimator.removeAllUpdateListeners();
    }

    @Override // android.view.View
    public void setOnClickListener(OnClickListener l) {
        if (!isClickable()) {
            setClickable(true);
        }
        this.mOnClickListener = l;
    }

    @Override // android.view.View
    public boolean performClick() {
        if (this.mAnimEnable && !this.valueAnimator.isRunning()) {
            this.valueAnimator.start();
        }
        OnClickListener onClickListener = this.mOnClickListener;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
        return super.performClick();
    }
}
