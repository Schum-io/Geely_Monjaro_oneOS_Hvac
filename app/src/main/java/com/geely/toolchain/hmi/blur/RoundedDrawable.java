package com.geely.toolchain.hmi.blur;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import java.util.Objects;

/* loaded from: classes.dex */
public class RoundedDrawable extends Drawable {
    final Paint mBackgroundPaint;
    private Drawable mDrawable;
    final Paint mPaint;
    private int mRadius;
    private boolean mIsClipEnabled = true;
    private final Rect mTmpBounds = new Rect();
    private final RectF mTmpBoundsF = new RectF();

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public RoundedDrawable() {
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.mBackgroundPaint = paint2;
        paint2.setAntiAlias(true);
        paint2.setColor(0);
    }

    public void setDrawable(Drawable drawable) {
        if (Objects.equals(this.mDrawable, drawable)) {
            return;
        }
        this.mDrawable = drawable;
        this.mPaint.setShader(null);
        invalidateSelf();
    }

    public Drawable getDrawable() {
        return this.mDrawable;
    }

    public void setBackgroundColor(int color) {
        this.mBackgroundPaint.setColor(color);
        invalidateSelf();
    }

    public int getBackgroundColor() {
        return this.mBackgroundPaint.getColor();
    }

    public void setClipEnabled(boolean clipEnabled) {
        this.mIsClipEnabled = clipEnabled;
        if (!clipEnabled) {
            this.mPaint.setShader(null);
        }
        invalidateSelf();
    }

    public boolean isClipEnabled() {
        return this.mIsClipEnabled;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect bounds) {
        this.mTmpBounds.right = bounds.width();
        this.mTmpBounds.bottom = bounds.height();
        this.mTmpBoundsF.right = bounds.width();
        this.mTmpBoundsF.bottom = bounds.height();
        this.mPaint.setShader(null);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        if (this.mDrawable == null || bounds.isEmpty()) {
            return;
        }
        canvas.save();
        canvas.translate(bounds.left, bounds.top);
        RectF rectF = this.mTmpBoundsF;
        int i = this.mRadius;
        canvas.drawRoundRect(rectF, i, i, this.mBackgroundPaint);
        if (this.mIsClipEnabled) {
            if (this.mPaint.getShader() == null) {
                updateBitmapShader();
            }
            RectF rectF2 = this.mTmpBoundsF;
            int i2 = this.mRadius;
            canvas.drawRoundRect(rectF2, i2, i2, this.mPaint);
        } else {
            int iCeil = (int) Math.ceil(Math.min(this.mRadius, Math.min(bounds.width(), bounds.height()) / 2) * (1.0f - (1.0f / ((float) Math.sqrt(2.0d)))));
            this.mTmpBounds.inset(iCeil, iCeil);
            this.mDrawable.setBounds(this.mTmpBounds);
            this.mDrawable.draw(canvas);
            int i3 = -iCeil;
            this.mTmpBounds.inset(i3, i3);
        }
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        this.mPaint.setAlpha(alpha);
        this.mBackgroundPaint.setAlpha(alpha);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mPaint.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter cf) {
        this.mPaint.setColorFilter(cf);
    }

    public void setRadius(int radius) {
        this.mRadius = radius;
    }

    public int getRadius() {
        return this.mRadius;
    }

    private void updateBitmapShader() {
        if (this.mDrawable == null) {
            return;
        }
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            return;
        }
        this.mPaint.setShader(new BitmapShader(drawableToBitmap(this.mDrawable, bounds.width(), bounds.height()), Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
    }

    private Bitmap drawableToBitmap(Drawable drawable, int width, int height) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, width, height);
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }
}
