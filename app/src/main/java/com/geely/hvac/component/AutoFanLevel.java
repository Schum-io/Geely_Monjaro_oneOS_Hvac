package com.geely.hvac.component;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.geely.hvac.R;
import com.geely.hvac.utils.LogUtil;

/* loaded from: classes.dex */
public class AutoFanLevel extends View {
    private final String TAG;
    private int mActiveColor;
    private int mBgColor;
    private int mBlockDivideWidth;
    private int mBlockHeight;
    private int mBlockWith;
    private final Point mCoo;
    private int mCurrentLevel;
    private boolean mEnable;
    private ValueAnimator mGradientAnimator;
    private ValueAnimator.AnimatorUpdateListener mGradientAnimatorListener;
    private int[] mGradientColors;
    private final Paint mGradientPaint;
    private float[] mGradientPos;
    private int mGradientRctX;
    private int mHalfBlockHeight;
    private int mHalfBlockWidth;
    private LinearGradient mLinearGradient;
    private int mMaxLevel;
    private OnFanLevelChangeListener mOnFanLevelChangeListener;
    private final Paint mPaint;
    private final Path mPath;
    private float mProgressPercent;
    private int mUnActiveColor;
    private final Point mViewSize;

    public interface OnFanLevelChangeListener {
        void onProgressChanged(AutoFanLevel manualFanLevel, int progress, boolean fromUser);

        void onStartTrackingTouch(AutoFanLevel manualFanLevel);

        void onStopTrackingTouch(AutoFanLevel manualFanLevel);
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.mGradientRctX = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        invalidate();
    }

    public void setOnFanLevelChangeListener(OnFanLevelChangeListener onFanLevelChangeListener) {
        this.mOnFanLevelChangeListener = onFanLevelChangeListener;
    }

    public static abstract class OnFanLevelChangeListenerImp implements OnFanLevelChangeListener {
        private boolean mFromUser;
        private int mProgress = -1;

        public abstract void onDragEnd(AutoFanLevel autoFanLevel, int progress, boolean fromUser);

        @Override // com.geely.hvac.component.AutoFanLevel.OnFanLevelChangeListener
        public void onStartTrackingTouch(AutoFanLevel autoFanLevel) {
        }

        @Override // com.geely.hvac.component.AutoFanLevel.OnFanLevelChangeListener
        public void onProgressChanged(AutoFanLevel autoFanLevel, int progress, boolean fromUser) {
            this.mProgress = progress;
            this.mFromUser = fromUser;
        }

        @Override // com.geely.hvac.component.AutoFanLevel.OnFanLevelChangeListener
        public void onStopTrackingTouch(AutoFanLevel autoFanLevel) {
            int i = this.mProgress;
            if (i >= 0) {
                onDragEnd(autoFanLevel, i, this.mFromUser);
            }
            this.mProgress = -1;
            this.mFromUser = false;
        }
    }

    public AutoFanLevel(Context context) throws Resources.NotFoundException {
        super(context);
        this.TAG = getClass().getSimpleName();
        this.mMaxLevel = 9;
        this.mBlockWith = 40;
        this.mBlockHeight = 8;
        this.mBlockDivideWidth = 3;
        this.mCurrentLevel = 0;
        this.mPaint = new Paint(1);
        this.mGradientPaint = new Paint(1);
        this.mViewSize = new Point();
        this.mCoo = new Point();
        this.mPath = new Path();
        this.mGradientPos = new float[]{0.25f, 0.5f, 0.75f, 1.0f};
        this.mProgressPercent = 0.33f;
        this.mGradientRctX = 0;
        this.mEnable = true;
        this.mGradientAnimatorListener = this::onAnimationUpdate;
        init(context, null);
    }

    public AutoFanLevel(Context context, AttributeSet attrs) throws Resources.NotFoundException {
        super(context, attrs);
        this.TAG = getClass().getSimpleName();
        this.mMaxLevel = 9;
        this.mBlockWith = 40;
        this.mBlockHeight = 8;
        this.mBlockDivideWidth = 3;
        this.mCurrentLevel = 0;
        this.mPaint = new Paint(1);
        this.mGradientPaint = new Paint(1);
        this.mViewSize = new Point();
        this.mCoo = new Point();
        this.mPath = new Path();
        this.mGradientPos = new float[]{0.25f, 0.5f, 0.75f, 1.0f};
        this.mProgressPercent = 0.33f;
        this.mGradientRctX = 0;
        this.mEnable = true;
        this.mGradientAnimatorListener = this::onAnimationUpdate;
        init(context, attrs);
    }

    public AutoFanLevel(Context context, AttributeSet attrs, int defStyleAttr) throws Resources.NotFoundException {
        super(context, attrs, defStyleAttr);
        this.TAG = getClass().getSimpleName();
        this.mMaxLevel = 9;
        this.mBlockWith = 40;
        this.mBlockHeight = 8;
        this.mBlockDivideWidth = 3;
        this.mCurrentLevel = 0;
        this.mPaint = new Paint(1);
        this.mGradientPaint = new Paint(1);
        this.mViewSize = new Point();
        this.mCoo = new Point();
        this.mPath = new Path();
        this.mGradientPos = new float[]{0.25f, 0.5f, 0.75f, 1.0f};
        this.mProgressPercent = 0.33f;
        this.mGradientRctX = 0;
        this.mEnable = true;
        this.mGradientAnimatorListener = this::onAnimationUpdate;
        init(context, attrs);
    }

    public void setEnable(boolean enable) {
        this.mEnable = enable;
        invalidate();
    }

    public void setLevel(int currentLevel, int maxLevel) throws Resources.NotFoundException {
        if (currentLevel > maxLevel) {
            return;
        }
        this.mMaxLevel = maxLevel;
        this.mCurrentLevel = currentLevel;
        calculateDimens();
        updateAnimator();
        invalidate();
    }

    private void calculateDimens() throws Resources.NotFoundException {
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.manual_fan_level_width);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.manual_fan_block_divide_width);
        this.mBlockDivideWidth = dimensionPixelSize2;
        int i = this.mMaxLevel;
        this.mBlockWith = (dimensionPixelSize - (dimensionPixelSize2 * (i - 1))) / i;
        int dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.auto_fan_block_height);
        this.mBlockHeight = dimensionPixelSize3;
        this.mHalfBlockHeight = dimensionPixelSize3 / 2;
        this.mHalfBlockWidth = this.mBlockWith / 2;
    }

    private void init(Context context, AttributeSet attrs) throws Resources.NotFoundException {
        this.mActiveColor = getResources().getColor(R.color.fan_level_progress_color_active);
        this.mUnActiveColor = getResources().getColor(R.color.fan_level_progress_color_unactive);
        this.mBgColor = getResources().getColor(R.color.ac_fan_level_bg);
        calculateDimens();
        this.mPaint.setColor(this.mActiveColor);
        this.mPaint.setStrokeWidth(1.0f);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mGradientColors = new int[]{0, 0, 0, 0};
        this.mLinearGradient = new LinearGradient(this.mGradientRctX, 0.0f, this.mGradientRctX + this.mBlockWith, 0.0f, this.mGradientColors, this.mGradientPos, Shader.TileMode.CLAMP);
        this.mGradientPaint.setStyle(Paint.Style.FILL);
        createAnimator();
    }

    private void createAnimator() {
        ValueAnimator valueAnimator = this.mGradientAnimator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.mGradientAnimator.cancel();
        }
        int i = this.mBlockWith;
        int i2 = this.mCurrentLevel;
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(-i, ((i2 + 1) * i) + (i2 * this.mBlockDivideWidth));
        this.mGradientAnimator = valueAnimatorOfInt;
        valueAnimatorOfInt.addUpdateListener(this.mGradientAnimatorListener);
        this.mGradientAnimator.setDuration((this.mCurrentLevel + 1) * 1000);
        this.mGradientAnimator.setRepeatCount(-1);
        this.mGradientAnimator.setRepeatMode(1);
    }

    @Override // android.view.View
    public void setVisibility(int visibility) {
        super.setVisibility(visibility);
        startAnimate();
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        LogUtil.d(this.TAG, "onAttachedToWindow");
        startAnimate();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        LogUtil.d(this.TAG, "onDetachedFromWindow");
        stopAnimate();
    }

    private void startAnimate() {
        if (getVisibility() != 0 || !isAttachedToWindow()) {
            LogUtil.d(this.TAG, "不可见");
        }
        if (this.mGradientAnimator == null) {
            createAnimator();
        }
    }

    private void stopAnimate() {
        ValueAnimator valueAnimator = this.mGradientAnimator;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        this.mGradientAnimator.cancel();
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        this.mViewSize.x = w;
        this.mViewSize.y = h;
        this.mCoo.y = h / 2;
    }

    private void drawLayer1(Canvas canvas) {
        canvas.drawColor(this.mActiveColor);
    }

    private void drawLayer2(Canvas canvas) {
        canvas.translate(this.mCoo.x, this.mCoo.y);
        LinearGradient linearGradient = new LinearGradient(this.mGradientRctX, 0.0f, this.mGradientRctX + this.mBlockWith, 0.0f, this.mGradientColors, this.mGradientPos, Shader.TileMode.CLAMP);
        this.mLinearGradient = linearGradient;
        this.mGradientPaint.setShader(linearGradient);
        canvas.drawRect(this.mGradientRctX, -this.mHalfBlockHeight, this.mGradientRctX + this.mBlockWith, this.mHalfBlockHeight, this.mGradientPaint);
    }

    private void drawLayer3(Canvas canvas) {
        this.mPath.reset();
        this.mPaint.setColor(this.mBgColor);
        int i = this.mEnable ? this.mCurrentLevel : 0;
        if (i == 0) {
            canvas.drawColor(this.mBgColor);
        }
        if (i > 0) {
            this.mPath.setFillType(Path.FillType.INVERSE_EVEN_ODD);
            for (int i2 = 0; i2 < i; i2++) {
                addPath(this.mPath, i2);
            }
            canvas.drawPath(this.mPath, this.mPaint);
        }
        this.mPaint.setColor(this.mUnActiveColor);
        this.mPath.reset();
        this.mPath.setFillType(Path.FillType.EVEN_ODD);
        while (i < this.mMaxLevel) {
            addPath(this.mPath, i);
            i++;
        }
        canvas.drawPath(this.mPath, this.mPaint);
    }

    private void addPath(Path path, int blockIndex) {
        if (blockIndex == 0) {
            path.arcTo(new RectF(0.0f, -this.mHalfBlockHeight, this.mBlockHeight, this.mHalfBlockHeight), 90.0f, 180.0f, true);
            path.moveTo(this.mHalfBlockHeight, -this.mHalfBlockHeight);
            path.lineTo(this.mBlockWith, -this.mHalfBlockHeight);
            path.lineTo(this.mBlockWith, this.mHalfBlockHeight);
            int i = this.mHalfBlockHeight;
            path.lineTo(i, i);
            return;
        }
        int i2 = this.mMaxLevel;
        if (blockIndex == i2 - 1) {
            int i3 = this.mBlockWith;
            int i4 = this.mBlockDivideWidth;
            int i5 = ((i2 - 1) * i3) + ((i2 - 1) * i4);
            int i6 = (i3 * i2) + (i4 * (i2 - 1));
            path.arcTo(new RectF(i6 - this.mBlockHeight, -this.mHalfBlockHeight, i6, this.mHalfBlockHeight), 270.0f, 180.0f, true);
            int i7 = this.mHalfBlockHeight;
            path.moveTo(i6 - i7, -i7);
            float f = i5;
            path.lineTo(f, -this.mHalfBlockHeight);
            path.lineTo(f, this.mHalfBlockHeight);
            path.lineTo(i6 - this.mHalfBlockHeight, this.mHalfBlockHeight);
            return;
        }
        int i8 = this.mBlockWith;
        int i9 = this.mBlockDivideWidth;
        path.addRect((i8 * blockIndex) + (i9 * blockIndex), -this.mHalfBlockHeight, (i8 * (blockIndex + 1)) + (i9 * blockIndex), this.mHalfBlockHeight, Path.Direction.CW);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawLayer1(canvas);
        canvas.save();
        if (this.mEnable) {
            drawLayer2(canvas);
            canvas.save();
        } else {
            canvas.translate(this.mCoo.x, this.mCoo.y);
        }
        drawLayer3(canvas);
    }

    private void updateAnimator() {
        float currentPlayTime;
        if (this.mGradientAnimator == null) {
            createAnimator();
            currentPlayTime = 0.0f;
        } else {
            currentPlayTime = (this.mGradientAnimator.getCurrentPlayTime() * 1.0f) / this.mGradientAnimator.getDuration();
        }
        ValueAnimator valueAnimator = this.mGradientAnimator;
        int i = this.mBlockWith;
        int i2 = this.mCurrentLevel;
        valueAnimator.setIntValues(-i, ((i2 + 1) * i) + (i2 * this.mBlockDivideWidth));
        long j = (this.mCurrentLevel + 1) * 1000;
        this.mGradientAnimator.setDuration(j);
        this.mGradientAnimator.setCurrentPlayTime((long) (currentPlayTime * j));
    }

    private void calculateProgress(MotionEvent event) {
        int x = (int) (((event.getX() - (this.mProgressPercent * this.mBlockWith)) / (this.mBlockWith + this.mBlockDivideWidth)) + 1.0f);
        int i = this.mMaxLevel;
        if (x > i) {
            x = i;
        }
        if (x < 0) {
            x = 0;
        }
        if (x != this.mCurrentLevel) {
            this.mCurrentLevel = x;
            LogUtil.d(this.TAG, "calculateProgress, progress changed, progress:" + this.mCurrentLevel);
            invalidate();
            updateAnimator();
            OnFanLevelChangeListener onFanLevelChangeListener = this.mOnFanLevelChangeListener;
            if (onFanLevelChangeListener != null) {
                onFanLevelChangeListener.onProgressChanged(this, x, true);
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        OnFanLevelChangeListener onFanLevelChangeListener;
        if (!this.mEnable) {
            return false;
        }
        int action = event.getAction();
        if (action == 0) {
            getParent().requestDisallowInterceptTouchEvent(true);
            OnFanLevelChangeListener onFanLevelChangeListener2 = this.mOnFanLevelChangeListener;
            if (onFanLevelChangeListener2 != null) {
                onFanLevelChangeListener2.onStartTrackingTouch(this);
            }
            calculateProgress(event);
        } else if (action == 1) {
            OnFanLevelChangeListener onFanLevelChangeListener3 = this.mOnFanLevelChangeListener;
            if (onFanLevelChangeListener3 != null) {
                onFanLevelChangeListener3.onStopTrackingTouch(this);
            }
        } else if (action == 2) {
            calculateProgress(event);
        } else if (action == 3 && (onFanLevelChangeListener = this.mOnFanLevelChangeListener) != null) {
            onFanLevelChangeListener.onStopTrackingTouch(this);
        }
        return true;
    }
}
