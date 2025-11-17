package com.geely.hvac.component;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.animation.LinearInterpolator;
import android.widget.Scroller;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.geely.hvac.utils.LogUtil;

/* loaded from: classes.dex */
public class PullDoorLayout extends ConstraintLayout {
    private final int MOVE_DISTANCE;
    private final String TAG;
    private boolean isCanResponse;
    private boolean mCloseFlag;
    private CloseListener mCloseListener;
    private final Context mContext;
    private int mLastDownY;
    private Scroller mScroller;
    Paint paint;
    private final Rect touchRange;

    public interface CloseListener {
        void close();
    }

    public PullDoorLayout(Context context) {
        super(context);
        this.TAG = getClass().getSimpleName();
        this.mLastDownY = 0;
        this.MOVE_DISTANCE = 6;
        this.mCloseFlag = false;
        this.touchRange = new Rect(896, 0, 1024, 32);
        this.isCanResponse = true;
        this.paint = new Paint();
        this.mContext = context;
        init();
    }

    public PullDoorLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.TAG = getClass().getSimpleName();
        this.mLastDownY = 0;
        this.MOVE_DISTANCE = 6;
        this.mCloseFlag = false;
        this.touchRange = new Rect(896, 0, 1024, 32);
        this.isCanResponse = true;
        this.paint = new Paint();
        this.mContext = context;
        init();
    }

    private void init() {
        this.mScroller = new Scroller(this.mContext, new LinearInterpolator());
        this.paint.setColor(-16776961);
        this.paint.setStyle(Paint.Style.FILL_AND_STROKE);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        if (ev.getAction() == 0 && this.touchRange.contains((int) ev.getX(), (int) ev.getY())) {
            this.isCanResponse = true;
            return true;
        }
        return super.onInterceptTouchEvent(ev);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent ev) {
        return super.dispatchTouchEvent(ev);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        int y;
        int action = event.getAction();
        if (action == 1 || action == 3) {
            this.isCanResponse = true;
        }
        if (action != 2) {
            LogUtil.d(this.TAG, "action:" + action);
        }
        if (action == 0) {
            this.mLastDownY = (int) event.getY();
            return true;
        }
        if (action == 1) {
            int y2 = ((int) event.getY()) - this.mLastDownY;
            if (y2 > 0) {
                if (Math.abs(y2) > getHeight() / 6) {
                    startBounceAnim(getScrollY(), getScrollY(), 250);
                    this.mCloseFlag = true;
                } else {
                    startBounceAnim(getScrollY(), -getScrollY(), 100);
                }
            }
        } else if (action == 2 && (y = ((int) event.getY()) - this.mLastDownY) > 0) {
            scrollTo(0, -y);
        }
        return super.onTouchEvent(event);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.mScroller.computeScrollOffset()) {
            scrollTo(this.mScroller.getCurrX(), this.mScroller.getCurrY());
            postInvalidate();
        } else if (this.mCloseFlag) {
            this.mCloseFlag = false;
            CloseListener closeListener = this.mCloseListener;
            if (closeListener != null) {
                closeListener.close();
            }
        }
    }

    private void startBounceAnim(int startY, int dy, int duration) {
        this.mScroller.startScroll(0, startY, 0, dy, duration);
        invalidate();
    }

    public void setTouchRange(int left, int top, int right, int bottom) {
        this.touchRange.set(left, top, right, bottom);
    }

    public void resetScrollPos() {
        setScrollX(0);
        setScaleY(0.0f);
    }

    public void setCloseListener(CloseListener closeListener) {
        this.mCloseListener = closeListener;
    }
}
