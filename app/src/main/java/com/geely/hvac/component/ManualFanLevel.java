package com.geely.hvac.component;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.View;
import com.geely.hvac.R;
import com.geely.hvac.utils.LogUtil;

/* loaded from: classes.dex */
public class ManualFanLevel extends View {
    private final String TAG;
    private int mActiveColor;
    private int mBlockDivideWidth;
    private int mBlockHeight;
    private volatile int mBlockWith;
    private final Point mCoo;
    private volatile int mCurrentLevel;
    private volatile int mCurrentRealLevel;
    private boolean mEnable;
    private FanLevelChangeListener mFanLevelChangeListener;
    private boolean mIsTouch;
    private volatile int mMaxLevel;
    private final Paint mPaint;
    private final Path mPath;
    private float mProgressPercent;
    private int mUnActiveColor;

    public interface FanLevelChangeListener {
        void onChange(ManualFanLevel fanLevel, int level, boolean isTouch);
    }

    public ManualFanLevel(Context context) {
        super(context);
        this.TAG = getClass().getSimpleName();
        this.mMaxLevel = 9;
        this.mBlockWith = 40;
        this.mBlockHeight = 8;
        this.mBlockDivideWidth = 3;
        this.mCurrentRealLevel = 0;
        this.mCurrentLevel = 0;
        this.mPaint = new Paint(1);
        this.mCoo = new Point();
        this.mPath = new Path();
        this.mProgressPercent = 0.33f;
        this.mEnable = true;
        this.mIsTouch = false;
    }

    public ManualFanLevel(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.TAG = getClass().getSimpleName();
        this.mMaxLevel = 9;
        this.mBlockWith = 40;
        this.mBlockHeight = 8;
        this.mBlockDivideWidth = 3;
        this.mCurrentRealLevel = 0;
        this.mCurrentLevel = 0;
        this.mPaint = new Paint(1);
        this.mCoo = new Point();
        this.mPath = new Path();
        this.mProgressPercent = 0.33f;
        this.mEnable = true;
        this.mIsTouch = false;
        init(context, attrs);
    }

    public ManualFanLevel(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.TAG = getClass().getSimpleName();
        this.mMaxLevel = 9;
        this.mBlockWith = 40;
        this.mBlockHeight = 8;
        this.mBlockDivideWidth = 3;
        this.mCurrentRealLevel = 0;
        this.mCurrentLevel = 0;
        this.mPaint = new Paint(1);
        this.mCoo = new Point();
        this.mPath = new Path();
        this.mProgressPercent = 0.33f;
        this.mEnable = true;
        this.mIsTouch = false;
        init(context, attrs);
    }

    public static void bindMaxLevel(ManualFanLevel fanLevel, int maxLevel) {
        fanLevel.setMaxLevel(maxLevel);
    }

    public static void bindCurrentLevel(ManualFanLevel fanLevel, int currentLevel) {
        fanLevel.setCurrentLevel(currentLevel);
    }

    public static void bindFanLevelEnable(ManualFanLevel fanLevel, boolean enable) {
        fanLevel.setEnabled(enable);
    }

    public static void bindFanLevelChangeListener(ManualFanLevel fanLevel, FanLevelChangeListener listener) {
        fanLevel.setFanLevelChangeListener(listener);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        calculateDimens();
        this.mCoo.y = h / 2;
    }

    private void init(Context context, AttributeSet attrs) {
        if (attrs == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.FanLevel);
        this.mActiveColor = typedArrayObtainStyledAttributes.getColor(0, 0);
        this.mUnActiveColor = typedArrayObtainStyledAttributes.getColor(3, 0);
        this.mBlockDivideWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 3);
        this.mBlockHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 8);
        typedArrayObtainStyledAttributes.recycle();
        Log.d(this.TAG, "init");
        this.mPaint.setColor(this.mActiveColor);
        this.mPaint.setStrokeWidth(1.0f);
        this.mPaint.setStyle(Paint.Style.FILL);
    }

    private void calculateDimens() {
        try {
            this.mBlockWith = (getWidth() - (this.mBlockDivideWidth * (this.mMaxLevel - 1))) / this.mMaxLevel;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setFanLevelChangeListener(FanLevelChangeListener fanLevelChangeListener) {
        Log.d(this.TAG, "setFanLevelChangeListener listener:" + fanLevelChangeListener);
        this.mFanLevelChangeListener = fanLevelChangeListener;
    }

    public void setMaxLevel(int maxLevel) {
        Log.d(this.TAG, "setMaxLevel level:" + maxLevel + ", maxFanLevel:" + this.mMaxLevel);
        this.mMaxLevel = maxLevel;
        if (this.mCurrentRealLevel > this.mMaxLevel) {
            this.mCurrentLevel = this.mMaxLevel;
        } else {
            this.mCurrentLevel = this.mCurrentRealLevel;
        }
        calculateDimens();
        invalidate();
    }

    public void setCurrentLevel(int currentLevel) {
        Log.d(this.TAG, "setCurrentLevel level:" + currentLevel + ", maxLevel:" + this.mMaxLevel + ", mIsTouch:" + this.mIsTouch + ", mCurrentLevel:" + this.mCurrentLevel);
        this.mCurrentRealLevel = currentLevel;
        if (currentLevel < 0 || this.mIsTouch) {
            return;
        }
        if (currentLevel > this.mMaxLevel) {
            this.mCurrentLevel = this.mMaxLevel;
        } else {
            this.mCurrentLevel = currentLevel;
        }
        invalidate();
    }

    @Override // android.view.View
    public void setEnabled(boolean enabled) {
        this.mEnable = enabled;
        super.setEnabled(enabled);
        invalidate();
    }

    private void addPath(Path path, int blockIndex) {
        int i = this.mBlockHeight / 2;
        int i2 = this.mBlockWith;
        int i3 = this.mMaxLevel;
        int i4 = this.mBlockDivideWidth;
        if (blockIndex == 0) {
            float f = i;
            path.addCircle(f, 0.0f, f, Path.Direction.CW);
            path.addRect(f, -i, i2, f, Path.Direction.CW);
            return;
        }
        if (blockIndex == i3 - 1) {
            float width = getWidth() - i;
            float f2 = i;
            path.addCircle(width, 0.0f, f2, Path.Direction.CW);
            path.addRect((i2 * blockIndex) + (i4 * blockIndex), -i, width, f2, Path.Direction.CW);
            return;
        }
        int i5 = i4 * blockIndex;
        path.addRect((i2 * blockIndex) + i5, -i, (i2 * (blockIndex + 1)) + i5, i, Path.Direction.CW);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Log.d(this.TAG, "onDraw active:" + this.mActiveColor + ", unactive:" + this.mUnActiveColor);
        canvas.translate(this.mCoo.x, this.mCoo.y);
        int i = 0;
        if (this.mEnable) {
            this.mPath.reset();
            this.mPaint.setColor(this.mActiveColor);
            while (i < this.mCurrentLevel) {
                addPath(this.mPath, i);
                i++;
            }
            canvas.drawPath(this.mPath, this.mPaint);
            this.mPaint.setColor(this.mUnActiveColor);
            this.mPath.reset();
            for (int i2 = this.mCurrentLevel; i2 < this.mMaxLevel; i2++) {
                addPath(this.mPath, i2);
            }
            canvas.drawPath(this.mPath, this.mPaint);
            return;
        }
        this.mPaint.setColor(this.mUnActiveColor);
        this.mPath.reset();
        while (i < this.mMaxLevel) {
            addPath(this.mPath, i);
            i++;
        }
        canvas.drawPath(this.mPath, this.mPaint);
    }

    private void calculateProgress(MotionEvent event) {
        calculateProgress(event, false);
    }

    private void calculateProgress(MotionEvent event, boolean forceCallBack) {
        int x = (int) (((event.getX() - (this.mProgressPercent * this.mBlockWith)) / (this.mBlockWith + this.mBlockDivideWidth)) + 1.0f);
        if (x > this.mMaxLevel) {
            x = this.mMaxLevel;
        }
        if (x <= 0) {
            x = 1;
        }
        if (forceCallBack || x != this.mCurrentLevel) {
            this.mCurrentLevel = x;
            invalidate();
            if (!forceCallBack) {
                playSound();
            }
            FanLevelChangeListener fanLevelChangeListener = this.mFanLevelChangeListener;
            if (fanLevelChangeListener != null) {
                fanLevelChangeListener.onChange(this, this.mCurrentLevel, this.mIsTouch);
            }
        }
    }

    private void playSound() {
        LogUtil.d(this.TAG, "playSound");
        playSoundEffect(SoundEffectConstants.getContantForFocusDirection(130));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        if (!this.mEnable) {
            return false;
        }
        int action = event.getAction();
        if (action == MotionEvent.ACTION_DOWN) {
            this.mIsTouch = true;
            if (getParent() != null) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            calculateProgress(event);
        } else if (action == MotionEvent.ACTION_UP || action == MotionEvent.ACTION_CANCEL) {
            this.mIsTouch = false;
            calculateProgress(event, true);
        } else if (action == MotionEvent.ACTION_MOVE) {
            calculateProgress(event);
        }
        return true;
    }
}
