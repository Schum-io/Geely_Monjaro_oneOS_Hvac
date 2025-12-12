package com.geely.toolchain.hmi.view.download;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.geely.hvac.utils.ViewFroze;
import com.geely.toolchain.hmi.R;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class HmiDownloadProgressButton extends AppCompatTextView {
    public static final int DOWNLOADING = 2;
    public static final int FINISH = 4;
    public static final int NORMAL = 1;
    public static final int PAUSE = 3;
    private long mAnimationDuration;
    private RectF mBackgroundBounds;
    private int mBackgroundColor;
    private Paint mBackgroundPaint;
    private int mBackgroundSecondColor;
    private float mButtonRadius;
    private CharSequence mCurrentText;
    private String mDowningText;
    private String mFinishText;
    private int mMaxProgress;
    private int mMinProgress;
    private String mNormalText;
    private OnDownLoadClickListener mOnDownLoadClickListener;
    private String mPauseText;
    private float mProgress;
    private ValueAnimator mProgressAnimation;
    private float mProgressPercent;
    private int mState;
    private int mTextColor;
    private int mTextCoverColor;
    private volatile Paint mTextPaint;
    private float mToProgress;

    @Retention(RetentionPolicy.SOURCE)
    public @interface DownloadState {
    }

    public HmiDownloadProgressButton(Context context) {
        this(context, null);
    }

    public HmiDownloadProgressButton(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mProgress = -1.0f;
        this.mState = -1;
        if (isInEditMode()) {
            return;
        }
        initAttrs(context, attrs);
        init();
        setupAnimations();
    }

    private void initAttrs(Context context, AttributeSet attrs) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.HmiDownloadProgressButton);
        this.mBackgroundColor = typedArrayObtainStyledAttributes.getColor(R.styleable.HmiDownloadProgressButton_hmi_progress_btn_background_color, Color.parseColor("#6699ff"));
        this.mBackgroundSecondColor = typedArrayObtainStyledAttributes.getColor(R.styleable.HmiDownloadProgressButton_hmi_progress_btn_background_second_color, -3355444);
        this.mButtonRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.HmiDownloadProgressButton_hmi_progress_btn_radius, 0);
        this.mTextColor = typedArrayObtainStyledAttributes.getColor(R.styleable.HmiDownloadProgressButton_hmi_progress_btn_text_color, this.mBackgroundColor);
        this.mTextCoverColor = typedArrayObtainStyledAttributes.getColor(R.styleable.HmiDownloadProgressButton_hmi_progress_btn_text_cover_color, -1);
        this.mNormalText = typedArrayObtainStyledAttributes.getString(R.styleable.HmiDownloadProgressButton_hmi_progress_btn_text_normal);
        this.mDowningText = typedArrayObtainStyledAttributes.getString(R.styleable.HmiDownloadProgressButton_hmi_progress_btn_text_downing);
        this.mFinishText = typedArrayObtainStyledAttributes.getString(R.styleable.HmiDownloadProgressButton_hmi_progress_btn_text_finish);
        this.mPauseText = typedArrayObtainStyledAttributes.getString(R.styleable.HmiDownloadProgressButton_hmi_progress_btn_text_pause);
        this.mAnimationDuration = typedArrayObtainStyledAttributes.getInt(R.styleable.HmiDownloadProgressButton_hmi_progress_btn_animation_duration, ViewFroze.FROZE_TIME);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.widget.TextView
    public void setTextSize(float size) {
        super.setTextSize(size);
        this.mTextPaint.setTextSize(getTextSize());
        invalidate();
    }

    private void init() {
        this.mMaxProgress = 100;
        this.mMinProgress = 0;
        this.mProgress = 0.0f;
        if (TextUtils.isEmpty(this.mNormalText)) {
            this.mNormalText = "下载";
        }
        if (this.mDowningText == null) {
            this.mDowningText = "";
        }
        if (TextUtils.isEmpty(this.mFinishText)) {
            this.mFinishText = "打开";
        }
        if (TextUtils.isEmpty(this.mPauseText)) {
            this.mPauseText = "继续";
        }
        Paint paint = new Paint();
        this.mBackgroundPaint = paint;
        paint.setAntiAlias(true);
        this.mBackgroundPaint.setStyle(Paint.Style.FILL);
        this.mTextPaint = new Paint();
        this.mTextPaint.setAntiAlias(true);
        setLayerType(1, this.mTextPaint);
        setState(1);
        setOnClickListener(new OnClickListener() {
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HmiDownloadProgressButton.this.lambda$init$0$HmiDownloadProgressButton(view);
            }
        });
    }

    public /* synthetic */ void lambda$init$0$HmiDownloadProgressButton(View view) {
        if (this.mOnDownLoadClickListener == null) {
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
            return;
        }
        if (getState() == 1) {
            this.mOnDownLoadClickListener.onClickDownload();
            setState(2);
            setProgressText(0);
        } else if (getState() == 2) {
            this.mOnDownLoadClickListener.onClickPause();
            setState(3);
        } else if (getState() == 3) {
            this.mOnDownLoadClickListener.onClickResume();
            setState(2);
            setProgressText((int) this.mProgress);
        } else if (getState() == 4) {
            this.mOnDownLoadClickListener.onClickFinish();
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void setupAnimations() {
        ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(this.mAnimationDuration);
        this.mProgressAnimation = duration;
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                HmiDownloadProgressButton.this.lambda$setupAnimations$1$HmiDownloadProgressButton(valueAnimator);
            }
        });
        this.mProgressAnimation.addListener(new Animator.AnimatorListener() {
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animation) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animation) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                if (HmiDownloadProgressButton.this.mToProgress < HmiDownloadProgressButton.this.mProgress) {
                    HmiDownloadProgressButton hmiDownloadProgressButton = HmiDownloadProgressButton.this;
                    hmiDownloadProgressButton.mProgress = hmiDownloadProgressButton.mToProgress;
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                if (HmiDownloadProgressButton.this.mProgress == HmiDownloadProgressButton.this.mMaxProgress) {
                    HmiDownloadProgressButton.this.setState(4);
                }
            }
        });
    }

    public /* synthetic */ void lambda$setupAnimations$1$HmiDownloadProgressButton(ValueAnimator valueAnimator) {
        if (valueAnimator == null || valueAnimator.getAnimatedValue() == null) {
            return;
        }
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float f = this.mToProgress;
        float f2 = this.mProgress;
        float f3 = ((f - f2) * fFloatValue) + f2;
        this.mProgress = f3;
        setProgressText((int) f3);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (isInEditMode()) {
            return;
        }
        drawing(canvas);
    }

    private void drawing(Canvas canvas) {
        drawBackground(canvas);
        drawTextAbove(canvas);
    }

    private void drawBackground(Canvas canvas) {
        if (this.mBackgroundBounds == null) {
            RectF rectF = new RectF();
            this.mBackgroundBounds = rectF;
            rectF.right = getMeasuredWidth();
            this.mBackgroundBounds.bottom = getMeasuredHeight();
        }
        int i = this.mState;
        if (i == 2 || i == 3) {
            this.mProgressPercent = this.mProgress / (this.mMaxProgress + 0.0f);
            float measuredWidth = getMeasuredWidth();
            int[] iArr = {this.mBackgroundColor, this.mBackgroundSecondColor};
            float f = this.mProgressPercent;
            LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, measuredWidth, 0.0f, iArr, new float[]{f, f + 0.001f}, Shader.TileMode.CLAMP);
            this.mBackgroundPaint.setColor(this.mBackgroundColor);
            this.mBackgroundPaint.setShader(linearGradient);
            RectF rectF2 = this.mBackgroundBounds;
            float f2 = this.mButtonRadius;
            canvas.drawRoundRect(rectF2, f2, f2, this.mBackgroundPaint);
            return;
        }
        this.mBackgroundPaint.setShader(null);
        this.mBackgroundPaint.setColor(this.mBackgroundColor);
        RectF rectF3 = this.mBackgroundBounds;
        float f3 = this.mButtonRadius;
        canvas.drawRoundRect(rectF3, f3, f3, this.mBackgroundPaint);
    }

    private void drawTextAbove(Canvas canvas) {
        this.mTextPaint.setTextSize(getTextSize());
        float height = (canvas.getHeight() >> 1) - ((this.mTextPaint.descent() / 2.0f) + (this.mTextPaint.ascent() / 2.0f));
        if (this.mCurrentText == null) {
            this.mCurrentText = "";
        }
        float fMeasureText = this.mTextPaint.measureText(this.mCurrentText.toString());
        int i = this.mState;
        if (i == 2 || i == 3) {
            float measuredWidth = getMeasuredWidth();
            float f = this.mProgressPercent * measuredWidth;
            float f2 = measuredWidth / 2.0f;
            float f3 = fMeasureText / 2.0f;
            float f4 = f2 - f3;
            float f5 = f2 + f3;
            float f6 = ((f3 - f2) + f) / fMeasureText;
            if (f <= f4) {
                this.mTextPaint.setShader(null);
                this.mTextPaint.setColor(this.mTextColor);
            } else if (f <= f5) {
                LinearGradient linearGradient = new LinearGradient((measuredWidth - fMeasureText) / 2.0f, 0.0f, (measuredWidth + fMeasureText) / 2.0f, 0.0f, new int[]{this.mTextCoverColor, this.mTextColor}, new float[]{f6, f6 + 0.001f}, Shader.TileMode.CLAMP);
                this.mTextPaint.setColor(this.mTextColor);
                this.mTextPaint.setShader(linearGradient);
            } else {
                this.mTextPaint.setShader(null);
                this.mTextPaint.setColor(this.mTextCoverColor);
            }
            canvas.drawText(this.mCurrentText.toString(), (measuredWidth - fMeasureText) / 2.0f, height, this.mTextPaint);
            return;
        }
        this.mTextPaint.setColor(this.mTextCoverColor);
        canvas.drawText(this.mCurrentText.toString(), (getMeasuredWidth() - fMeasureText) / 2.0f, height, this.mTextPaint);
    }

    public int getState() {
        return this.mState;
    }

    public void reset() {
        setState(1);
    }

    public void finish() {
        setState(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setState(int state) {
        if (this.mState != state) {
            this.mState = state;
            if (state == 4) {
                setCurrentText(this.mFinishText);
                this.mProgress = this.mMaxProgress;
            } else if (state == 1) {
                float f = this.mMinProgress;
                this.mToProgress = f;
                this.mProgress = f;
                setCurrentText(this.mNormalText);
            } else if (state == 3) {
                setCurrentText(this.mPauseText);
            }
            invalidate();
        }
    }

    public void setCurrentText(CharSequence charSequence) {
        this.mCurrentText = charSequence;
        invalidate();
    }

    public CharSequence getCurrentText() {
        return this.mCurrentText;
    }

    public float getProgress() {
        return this.mProgress;
    }

    public void setProgress(float progress) {
        if (progress <= this.mMinProgress || progress <= this.mToProgress || getState() == 4) {
            return;
        }
        this.mToProgress = Math.min(progress, this.mMaxProgress);
        setState(2);
        if (this.mProgressAnimation.isRunning()) {
            this.mProgressAnimation.end();
            this.mProgressAnimation.start();
        } else {
            this.mProgressAnimation.start();
        }
    }

    private void setProgressText(int progress) {
        if (getState() == 2) {
            setCurrentText(this.mDowningText + progress + "%");
        }
    }

    public void pause() {
        setState(3);
    }

    public float getButtonRadius() {
        return this.mButtonRadius;
    }

    public void setButtonRadius(float buttonRadius) {
        this.mButtonRadius = buttonRadius;
    }

    public int getTextColor() {
        return this.mTextColor;
    }

    @Override // android.widget.TextView
    public void setTextColor(int textColor) {
        this.mTextColor = textColor;
    }

    public int getTextCoverColor() {
        return this.mTextCoverColor;
    }

    public void setTextCoverColor(int textCoverColor) {
        this.mTextCoverColor = textCoverColor;
    }

    public int getMinProgress() {
        return this.mMinProgress;
    }

    public void setMinProgress(int minProgress) {
        this.mMinProgress = minProgress;
    }

    public int getMaxProgress() {
        return this.mMaxProgress;
    }

    public void setMaxProgress(int maxProgress) {
        this.mMaxProgress = maxProgress;
    }

    public long getAnimationDuration() {
        return this.mAnimationDuration;
    }

    public void setAnimationDuration(long animationDuration) {
        this.mAnimationDuration = animationDuration;
        this.mProgressAnimation.setDuration(animationDuration);
    }

    public OnDownLoadClickListener getOnDownLoadClickListener() {
        return this.mOnDownLoadClickListener;
    }

    public void setOnDownLoadClickListener(OnDownLoadClickListener onDownLoadClickListener) {
        this.mOnDownLoadClickListener = onDownLoadClickListener;
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable state) {
        SavedState savedState = (SavedState) state;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.mState = savedState.state;
        this.mProgress = savedState.progress;
        this.mCurrentText = savedState.currentText;
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), (int) this.mProgress, this.mState, this.mCurrentText.toString());
    }

    public static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel in) {
                return new SavedState(in);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int size) {
                return new SavedState[size];
            }
        };
        private final String currentText;
        private final int progress;
        private final int state;

        public SavedState(Parcelable parcel, int progress, int state, String currentText) {
            super(parcel);
            this.progress = progress;
            this.state = state;
            this.currentText = currentText;
        }

        private SavedState(Parcel in) {
            super(in);
            this.progress = in.readInt();
            this.state = in.readInt();
            this.currentText = in.readString();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel out, int flags) {
            super.writeToParcel(out, flags);
            out.writeInt(this.progress);
            out.writeInt(this.state);
            out.writeString(this.currentText);
        }
    }
}
