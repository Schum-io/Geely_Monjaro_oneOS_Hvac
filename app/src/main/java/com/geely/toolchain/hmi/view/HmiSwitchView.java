package com.geely.toolchain.hmi.view;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.widget.Switch;
import com.geely.toolchain.hmi.R;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

@Deprecated
/* loaded from: classes.dex */
public class HmiSwitchView extends View {
    private static final int DEGREES_ONE = 180;
    private static final int DEGREES_THREE = 360;
    private static final int DEGREES_TWO = -180;
    private static final String TAG = "HmiSwitchView";
    private boolean isChecked;
    private boolean isEnable;
    private OnCheckedChangeListener mOnSwitchListener;
    private Paint mPaint;
    private float mPercent;
    private float mShowHeight;
    private float mShowWidth;
    private int mThumbColor;
    private int mTrackCheckColor;
    private int mTrackColor;
    private int mTrackUncheckColor;

    public interface OnCheckedChangeListener {
        void onCheckedChanged(HmiSwitchView buttonView, boolean isChecked);
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener onSwitchListener) {
        this.mOnSwitchListener = onSwitchListener;
    }

    public HmiSwitchView(Context context) {
        this(context, null);
        init(context, null);
    }

    public HmiSwitchView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
        init(context, attrs);
    }

    public HmiSwitchView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mThumbColor = -1;
        this.mTrackColor = -16711936;
        this.mTrackCheckColor = -16711936;
        this.mTrackUncheckColor = -7829368;
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.HmiOneOSHmiSwitchView);
        this.mThumbColor = typedArrayObtainStyledAttributes.getColor(R.styleable.HmiOneOSHmiSwitchView_thumbColor, this.mThumbColor);
        this.mTrackCheckColor = typedArrayObtainStyledAttributes.getColor(R.styleable.HmiOneOSHmiSwitchView_trackCheckColor, this.mTrackCheckColor);
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.HmiOneOSHmiSwitchView_trackUncheckColor, this.mTrackUncheckColor);
        this.mTrackUncheckColor = color;
        this.mTrackColor = color;
        this.mShowWidth = typedArrayObtainStyledAttributes.getDimension(R.styleable.HmiOneOSHmiSwitchView_showWidth, 0.0f);
        this.mShowHeight = typedArrayObtainStyledAttributes.getDimension(R.styleable.HmiOneOSHmiSwitchView_showHeight, 0.0f);
        this.isChecked = typedArrayObtainStyledAttributes.getBoolean(R.styleable.HmiOneOSHmiSwitchView_isChecked, false);
        this.isEnable = typedArrayObtainStyledAttributes.getBoolean(R.styleable.HmiOneOSHmiSwitchView_isEnable, true);
        typedArrayObtainStyledAttributes.recycle();
        this.mPaint = new Paint(1);
        if (!this.isEnable) {
            setEnabled(false);
        }
        if (this.isChecked) {
            setChecked(true);
        } else {
            setChecked(false);
        }
        setOnClickListener(new OnClickListener() {
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HmiSwitchView.this.lambda$init$0$HmiSwitchView(view);
            }
        });
    }

    public /* synthetic */ void lambda$init$0$HmiSwitchView(View view) {
        setSelectedStatus(!isSelected(), true);
        OnCheckedChangeListener onCheckedChangeListener = this.mOnSwitchListener;
        if (onCheckedChangeListener != null) {
            onCheckedChangeListener.onCheckedChanged(this, isSelected());
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.mPaint.setColor(this.mTrackColor);
        float width = (getWidth() - this.mShowWidth) / 2.0f;
        float height = (getHeight() - this.mShowHeight) / 2.0f;
        float width2 = (getWidth() + this.mShowWidth) / 2.0f;
        float height2 = getHeight();
        float f = this.mShowHeight;
        canvas.drawRoundRect(width, height, width2, (height2 + f) / 2.0f, f / 2.0f, f / 2.0f, this.mPaint);
        this.mPaint.setColor(this.mThumbColor);
        float f2 = (this.mShowHeight - 4.0f) / 2.0f;
        float width3 = getWidth();
        float f3 = this.mShowWidth;
        canvas.drawCircle(f2 + 2.0f + ((width3 - f3) / 2.0f) + (((f3 - (f2 * 2.0f)) - 4.0f) * this.mPercent), getHeight() / 2.0f, f2, this.mPaint);
    }

    private void setPercent(float percent) {
        this.mPercent = percent;
        float[] fArr = new float[3];
        float[] fArr2 = new float[3];
        float[] fArr3 = new float[3];
        Color.colorToHSV(this.mTrackUncheckColor, fArr);
        Color.colorToHSV(this.mTrackCheckColor, fArr2);
        if (fArr2[0] - fArr[0] > 180.0f) {
            fArr2[0] = fArr2[0] - 360.0f;
        } else if (fArr2[0] - fArr[0] < -180.0f) {
            fArr2[0] = fArr2[0] + 360.0f;
        }
        float f = fArr[0];
        float f2 = fArr2[0] - fArr[0];
        float f3 = this.mPercent;
        fArr3[0] = f + (f2 * f3);
        if (fArr3[0] > 360.0f) {
            fArr3[0] = fArr3[0] - 360.0f;
        } else if (fArr3[0] < 0.0f) {
            fArr3[0] = fArr3[0] + 360.0f;
        }
        fArr3[1] = fArr[1] + ((fArr2[1] - fArr[1]) * f3);
        fArr3[2] = fArr[2] + ((fArr2[2] - fArr[2]) * f3);
        
        int alphaStart = Color.alpha(this.mTrackUncheckColor);
        int alphaEnd = Color.alpha(this.mTrackCheckColor);
        int alpha = (int) (alphaStart + (alphaEnd - alphaStart) * f3);
        this.mTrackColor = Color.HSVToColor(alpha, fArr3);
        invalidate();
    }

    private void setPercentAnim(float percent) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "percent", this.mPercent, percent);
        objectAnimatorOfFloat.setDuration(400L);
        objectAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
        objectAnimatorOfFloat.start();
    }

    private void setSelectedStatus(boolean selected, boolean anim) {
        Log.i(TAG, "selected:" + selected);
        if (selected == isSelected()) {
            return;
        }
        setSelected(selected);
        if (isSelected()) {
            if (isAttachedToWindow() && anim) {
                setPercentAnim(1.0f);
                return;
            } else {
                setPercent(1.0f);
                return;
            }
        }
        if (isAttachedToWindow() && anim) {
            setPercentAnim(0.0f);
        } else {
            setPercent(0.0f);
        }
    }

    public void setChecked(boolean checked) {
        Log.i(TAG, "checked:" + checked);
        setSelectedStatus(checked, false);
    }

    public boolean isChecked() {
        return isSelected();
    }

    @Override // android.view.View
    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        Log.i(TAG, "enabled:" + enabled);
        if (enabled) {
            setAlpha(1.0f);
        } else {
            setAlpha(0.3f);
        }
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return Switch.class.getName();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info) {
        super.onInitializeAccessibilityNodeInfo(info);
        if (info == null) {
            return;
        }
        info.setChecked(isChecked());
    }
}
