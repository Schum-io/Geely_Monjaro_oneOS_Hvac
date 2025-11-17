package com.geely.hvac.component;

import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.View;

import com.geely.hvac.common.R;
import com.geely.hvac.utils.LogUtil;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class Switch extends View implements View.OnClickListener {
    private final String TAG;
    private final ArgbEvaluator mArgbEvaluator;
    private int mBgActiveColor;
    private int mBgColor;
    private ValueAnimator mBgColorAnimator;
    private int mBgDisableColor;
    private int mBgUnActiveColor;
    private boolean mEnable;
    private int mIndicatorActiveColor;
    private ValueAnimator mIndicatorAnimator;
    private int mIndicatorColor;
    private int mIndicatorDisableColor;
    private int mIndicatorRadius;
    private int mIndicatorUnActiveColor;
    private float mIndicatorX;
    private boolean mIsOn;
    private OnSwitchChangeListener mOnSwitchChangeListener;
    private final Paint mPaint;
    private Path mPath;
    private ValueAnimator mValueAnimator;
    private Point mViewSize;

    public interface OnSwitchChangeListener {
        void onSwitchChange(boolean isOn);
    }

    public static void bind(Switch view, boolean isOn) {
        view.setState(isOn, false);
    }

    public static void bindEnable(Switch view, boolean enable) {
        view.setEnable(enable);
    }

    public static void bind(Switch view, OnSwitchChangeListener listener) {
        view.mOnSwitchChangeListener = listener;
    }

    public void setEnable(boolean enable) {
        this.mEnable = enable;
        setClickable(enable);
        setFocusable(enable);
        invalidate();
    }

    public Switch(Context context) {
        super(context);
        this.TAG = getClass().getSimpleName();
        this.mViewSize = new Point();
        this.mPath = new Path();
        this.mPaint = new Paint(1);
        this.mArgbEvaluator = new ArgbEvaluator();
        this.mEnable = true;
        init(context, null);
    }

    public Switch(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.TAG = getClass().getSimpleName();
        this.mViewSize = new Point();
        this.mPath = new Path();
        this.mPaint = new Paint(1);
        this.mArgbEvaluator = new ArgbEvaluator();
        this.mEnable = true;
        init(context, attrs);
    }

    public Switch(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.TAG = getClass().getSimpleName();
        this.mViewSize = new Point();
        this.mPath = new Path();
        this.mPaint = new Paint(1);
        this.mArgbEvaluator = new ArgbEvaluator();
        this.mEnable = true;
        init(context, attrs);
    }

    public void setOnSwitchChangeListener(OnSwitchChangeListener onSwitchChangeListener) {
        this.mOnSwitchChangeListener = onSwitchChangeListener;
    }

    private void init(Context context, AttributeSet attrs) {
        if (attrs == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.Switch);
        this.mBgActiveColor = typedArrayObtainStyledAttributes.getColor(R.styleable.Switch_switchBgActiveColor, -1);
        try {
            this.mBgDisableColor = typedArrayObtainStyledAttributes.getColor(R.styleable.Switch_switchBgDisableColor, -1);
        } catch (Exception e) {
            this.mBgDisableColor = -1;
        }
        try {
            this.mBgUnActiveColor = typedArrayObtainStyledAttributes.getColor(R.styleable.Switch_switchBgUnActiveColor, -1);
        } catch (Exception e) {
            this.mBgUnActiveColor = -1;
        }
        try {
            this.mIndicatorActiveColor = typedArrayObtainStyledAttributes.getColor(R.styleable.Switch_switchIndicatorActiveColor, -1);
        } catch (Exception e) {
            this.mIndicatorActiveColor = -1;
        }
        try {
            this.mIndicatorUnActiveColor = typedArrayObtainStyledAttributes.getColor(R.styleable.Switch_switchIndicatorUnActiveColor, -1);
        } catch (Exception e) {
            this.mIndicatorUnActiveColor = -1;
        }
        try {
            this.mIndicatorDisableColor = typedArrayObtainStyledAttributes.getColor(R.styleable.Switch_switchIndicatorDisableColor, -1);
        } catch (Exception e) {
            this.mIndicatorDisableColor = -1;
        }
        try {
            this.mIndicatorRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.Switch_switchIndicatorRadius, 0);
        } catch (Exception e) {
            this.mIndicatorRadius = -1;
        }
        typedArrayObtainStyledAttributes.recycle();
        LogUtil.d(this.TAG, "init, mBgActiveColor:" + this.mBgActiveColor + ", mBgUnActiveColor:" + this.mBgUnActiveColor + ", mIndicatorActiveColor:" + this.mIndicatorActiveColor + ", mIndicatorUnActiveColor:" + this.mIndicatorUnActiveColor + ", mIndicatorRadius:" + this.mIndicatorRadius);
        this.mPaint.setStrokeWidth(1.0f);
        this.mPaint.setStyle(Paint.Style.FILL);
        boolean z = this.mIsOn;
        this.mBgColor = z ? this.mBgActiveColor : this.mBgUnActiveColor;
        this.mIndicatorColor = z ? this.mIndicatorActiveColor : this.mIndicatorUnActiveColor;
        setOnClickListener(this);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        LogUtil.d(this.TAG, "onSizeChanged, w:" + w + ",h:" + h);
        this.mViewSize.x = w;
        this.mViewSize.y = h;
        this.mIndicatorX = this.mIsOn ? this.mViewSize.x - (this.mViewSize.y / 2.0f) : this.mViewSize.y / 2.0f;
        this.mBgColor = this.mIsOn ? this.mBgActiveColor : this.mBgUnActiveColor;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.translate(0.0f, this.mViewSize.y / 2.0f);
        this.mPath.reset();
        boolean z = this.mEnable;
        int i = z ? this.mBgColor : this.mBgDisableColor;
        int i2 = z ? this.mIndicatorColor : this.mIndicatorDisableColor;
        this.mPaint.setColor(i);
        this.mPath.addCircle(this.mViewSize.y / 2.0f, 0.0f, this.mViewSize.y / 2.0f, Path.Direction.CW);
        this.mPath.addRect(this.mViewSize.y / 2.0f, (-this.mViewSize.y) / 2.0f, this.mViewSize.x - (this.mViewSize.y / 2.0f), this.mViewSize.y / 2.0f, Path.Direction.CW);
        this.mPath.addCircle(this.mViewSize.x - (this.mViewSize.y / 2.0f), 0.0f, this.mViewSize.y / 2.0f, Path.Direction.CW);
        canvas.drawPath(this.mPath, this.mPaint);
        this.mPath.reset();
        this.mPaint.setColor(i2);
        this.mPath.addCircle((int) (this.mEnable ? this.mIndicatorX : this.mViewSize.y / 2.0f), 0.0f, this.mIndicatorRadius, Path.Direction.CW);
        canvas.drawPath(this.mPath, this.mPaint);
    }

    private void setState(boolean isOn, boolean isFromUser) {
        LogUtil.d(this.TAG, "setState, mViewSize.x:" + this.mViewSize.x + ", mViewSize.y:" + this.mViewSize.y);
        if (this.mIsOn == isOn) {
            return;
        }
        this.mIsOn = isOn;
        OnSwitchChangeListener onSwitchChangeListener = this.mOnSwitchChangeListener;
        if (onSwitchChangeListener != null && isFromUser) {
            onSwitchChangeListener.onSwitchChange(isOn);
        }
        float f = this.mIsOn ? this.mViewSize.x - (this.mViewSize.y / 2.0f) : this.mViewSize.y / 2.0f;
        ValueAnimator valueAnimator = this.mValueAnimator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.mValueAnimator.end();
        }
        if (this.mViewSize.x > 0) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.mIndicatorX, f);
            this.mValueAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(200L);
            this.mValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.geely.hvac.component.-$$Lambda$Switch$53ChmtuC4NnHoJwgjP03apAC-vM
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    Switch.this.lambda$setState$0$Switch(valueAnimator2);
                }
            });
            this.mValueAnimator.start();
        }
        ValueAnimator valueAnimator2 = this.mBgColorAnimator;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            this.mBgColorAnimator.end();
        }
        if (this.mViewSize.x > 0) {
            int[] iArr = new int[2];
            iArr[0] = this.mBgColor;
            iArr[1] = this.mIsOn ? this.mBgActiveColor : this.mBgUnActiveColor;
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(iArr);
            this.mBgColorAnimator = valueAnimatorOfInt;
            valueAnimatorOfInt.setDuration(200L);
            this.mBgColorAnimator.setEvaluator(this.mArgbEvaluator);
            this.mBgColorAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.geely.hvac.component.-$$Lambda$Switch$2cIDO97wvUcqtZyMEd3JPkKLdNc
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    Switch.this.lambda$setState$1$Switch(valueAnimator3);
                }
            });
            this.mBgColorAnimator.start();
        } else {
            this.mBgColor = this.mIsOn ? this.mBgActiveColor : this.mBgUnActiveColor;
            invalidate();
        }
        ValueAnimator valueAnimator3 = this.mIndicatorAnimator;
        if (valueAnimator3 != null && valueAnimator3.isRunning()) {
            this.mIndicatorAnimator.end();
        }
        if (this.mViewSize.x > 0) {
            int[] iArr2 = new int[2];
            iArr2[0] = this.mIndicatorColor;
            iArr2[1] = this.mIsOn ? this.mIndicatorActiveColor : this.mIndicatorUnActiveColor;
            ValueAnimator valueAnimatorOfInt2 = ValueAnimator.ofInt(iArr2);
            this.mIndicatorAnimator = valueAnimatorOfInt2;
            valueAnimatorOfInt2.setDuration(200L);
            this.mIndicatorAnimator.setEvaluator(this.mArgbEvaluator);
            this.mIndicatorAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.geely.hvac.component.-$$Lambda$Switch$AgTMwTgb82rLTHIplAnqdGr8zIQ
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator4) {
                    Switch.this.lambda$setState$2$Switch(valueAnimator4);
                }
            });
            this.mIndicatorAnimator.start();
            return;
        }
        this.mIndicatorColor = this.mIsOn ? this.mIndicatorActiveColor : this.mIndicatorUnActiveColor;
    }

    public /* synthetic */ void lambda$setState$0$Switch(ValueAnimator valueAnimator) {
        this.mIndicatorX = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    public /* synthetic */ void lambda$setState$1$Switch(ValueAnimator valueAnimator) {
        this.mBgColor = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        invalidate();
    }

    public /* synthetic */ void lambda$setState$2$Switch(ValueAnimator valueAnimator) {
        this.mIndicatorColor = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        invalidate();
    }

    public void toggle() {
        if (this.mEnable) {
            setState(!this.mIsOn, true);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        LogUtil.d(this.TAG, "onClick");
        setState(!this.mIsOn, true);
        SensorsDataAutoTrackHelper.trackViewOnClick(v);
    }
}
