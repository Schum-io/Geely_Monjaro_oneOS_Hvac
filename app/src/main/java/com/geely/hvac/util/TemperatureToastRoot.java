package com.geely.hvac.util;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.constraintlayout.widget.ConstraintLayout;

/* loaded from: classes.dex */
public class TemperatureToastRoot extends ConstraintLayout {
    private TouchListener mOnTouchListener;

    public interface TouchListener {
        void onTouch();
    }

    public TemperatureToastRoot(Context context) {
        super(context);
    }

    public TemperatureToastRoot(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public TemperatureToastRoot(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    public void setTouchListener(TouchListener touchListener) {
        this.mOnTouchListener = touchListener;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent ev) {
        TouchListener touchListener = this.mOnTouchListener;
        if (touchListener != null) {
            touchListener.onTouch();
        }
        return super.dispatchTouchEvent(ev);
    }
}
