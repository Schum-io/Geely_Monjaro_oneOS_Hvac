package com.geely.toolchain.hmi.view;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import androidx.appcompat.widget.AppCompatSeekBar;

/* loaded from: classes.dex */
public class HmiVerticalSeekbar extends AppCompatSeekBar {
    private static final String TAG = "HmiVerticalSeekbar";
    private OnSeekBarChangeListener mOnSeekBarChangeListener;

    public interface OnSeekBarChangeListener {
        void onProgressChanged(HmiVerticalSeekbar seekbar, int progress);

        void onStartTrackingTouch(HmiVerticalSeekbar seekbar);

        void onStopTrackingTouch(HmiVerticalSeekbar seekbar);
    }

    public HmiVerticalSeekbar(Context context) {
        super(context);
    }

    public HmiVerticalSeekbar(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public HmiVerticalSeekbar(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(h, w, oldh, oldw);
    }

    @Override // android.widget.ProgressBar
    public synchronized void setProgress(int progress) {
        super.setProgress(progress);
        onSizeChanged(getWidth(), getHeight(), 0, 0);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected synchronized void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(heightMeasureSpec, widthMeasureSpec);
        setMeasuredDimension(getMeasuredHeight(), getMeasuredWidth());
    }

    @Override // androidx.appcompat.widget.AppCompatSeekBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onDraw(Canvas c) {
        c.rotate(90.0f);
        c.translate(0.0f, -getWidth());
        super.onDraw(c);
    }

    @Override // android.widget.AbsSeekBar, android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        if (!isEnabled()) {
            return false;
        }
        int action = event.getAction();
        if (action == 0) {
            onStartTrackingTouch();
            trackTouchEvent(event);
        } else if (action == 1) {
            trackTouchEvent(event);
            onStopTrackingTouch();
        } else if (action == 2) {
            trackTouchEvent(event);
            attemptClaimDrag();
        } else if (action == 3) {
            onStopTrackingTouch();
        }
        return true;
    }

    private void trackTouchEvent(MotionEvent event) {
        int max = (int) ((getMax() * event.getY()) / getHeight());
        if (max > 100) {
            max = 100;
        }
        if (max < 0) {
            max = 0;
        }
        Log.d(TAG, "onProgressChanged  progress-> " + max);
        setProgress(max);
        OnSeekBarChangeListener onSeekBarChangeListener = this.mOnSeekBarChangeListener;
        if (onSeekBarChangeListener != null) {
            onSeekBarChangeListener.onProgressChanged(this, max);
        }
    }

    private void attemptClaimDrag() {
        if (getParent() != null) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
    }

    public void setOnSeekBarChangeListener(OnSeekBarChangeListener listener) {
        this.mOnSeekBarChangeListener = listener;
    }

    private void onStartTrackingTouch() {
        OnSeekBarChangeListener onSeekBarChangeListener = this.mOnSeekBarChangeListener;
        if (onSeekBarChangeListener != null) {
            onSeekBarChangeListener.onStartTrackingTouch(this);
        }
    }

    private void onStopTrackingTouch() {
        OnSeekBarChangeListener onSeekBarChangeListener = this.mOnSeekBarChangeListener;
        if (onSeekBarChangeListener != null) {
            onSeekBarChangeListener.onStopTrackingTouch(this);
        }
    }
}
