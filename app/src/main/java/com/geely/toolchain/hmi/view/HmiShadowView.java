package com.geely.toolchain.hmi.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import com.geely.toolchain.hmi.R;

/* loaded from: classes.dex */
public class HmiShadowView extends FrameLayout {
    private int[] gradientColors;
    private float[] gradientPositions;
    private final Paint mBgPaint;
    private float shadowInscribedRadius;
    private float shadowMaxLength;

    public HmiShadowView(Context context) {
        this(context, null);
    }

    public HmiShadowView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public HmiShadowView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.HmiShadowView);
        this.shadowMaxLength = typedArrayObtainStyledAttributes.getDimension(R.styleable.HmiShadowView_shadowMaxLength, 0.0f);
        this.shadowInscribedRadius = typedArrayObtainStyledAttributes.getDimension(R.styleable.HmiShadowView_shadowRadius, this.shadowMaxLength);
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.HmiShadowView_shadowStartColor, 0);
        int color2 = typedArrayObtainStyledAttributes.getColor(R.styleable.HmiShadowView_shadowEndColor, 0);
        typedArrayObtainStyledAttributes.recycle();
        Paint paint = new Paint();
        this.mBgPaint = paint;
        paint.setColor(ViewCompat.MEASURED_STATE_MASK);
        paint.setAntiAlias(true);
        paint.setStrokeWidth(this.shadowMaxLength);
        paint.setStyle(Paint.Style.STROKE);
        this.gradientColors = new int[]{color, color2};
        this.gradientPositions = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int height = getHeight();
        int width = getWidth();
        float f = this.shadowInscribedRadius;
        this.mBgPaint.setStrokeWidth(this.shadowMaxLength);
        float f2 = this.shadowMaxLength;
        if (f >= f2) {
            float f3 = this.shadowInscribedRadius + (f2 / 2.0f);
            float f4 = (f2 / 2.0f) + f3;
            if (f4 <= 0.0f) {
                super.dispatchDraw(canvas);
                return;
            }
            float f5 = this.shadowMaxLength;
            float f6 = f3 * 2.0f;
            RectF rectF = new RectF(f5 / 2.0f, f5 / 2.0f, (f5 / 2.0f) + f6, (f5 / 2.0f) + f6);
            float f7 = width;
            float f8 = f7 - f6;
            float f9 = this.shadowMaxLength;
            RectF rectF2 = new RectF(f8 - (f9 / 2.0f), f9 / 2.0f, f7 - (f9 / 2.0f), (f9 / 2.0f) + f6);
            float f10 = this.shadowMaxLength;
            float f11 = height;
            float f12 = f11 - f6;
            RectF rectF3 = new RectF(f8 - (f10 / 2.0f), f12 - (f10 / 2.0f), f7 - (f10 / 2.0f), f11 - (f10 / 2.0f));
            float f13 = this.shadowMaxLength;
            RectF rectF4 = new RectF(f13 / 2.0f, f12 - (f13 / 2.0f), f6 + (f13 / 2.0f), f11 - (f13 / 2.0f));
            float f14 = this.shadowMaxLength;
            this.mBgPaint.setShader(new RadialGradient((f14 / 2.0f) + f3, f3 + (f14 / 2.0f), f4, this.gradientColors, this.gradientPositions, Shader.TileMode.CLAMP));
            canvas.drawArc(rectF, -90.0f, -90.0f, false, this.mBgPaint);
            float f15 = this.shadowMaxLength;
            this.mBgPaint.setShader(new RadialGradient((f7 - (f15 / 2.0f)) - f3, f3 + (f15 / 2.0f), f4, this.gradientColors, this.gradientPositions, Shader.TileMode.CLAMP));
            canvas.drawArc(rectF2, 0.0f, -90.0f, false, this.mBgPaint);
            float f16 = this.shadowMaxLength;
            float f17 = f11 - f3;
            this.mBgPaint.setShader(new RadialGradient((f7 - (f16 / 2.0f)) - f3, f17 - (f16 / 2.0f), f4, this.gradientColors, this.gradientPositions, Shader.TileMode.CLAMP));
            canvas.drawArc(rectF3, 0.0f, 90.0f, false, this.mBgPaint);
            float f18 = this.shadowMaxLength;
            this.mBgPaint.setShader(new RadialGradient((f18 / 2.0f) + f3, f17 - (f18 / 2.0f), f4, this.gradientColors, this.gradientPositions, Shader.TileMode.CLAMP));
            canvas.drawArc(rectF4, 90.0f, 90.0f, false, this.mBgPaint);
            float f19 = this.shadowMaxLength;
            this.mBgPaint.setShader(new LinearGradient((this.shadowMaxLength / 2.0f) + f3, 0.0f, 0.0f, 0.0f, this.gradientColors, this.gradientPositions, Shader.TileMode.CLAMP));
            canvas.drawLines(new float[]{f19 / 2.0f, (f19 / 2.0f) + f3, f19 / 2.0f, f17 - (f19 / 2.0f)}, this.mBgPaint);
            float f20 = this.shadowMaxLength;
            this.mBgPaint.setShader(new LinearGradient(0.0f, (this.shadowMaxLength / 2.0f) + f3, 0.0f, 0.0f, this.gradientColors, this.gradientPositions, Shader.TileMode.CLAMP));
            canvas.drawLines(new float[]{(f20 / 2.0f) + f3, f20 / 2.0f, (f7 - (f20 / 2.0f)) - f3, f20 / 2.0f}, this.mBgPaint);
            float f21 = this.shadowMaxLength;
            this.mBgPaint.setShader(new LinearGradient((f7 - f3) - (this.shadowMaxLength / 2.0f), 0.0f, f7, 0.0f, this.gradientColors, this.gradientPositions, Shader.TileMode.CLAMP));
            canvas.drawLines(new float[]{f7 - (f21 / 2.0f), (f21 / 2.0f) + f3, f7 - (f21 / 2.0f), f17 - (f21 / 2.0f)}, this.mBgPaint);
            float f22 = this.shadowMaxLength;
            this.mBgPaint.setShader(new LinearGradient(0.0f, f17 - (this.shadowMaxLength / 2.0f), 0.0f, f11, this.gradientColors, this.gradientPositions, Shader.TileMode.CLAMP));
            canvas.drawLines(new float[]{(f22 / 2.0f) + f3, f11 - (f22 / 2.0f), (f7 - (f22 / 2.0f)) - f3, f11 - (f22 / 2.0f)}, this.mBgPaint);
        } else {
            if (f2 <= 0.0f) {
                super.dispatchDraw(canvas);
                return;
            }
            float f23 = this.shadowMaxLength;
            RectF rectF5 = new RectF(0.0f, 0.0f, f23, f23);
            float f24 = width;
            float f25 = this.shadowMaxLength;
            RectF rectF6 = new RectF(f24 - f25, 0.0f, f24, f25);
            float f26 = this.shadowMaxLength;
            float f27 = height;
            RectF rectF7 = new RectF(f24 - f26, f27 - f26, f24, f27);
            float f28 = this.shadowMaxLength;
            RectF rectF8 = new RectF(0.0f, f27 - f28, f28, f27);
            float f29 = this.shadowMaxLength;
            this.mBgPaint.setShader(new RadialGradient(f29, f29, f2, this.gradientColors, this.gradientPositions, Shader.TileMode.CLAMP));
            canvas.drawArc(rectF5, -90.0f, -90.0f, true, this.mBgPaint);
            float f30 = this.shadowMaxLength;
            this.mBgPaint.setShader(new RadialGradient(f24 - f30, f30, f2, this.gradientColors, this.gradientPositions, Shader.TileMode.CLAMP));
            canvas.drawArc(rectF6, 0.0f, -90.0f, true, this.mBgPaint);
            float f31 = this.shadowMaxLength;
            this.mBgPaint.setShader(new RadialGradient(f24 - f31, f27 - f31, f2, this.gradientColors, this.gradientPositions, Shader.TileMode.CLAMP));
            canvas.drawArc(rectF7, 0.0f, 90.0f, true, this.mBgPaint);
            float f32 = this.shadowMaxLength;
            this.mBgPaint.setShader(new RadialGradient(f32, f27 - f32, f2, this.gradientColors, this.gradientPositions, Shader.TileMode.CLAMP));
            canvas.drawArc(rectF8, 90.0f, 90.0f, true, this.mBgPaint);
            float f33 = this.shadowMaxLength;
            this.mBgPaint.setShader(new LinearGradient(this.shadowMaxLength, 0.0f, 0.0f, 0.0f, this.gradientColors, this.gradientPositions, Shader.TileMode.CLAMP));
            canvas.drawLines(new float[]{f33 / 2.0f, f33, f33 / 2.0f, f27 - f33}, this.mBgPaint);
            float f34 = this.shadowMaxLength;
            this.mBgPaint.setShader(new LinearGradient(0.0f, this.shadowMaxLength, 0.0f, 0.0f, this.gradientColors, this.gradientPositions, Shader.TileMode.CLAMP));
            canvas.drawLines(new float[]{f34, f34 / 2.0f, f24 - f34, f34 / 2.0f}, this.mBgPaint);
            float f35 = this.shadowMaxLength;
            this.mBgPaint.setShader(new LinearGradient(f24 - this.shadowMaxLength, 0.0f, f24, 0.0f, this.gradientColors, this.gradientPositions, Shader.TileMode.CLAMP));
            canvas.drawLines(new float[]{f24 - (f35 / 2.0f), f35, f24 - (f35 / 2.0f), f27 - f35}, this.mBgPaint);
            float f36 = this.shadowMaxLength;
            this.mBgPaint.setShader(new LinearGradient(0.0f, f27 - this.shadowMaxLength, 0.0f, f27, this.gradientColors, this.gradientPositions, Shader.TileMode.CLAMP));
            canvas.drawLines(new float[]{f36, f27 - (f36 / 2.0f), f24 - f36, f27 - (f36 / 2.0f)}, this.mBgPaint);
        }
        super.dispatchDraw(canvas);
    }

    public int[] getGradientColors() {
        return this.gradientColors;
    }

    public void setGradientColors(int[] gradientColors) {
        this.gradientColors = gradientColors;
        float[] fArr = this.gradientPositions;
        if (fArr != null && gradientColors.length != fArr.length) {
            this.gradientPositions = null;
        }
        invalidate();
    }

    public float[] getGradientPositions() {
        return this.gradientPositions;
    }

    public void setGradientPositions(float[] gradientPositions) {
        this.gradientPositions = gradientPositions;
        invalidate();
    }

    public float getShadowMaxLength() {
        return this.shadowMaxLength;
    }

    public void setShadowMaxLength(float shadowMaxLength) {
        this.shadowMaxLength = shadowMaxLength;
        invalidate();
    }

    public float getShadowInscribedRadius() {
        return this.shadowInscribedRadius;
    }

    public void setShadowInscribedRadius(float shadowInscribedRadius) {
        this.shadowInscribedRadius = shadowInscribedRadius;
        invalidate();
    }
}
