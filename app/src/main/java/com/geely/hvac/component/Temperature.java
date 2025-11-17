package com.geely.hvac.component;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import androidx.core.view.ViewCompat;
import com.geely.hvac.GlyAcManager;
import com.geely.hvac.R;
import com.geely.hvac.util.ClickUtils;
import com.geely.hvac.utils.Executor;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.utils.ViewFroze;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class Temperature extends View {
    private static final String TAG = "Temperature";
    private final int DRAW_TEXT_SIZE;
    private final int PICKER_ALIGN_CENTER;
    private final int PICKER_ALIGN_LEFT;
    private final int PICKER_ALIGN_RIGHT;
    private boolean isTouchIng;
    private final PointF mActionDownPoint;
    private float mActionScrollY;
    private boolean mCanRefresh;
    private final ClickScrollHelper mClickScrollHelper;
    private Point mCoo;
    private float mDeltaAlpha;
    private int mDeltaTextSize;
    private final int[] mDrawTextIndexes;
    private boolean mEnable;
    private FlingHelper mFlingHelper;
    private boolean mIsActionUp;
    private float mMaxAlpha;
    private float mMaxScrollY;
    private float mMaxTemp;
    private float mMaxTextHeight;
    private int mMaxTextSize;
    private float mMinAlpha;
    private float mMinScrollY;
    private float mMinTemp;
    private float mMinTextHeight;
    private int mMinTextSize;
    private OnScrollTemperatureChangeListener mOnScrollTemperatureChangeListener;
    private OnTemperatureInputChangeListener mOnTemperatureChangeListener;
    private final Paint mPaint;
    private int mPickerAlign;
    private float mScrollHeight;
    private volatile float mScrollY;
    private CustomScroller mScroller;
    private int mSoundIndex;
    private final float mSoundIndexDelta;
    private final List<Float> mTempList;
    private float mTempStep;
    private float mTemperature;
    private int mTextColor;
    private float mTextMargin;
    private ValueAnimator mUserSetAnimator;
    private VelocityTracker mVelocityTracker;
    private ViewFroze mViewFroze;
    private Point mViewSize;

    public interface OnScrollTemperatureChangeListener {
        void onChange(float temperature, boolean isTouchIng);
    }

    public interface OnTemperatureInputChangeListener {
        void onChange(float temperature);
    }

    private static class ClickScrollHelper {
        private boolean mActionDownFling;
        private boolean mActionDownSetScroll;
        private int mPreAction;

        private ClickScrollHelper() {
            this.mActionDownFling = false;
            this.mActionDownSetScroll = false;
        }

        public boolean isActionDownFling() {
            return this.mActionDownFling;
        }

        public void setActionDownFling(boolean actionDownFling) {
            this.mActionDownFling = actionDownFling;
        }

        public boolean isActionDownSetScroll() {
            return this.mActionDownSetScroll;
        }

        public void setActionDownSetScroll(boolean actionDownSetScroll) {
            this.mActionDownSetScroll = actionDownSetScroll;
        }

        public void onTouchEvent(MotionEvent event) {
            this.mPreAction = event.getAction();
        }

        public boolean hasMove() {
            return this.mPreAction == 2;
        }

        public boolean isPreActionDown() {
            return this.mPreAction == 0;
        }
    }

    public static void bind(Temperature input, float max, float min, float step, OnTemperatureInputChangeListener listener) {
        input.setOnTemperatureChangeListener(listener);
        input.mMaxTemp = max;
        input.mMinTemp = min;
        input.mTempStep = step;
        input.updateTempList();
        LogUtil.d(TAG, "bind, max:" + max + ",min:" + min + ",step:" + step);
    }

    public static void bindTemperature(Temperature input, float temperature) {
        LogUtil.d(TAG, "bindTemperature ,temperature:" + temperature);
        input.setOrderRefresh(temperature);
        GlyAcManager.getInstance().getAcInterfaceManager().resetHideRunnable();
    }

    public static void bindEnable(Temperature view, boolean enable) {
        view.setEnable(enable);
    }

    private void setEnable(boolean enable) {
        this.mEnable = enable;
        invalidate();
    }

    public void setOrderRefresh(final float temperature) {
        Executor.MAIN.post(new Runnable() { // from class: com.geely.hvac.component.Temperature.1
            @Override // java.lang.Runnable
            public void run() {
                Temperature.this.setTemperature(temperature);
            }
        });
    }

    private void resetUserSetAnimator() {
        LogUtil.d(TAG, "resetUserSetAnimator");
        ValueAnimator valueAnimator = this.mUserSetAnimator;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        this.mUserSetAnimator.end();
    }

    private float getTargetScrollY(int index) {
        if (index == 0) {
            return this.mMinScrollY;
        }
        if (index == this.mTempList.size() - 1) {
            return this.mMaxScrollY;
        }
        return (index * this.mTextMargin) + (this.mMaxTextHeight / 2.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void setTemperature(float temperature) {
        LogUtil.d(TAG, "setTemperature, temperature:" + temperature + ", mMinTemp:" + this.mMinTemp + ", mMaxTemp:" + this.mMaxTemp + ", mTempStep:" + this.mTempStep);
        if (temperature >= this.mMinTemp && temperature <= this.mMaxTemp) {
            boolean z = true;
            if (this.mViewFroze.isFroze(true)) {
                z = false;
            }
            setTemperature(temperature, z);
        }
    }

    private void setTemperature(float temperature, boolean animate) {
        setTemperature(temperature, animate, ViewFroze.FROZE_TIME);
    }

    private void setTemperature(float temperature, boolean animate, int duration) {
        String str = TAG;
        LogUtil.d(str, "setTemperature, temperature:" + temperature + ",animate:" + animate);
        if (temperature < this.mMinTemp || temperature > this.mMaxTemp) {
            return;
        }
        this.mTemperature = temperature;
        int iIndexOf = this.mTempList.indexOf(Float.valueOf(temperature));
        if (iIndexOf < 0) {
            return;
        }
        final float targetScrollY = getTargetScrollY(iIndexOf);
        float deltaYPercent = (this.mScrollY - targetScrollY) / this.mTextMargin;
        LogUtil.d(str, "setTemperature, deltaYPercent:" + deltaYPercent);
        if (Math.abs(deltaYPercent) < 0.1d) {
            LogUtil.d(str, "setTemperature, deltaYPercent too small");
            resetUserSetAnimator();
            return;
        }
        LogUtil.d(str, "setTemperature, targetScrollY:" + targetScrollY);
        if (animate) {
            resetUserSetAnimator();
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.mScrollY, targetScrollY);
            this.mUserSetAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.geely.hvac.component.-$$Lambda$Temperature$fevJqfSxS3jNWTYmU99ILWrH1MY
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    Temperature.this.lambda$setTemperature$0$Temperature(targetScrollY, valueAnimator);
                }
            });
            this.mUserSetAnimator.setDuration(duration);
            this.mUserSetAnimator.start();
            return;
        }
        setMyScrollY(targetScrollY);
        invalidate();
    }

    public /* synthetic */ void lambda$setTemperature$0$Temperature(float f, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        if (fFloatValue > this.mScrollY && fFloatValue >= f) {
            this.mCanRefresh = true;
        } else {
            this.mCanRefresh = false;
        }
        setMyScrollY(fFloatValue);
        invalidate();
    }

    public void setOnTemperatureChangeListener(OnTemperatureInputChangeListener onTemperatureChangeListener) {
        this.mOnTemperatureChangeListener = onTemperatureChangeListener;
    }

    public void setOnScrollTemperatureChangeListener(OnScrollTemperatureChangeListener listener) {
        this.mOnScrollTemperatureChangeListener = listener;
    }

    public Temperature(Context context) {
        super(context);
        this.mScrollY = 0.0f;
        this.mMaxAlpha = 1.0f;
        this.mMinAlpha = 0.5f;
        this.mTextMargin = 100.0f;
        this.mViewSize = new Point();
        this.mCoo = new Point();
        this.mMaxTextSize = 60;
        this.mMinTextSize = 42;
        this.mDeltaTextSize = 0;
        this.mTextColor = ViewCompat.MEASURED_STATE_MASK;
        this.mPickerAlign = 0;
        this.mPaint = new Paint(1);
        this.PICKER_ALIGN_CENTER = 0;
        this.PICKER_ALIGN_LEFT = 1;
        this.PICKER_ALIGN_RIGHT = 2;
        this.mMaxTemp = 28.5f;
        this.mMinTemp = 15.5f;
        this.mTempStep = 0.5f;
        this.mTempList = new ArrayList();
        this.DRAW_TEXT_SIZE = 5;
        this.mDrawTextIndexes = new int[5];
        this.mActionDownPoint = new PointF();
        this.mSoundIndexDelta = 0.2f;
        this.mClickScrollHelper = new ClickScrollHelper();
        this.mEnable = true;
        this.mViewFroze = new ViewFroze(ViewFroze.FROZE_TIME);
        this.mCanRefresh = true;
        this.mOnTemperatureChangeListener = null;
        this.mOnScrollTemperatureChangeListener = null;
        this.mTemperature = 0.0f;
        this.isTouchIng = false;
        init(context, null, 0);
    }

    public Temperature(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mScrollY = 0.0f;
        this.mMaxAlpha = 1.0f;
        this.mMinAlpha = 0.5f;
        this.mTextMargin = 100.0f;
        this.mViewSize = new Point();
        this.mCoo = new Point();
        this.mMaxTextSize = 60;
        this.mMinTextSize = 42;
        this.mDeltaTextSize = 0;
        this.mTextColor = ViewCompat.MEASURED_STATE_MASK;
        this.mPickerAlign = 0;
        this.mPaint = new Paint(1);
        this.PICKER_ALIGN_CENTER = 0;
        this.PICKER_ALIGN_LEFT = 1;
        this.PICKER_ALIGN_RIGHT = 2;
        this.mMaxTemp = 28.5f;
        this.mMinTemp = 15.5f;
        this.mTempStep = 0.5f;
        this.mTempList = new ArrayList();
        this.DRAW_TEXT_SIZE = 5;
        this.mDrawTextIndexes = new int[5];
        this.mActionDownPoint = new PointF();
        this.mSoundIndexDelta = 0.2f;
        this.mClickScrollHelper = new ClickScrollHelper();
        this.mEnable = true;
        this.mViewFroze = new ViewFroze(ViewFroze.FROZE_TIME);
        this.mCanRefresh = true;
        this.mOnTemperatureChangeListener = null;
        this.mOnScrollTemperatureChangeListener = null;
        this.mTemperature = 0.0f;
        this.isTouchIng = false;
        init(context, attrs, 0);
    }

    public Temperature(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mScrollY = 0.0f;
        this.mMaxAlpha = 1.0f;
        this.mMinAlpha = 0.5f;
        this.mTextMargin = 100.0f;
        this.mViewSize = new Point();
        this.mCoo = new Point();
        this.mMaxTextSize = 60;
        this.mMinTextSize = 42;
        this.mDeltaTextSize = 0;
        this.mTextColor = ViewCompat.MEASURED_STATE_MASK;
        this.mPickerAlign = 0;
        this.mPaint = new Paint(1);
        this.PICKER_ALIGN_CENTER = 0;
        this.PICKER_ALIGN_LEFT = 1;
        this.PICKER_ALIGN_RIGHT = 2;
        this.mMaxTemp = 28.5f;
        this.mMinTemp = 15.5f;
        this.mTempStep = 0.5f;
        this.mTempList = new ArrayList();
        this.DRAW_TEXT_SIZE = 5;
        this.mDrawTextIndexes = new int[5];
        this.mActionDownPoint = new PointF();
        this.mSoundIndexDelta = 0.2f;
        this.mClickScrollHelper = new ClickScrollHelper();
        this.mEnable = true;
        this.mViewFroze = new ViewFroze(ViewFroze.FROZE_TIME);
        this.mCanRefresh = true;
        this.mOnTemperatureChangeListener = null;
        this.mOnScrollTemperatureChangeListener = null;
        this.mTemperature = 0.0f;
        this.isTouchIng = false;
        init(context, attrs, defStyleAttr);
    }

    private void updateTempList() {
        this.mTempList.clear();
        float f = this.mMaxTemp;
        while (f >= this.mMinTemp) {
            this.mTempList.add(Float.valueOf(f));
            f -= this.mTempStep;
        }
        this.mScrollHeight = Math.max((this.mTempList.size() - 1) * this.mTextMargin, 0.0f);
        this.mMaxScrollY = Math.round(this.mScrollHeight + (this.mMaxTextHeight / 2.0f));
        LogUtil.d(TAG, "updateTempList, mScrollHeight:" + this.mScrollHeight + ", mMaxScrollY:" + this.mMaxScrollY);
        invalidate();
        setTemperature(this.mTemperature, false, ViewFroze.FROZE_TIME);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        this.mViewSize.x = w;
        this.mViewSize.y = h;
        this.mCoo.y = h / 2;
        this.mTextMargin = (this.mViewSize.y / 2.0f) - (this.mMinTextHeight / 2.0f);
        float fMax = Math.max((this.mTempList.size() - 1) * this.mTextMargin, 0.0f);
        this.mScrollHeight = fMax;
        this.mMaxScrollY = fMax + (this.mMaxTextHeight / 2.0f);
        LogUtil.d(TAG, "onSizeChanged, textMargin:" + this.mTextMargin + ", mScrollHeight:" + this.mScrollHeight + ", mMaxScrollY:" + this.mMaxScrollY);
    }

    private float getTextHeight(Paint paint) {
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        return fontMetrics.bottom - fontMetrics.top;
    }

    private void init(Context context, AttributeSet attrs, int defStyleAttr) {
        if (attrs == null) {
            return;
        }
        this.mScroller = new CustomScroller(context);
        this.mFlingHelper = new FlingHelper(context);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.Temperature);
        this.mTextColor = typedArrayObtainStyledAttributes.getColor(5, ViewCompat.MEASURED_STATE_MASK);
        this.mMaxAlpha = typedArrayObtainStyledAttributes.getFloat(0, 1.0f);
        this.mMinAlpha = typedArrayObtainStyledAttributes.getFloat(2, 0.5f);
        this.mMaxTextSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 40);
        this.mMinTextSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, 36);
        this.mPickerAlign = typedArrayObtainStyledAttributes.getInt(4, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.mDeltaAlpha = this.mMaxAlpha - this.mMinAlpha;
        this.mDeltaTextSize = this.mMaxTextSize - this.mMinTextSize;
        this.mPaint.setStrokeWidth(2.2f);
        this.mPaint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.mPaint.setColor(this.mTextColor);
        this.mPaint.setTypeface(Typeface.create("LynkcoDisplay-Medium", 0));
        this.mPaint.setTextAlign(this.mPickerAlign == 1 ? Paint.Align.LEFT : Paint.Align.RIGHT);
        this.mPaint.setTextSize(this.mMaxTextSize);
        this.mMaxTextHeight = getTextHeight(this.mPaint);
        this.mPaint.setTextSize(this.mMinTextSize);
        this.mMinTextHeight = getTextHeight(this.mPaint);
        float fRound = Math.round(this.mMaxTextHeight / 2.0f);
        this.mMinScrollY = fRound;
        setMyScrollY(fRound);
        LogUtil.d(TAG, "init, mMaxTextHeight:" + this.mMaxTextHeight + ", mMinTextHeight:" + this.mMinTextHeight + ", mMinScrollY:" + this.mMinScrollY);
    }

    private float calculateCenterY(Paint.FontMetrics metrics, float y) {
        return y - ((metrics.descent + metrics.ascent) / 2.0f);
    }

    private void resetDrawTextIndexes() {
        for (int i = 0; i < 5; i++) {
            this.mDrawTextIndexes[i] = -1;
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        String str;
        super.onDraw(canvas);
        if (this.mTempList.size() == 0) {
            return;
        }
        canvas.translate(0.0f, this.mCoo.y);
        int size = this.mTempList.size();
        float f = (this.mScrollY - (this.mMaxTextHeight / 2.0f)) / this.mTextMargin;
        resetDrawTextIndexes();
        int iRound = Math.round(f);
        int[] iArr = this.mDrawTextIndexes;
        int i = 0;
        iArr[0] = iRound;
        int i2 = 1;
        iArr[1] = iRound - 1;
        iArr[2] = iRound - 2;
        iArr[3] = iRound + 1;
        iArr[4] = iRound + 2;
        while (i < 5) {
            int i3 = this.mDrawTextIndexes[i];
            if (i3 < size && i3 >= 0) {
                float fFloatValue = this.mTempList.get(i3).floatValue();
                float f2 = f - i3;
                float fAbs = this.mMaxTextSize - (this.mDeltaTextSize * Math.abs(f2));
                float f3 = 0.0f - (this.mTextMargin * f2);
                float fMax = Math.max(this.mMaxAlpha - (this.mDeltaAlpha * Math.abs(f2)), this.mMinAlpha);
                if (!this.mEnable) {
                    fMax = 0.18f;
                }
                this.mPaint.setAlpha((int) (fMax * 255.0f));
                int i4 = (int) fFloatValue;
                String str2 = i4 + "";
                String str3 = "." + ((int) ((fFloatValue - i4) * 10.0f)) + "°";
                this.mPaint.setTextSize(fAbs);
                float fCalculateCenterY = calculateCenterY(this.mPaint.getFontMetrics(), f3);
                if (this.mPickerAlign == i2) {
                    float f4 = this.mMaxTemp;
                    if (fFloatValue == f4 || fFloatValue == this.mMinTemp) {
                        str = fFloatValue != f4 ? "LO" : "HI";
                        this.mPaint.setTextSize(fAbs);
                        canvas.drawText(str, 0.0f, fCalculateCenterY, this.mPaint);
                    } else {
                        this.mPaint.setTextSize(fAbs);
                        float fMeasureText = this.mPaint.measureText(str2);
                        canvas.drawText(str2, 0.0f, fCalculateCenterY, this.mPaint);
                        this.mPaint.setTextSize(fAbs * 0.7f);
                        canvas.drawText(str3, fMeasureText, fCalculateCenterY, this.mPaint);
                    }
                } else {
                    this.mPaint.setTextAlign(Paint.Align.RIGHT);
                    float f5 = this.mMaxTemp;
                    if (fFloatValue == f5 || fFloatValue == this.mMinTemp) {
                        str = fFloatValue != f5 ? "LO" : "HI";
                        this.mPaint.setTextSize(fAbs);
                        canvas.drawText(str, this.mViewSize.x, fCalculateCenterY, this.mPaint);
                    } else {
                        float fMeasureText2 = this.mPaint.measureText(str2);
                        float f6 = 0.7f * fAbs;
                        this.mPaint.setTextSize(f6);
                        float fMeasureText3 = this.mPaint.measureText(str3);
                        this.mPaint.setTextAlign(Paint.Align.LEFT);
                        this.mPaint.setTextSize(fAbs);
                        canvas.drawText(str2, (getWidth() - fMeasureText2) - fMeasureText3, fCalculateCenterY, this.mPaint);
                        this.mPaint.setTextSize(f6);
                        canvas.drawText(str3, getWidth() - fMeasureText3, fCalculateCenterY, this.mPaint);
                        this.mPaint.setTextSize(fAbs);
                    }
                }
            }
            i++;
            i2 = 1;
        }
    }

    private void playSound() {
        int i = (int) ((this.mScrollY - (this.mMaxTextHeight / 2.0f)) / this.mTextMargin);
        if (this.mSoundIndex != i) {
            this.mSoundIndex = i;
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(130));
        }
    }

    private void setMyScrollY(float y) {
        this.mScrollY = y;
        if (this.mOnScrollTemperatureChangeListener != null) {
            float f = this.mMaxTemp - this.mMinTemp;
            this.mOnScrollTemperatureChangeListener.onChange(Math.round((this.mMaxTemp - ((f * (y - (this.mMaxTextHeight / 2.0f))) / (this.mMaxScrollY - this.mMinScrollY))) * 10.0f) / 10.0f, this.isTouchIng);
        }
    }

    private boolean updatePosition(MotionEvent event) {
        float f = (-(event.getY() - this.mActionDownPoint.y)) + this.mActionScrollY;
        float f2 = this.mMinScrollY;
        boolean z = true;
        if (f < f2) {
            setMyScrollY(f2);
        } else {
            float f3 = this.mMaxScrollY;
            if (f >= f3) {
                setMyScrollY(f3);
            } else {
                setMyScrollY(f);
                z = false;
            }
        }
        invalidate();
        playSound();
        return z;
    }

    private int scrollToNearestIndex(long scrollDuration, boolean isFromActionUp) {
        float f = (this.mScrollY - (this.mMaxTextHeight / 2.0f)) / this.mTextMargin;
        String str = TAG;
        LogUtil.d(str, "scrollToNearestIndex, mScrollY:" + this.mScrollY + ",indexF:" + f);
        int size = (int) f;
        int i = size + 1;
        float f2 = i - f;
        float f3 = f - size;
        int i2 = f2 > f3 ? size : i;
        LogUtil.d(str, "scrollToNearestIndex, indexF:" + f);
        if (!isFromActionUp) {
            size = i2;
        } else if (f - this.mTempList.indexOf(Float.valueOf(this.mTemperature)) <= 0.0f ? f2 <= 0.2d : f3 > 0.2d) {
            size = i;
        }
        if (size < 0) {
            size = 0;
        }
        if (size > this.mTempList.size() - 1) {
            size = this.mTempList.size() - 1;
        }
        float targetScrollY = getTargetScrollY(size);
        resetUserSetAnimator();
        LogUtil.d(str, "drag end, targetScrollY:" + targetScrollY + ", newIndex:" + size + ", mScrollY:" + this.mScrollY);
        this.mScroller.startScroll(0, (int) this.mScrollY, 0, (int) (targetScrollY - this.mScrollY), (int) scrollDuration);
        invalidate();
        return size;
    }

    private void callBackTemperature(final float temperature) {
        LogUtil.d(TAG, "callBackTemperature, temperature:" + temperature);
        Executor.IO_HANDLER.post(new Runnable() { // from class: com.geely.hvac.component.-$$Lambda$Temperature$0croHAnbcYSSEzUh4grkJSEf_hg
            @Override // java.lang.Runnable
            public final void run() {
                Temperature.this.lambda$callBackTemperature$1$Temperature(temperature);
            }
        });
    }

    public /* synthetic */ void lambda$callBackTemperature$1$Temperature(float f) {
        OnTemperatureInputChangeListener onTemperatureInputChangeListener = this.mOnTemperatureChangeListener;
        if (onTemperatureInputChangeListener != null) {
            onTemperatureInputChangeListener.onChange(f);
        }
    }

    @Override // android.view.View
    public void computeScroll() {
        super.computeScroll();
        if (this.mScroller.computeScrollOffset()) {
            setMyScrollY(this.mScroller.getCurrY());
            LogUtil.d(TAG, "computeScroll, mScrollY:" + this.mScrollY);
            float f = this.mScrollY;
            float f2 = this.mMinScrollY;
            if (f <= f2) {
                setMyScrollY(f2);
                this.mScroller.forceFinished(true);
            } else {
                float f3 = this.mScrollY;
                float f4 = this.mMaxScrollY;
                if (f3 >= f4) {
                    setMyScrollY(f4);
                    this.mScroller.forceFinished(true);
                }
            }
            invalidate();
            playSound();
            return;
        }
        if (this.mIsActionUp) {
            this.mIsActionUp = false;
            float f5 = (this.mScrollY - (this.mMaxTextHeight / 2.0f)) / this.mTextMargin;
            playSound();
            int iRound = Math.round(f5);
            float fFloatValue = this.mTempList.get(iRound).floatValue();
            this.mTemperature = fFloatValue;
            callBackTemperature(fFloatValue);
            float fAbs = Math.abs(f5 - iRound);
            String str = TAG;
            LogUtil.d(str, "computeScroll, over, indexF:" + f5 + ", index:" + iRound + ", abs:" + fAbs);
            if (fAbs > 0.1d || iRound == 0 || iRound == this.mTempList.size() - 1) {
                LogUtil.e(str, "too fast, need repair, index:" + iRound);
                scrollToNearestIndex(100L, false);
            }
        }
    }

    private void onMoveEnd(MotionEvent event) {
        float f;
        float f2;
        if (updatePosition(event)) {
            float f3 = (this.mScrollY - (this.mMaxTextHeight / 2.0f)) / this.mTextMargin;
            playSound();
            float fFloatValue = this.mTempList.get(Math.round(f3)).floatValue();
            LogUtil.d(TAG, "reachBorder, temperature" + fFloatValue);
            this.mTemperature = fFloatValue;
            callBackTemperature(fFloatValue);
            return;
        }
        this.mVelocityTracker.addMovement(event);
        this.mVelocityTracker.computeCurrentVelocity(1000);
        float yVelocity = this.mVelocityTracker.getYVelocity();
        this.mVelocityTracker.recycle();
        String str = TAG;
        LogUtil.d(str, "mVelocityTracker:" + yVelocity + ", position:" + this.mScrollY);
        this.mIsActionUp = true;
        if (Math.abs(yVelocity) > 500.0f) {
            float splineFlingDistance = (float) this.mFlingHelper.getSplineFlingDistance((int) Math.abs(yVelocity));
            if (yVelocity > 0.0f) {
                f2 = this.mScrollY - splineFlingDistance;
                float f4 = this.mMaxTextHeight;
                f = (((int) ((f2 - (f4 / 2.0f)) / this.mTextMargin)) * this.mTextMargin) + (f4 / 2.0f);
            } else {
                float f5 = this.mScrollY + splineFlingDistance;
                f = (this.mMaxTextHeight / 2.0f) + ((((int) ((f5 - (this.mMaxTextHeight / 2.0f)) / this.mTextMargin)) + 1) * this.mTextMargin);
                f2 = f5;
            }
            float fAbs = Math.abs(f - f2) + splineFlingDistance;
            float velocityByDistance = this.mFlingHelper.getVelocityByDistance(fAbs);
            float f6 = yVelocity > 0.0f ? velocityByDistance : -velocityByDistance;
            LogUtil.d(str, "onMoveEnd, newFling:" + velocityByDistance + ", targetScrollY:" + f2 + ", newTargetScrollY:" + f + ", flingDistance:" + splineFlingDistance + ", flingY:" + f6 + ", newFlingDistance:" + fAbs);
            CustomScroller customScroller = this.mScroller;
            int i = (int) this.mScrollY;
            int i2 = -((int) f6);
            float f7 = this.mMaxScrollY;
            customScroller.fling(0, i, 0, i2, 0, 0, ((int) (-f7)) / 2, (int) (f7 * 1.5d));
            invalidate();
            return;
        }
        scrollToNearestIndex(100L, true);
    }

    private void actionClick(MotionEvent event) {
        if (ClickUtils.isSeatFastClick()) {
            LogUtil.d(TAG, "actionClick, too fast");
            return;
        }
        String str = TAG;
        LogUtil.d(str, "actionClick, y:" + event.getY());
        float y = event.getY();
        if (!this.mScroller.isFinished()) {
            LogUtil.d(str, "actionClick, is scroll");
            return;
        }
        ValueAnimator valueAnimator = this.mUserSetAnimator;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            float fMax = this.mTemperature;
            if (y < this.mViewSize.y * 0.23f) {
                LogUtil.d(str, "actionClick, ++");
                fMax = Math.min(fMax + this.mTempStep, this.mMaxTemp);
            } else if (y > this.mViewSize.y * 0.77f) {
                LogUtil.d(str, "actionClick, --");
                fMax = Math.max(fMax - this.mTempStep, this.mMinTemp);
            }
            if (fMax == this.mTemperature) {
                return;
            }
            setTemperature(fMax, true, 100);
            callBackTemperature(fMax);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        int action = event.getAction();
        if (action == 0) {
            LogUtil.d(TAG, "ACTION_DOWN");
            this.isTouchIng = true;
            this.mIsActionUp = false;
            ValueAnimator valueAnimator = this.mUserSetAnimator;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.isTouchIng = false;
                return false;
            }
            this.mClickScrollHelper.setActionDownFling(!this.mScroller.isFinished());
            this.mScroller.forceFinished(true);
            resetUserSetAnimator();
            VelocityTracker velocityTrackerObtain = VelocityTracker.obtain();
            this.mVelocityTracker = velocityTrackerObtain;
            velocityTrackerObtain.addMovement(event);
            getParent().requestDisallowInterceptTouchEvent(true);
            this.mActionDownPoint.x = event.getX();
            this.mActionDownPoint.y = event.getY();
            this.mActionScrollY = this.mScrollY;
            if (!this.mEnable) {
                this.isTouchIng = false;
                return false;
            }
        } else if (action == 1) {
            LogUtil.d(TAG, "ACTION_UP");
            this.isTouchIng = false;
            if (!this.mClickScrollHelper.hasMove() && !this.mClickScrollHelper.isActionDownFling()) {
                actionClick(event);
            } else {
                onMoveEnd(event);
            }
        } else if (action == 2) {
            this.mVelocityTracker.addMovement(event);
            updatePosition(event);
        } else if (action == 3) {
            LogUtil.d(TAG, "ACTION_CANCEL");
            this.isTouchIng = false;
            if (!this.mClickScrollHelper.hasMove() && !this.mClickScrollHelper.isActionDownFling()) {
                actionClick(event);
            } else {
                onMoveEnd(event);
            }
        } else {
            VelocityTracker velocityTracker = this.mVelocityTracker;
            if (velocityTracker != null) {
                velocityTracker.addMovement(event);
            }
        }
        this.mClickScrollHelper.onTouchEvent(event);
        return true;
    }
}
