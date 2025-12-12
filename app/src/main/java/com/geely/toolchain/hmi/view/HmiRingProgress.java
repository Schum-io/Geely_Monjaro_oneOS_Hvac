package com.geely.toolchain.hmi.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import com.geely.toolchain.hmi.R;

/* loaded from: classes.dex */
public class HmiRingProgress extends View {
    private static final String TAG = "HmiRingProgress";
    private int max;
    private Paint paint;
    private int progress;
    private int roundColor;
    private int roundProgressColor;
    private float roundWidth;

    public HmiRingProgress(Context context) {
        this(context, null);
    }

    public HmiRingProgress(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public HmiRingProgress(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        this.paint = new Paint();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.HmiRingProgress);
        this.roundColor = typedArrayObtainStyledAttributes.getColor(R.styleable.HmiRingProgress_hmiRoundColor, Color.parseColor("#14FFFFFF"));
        this.roundProgressColor = typedArrayObtainStyledAttributes.getColor(R.styleable.HmiRingProgress_hmiRoundProgressColor, Color.parseColor("#1368FB"));
        this.roundWidth = typedArrayObtainStyledAttributes.getDimension(R.styleable.HmiRingProgress_hmiRoundWidth, 6.0f);
        this.max = typedArrayObtainStyledAttributes.getInteger(R.styleable.HmiRingProgress_hmiRoundMax, 100);
        this.progress = typedArrayObtainStyledAttributes.getInteger(R.styleable.HmiRingProgress_hmiRoundProgress, this.progress);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth() / 2;
        float f = width;
        int i = (int) (f - (this.roundWidth / 2.0f));
        this.paint.setColor(this.roundColor);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeWidth(this.roundWidth);
        this.paint.setAntiAlias(true);
        canvas.drawCircle(f, f, i, this.paint);
        this.paint.setStrokeWidth(this.roundWidth);
        this.paint.setColor(this.roundProgressColor);
        float f2 = width - i;
        float f3 = width + i;
        RectF rectF = new RectF(f2, f2, f3, f3);
        this.paint.setStyle(Paint.Style.STROKE);
        float f4 = (this.progress * 360.0f) / this.max;
        Log.i(TAG, "onDraw: endAngle = " + f4);
        canvas.drawArc(rectF, -90.0f, f4, false, this.paint);
    }

    public synchronized int getMax() {
        return this.max;
    }

    public synchronized void setMax(int max) {
        if (max <= 0) {
            Log.e(TAG, "max more than 0 ");
            this.max = max;
        } else {
            this.max = max;
        }
    }

    public int getProgress() {
        return this.progress;
    }

    public void setProgress(int progress) {
        if (progress < 0) {
            Log.e(TAG, "progress not less than 0");
        }
        int i = this.max;
        if (progress > i) {
            progress = i;
        }
        this.progress = progress;
        Log.i(TAG, "setProgress: progress = " + this.progress);
        postInvalidate();
    }

    public float getRoundWidth() {
        return this.roundWidth;
    }

    public void setRoundWidth(float roundWidth) {
        this.roundWidth = roundWidth;
    }

    public int getRoundColor() {
        return this.roundColor;
    }

    public int getRoundProgressColor() {
        return this.roundProgressColor;
    }

    public void setRoundColor(int roundColor) {
        this.roundColor = roundColor;
    }

    public void setRoundProgressColor(int roundProgressColor) {
        this.roundProgressColor = roundProgressColor;
    }
}
