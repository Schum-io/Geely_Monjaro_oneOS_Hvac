package com.geely.toolchain.hmi.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.util.UiUtil;

/* loaded from: classes.dex */
public class HmiTextViewWithBg extends AppCompatTextView {
    private static final int ONE_LINE = 1;
    private int mNormalColor;
    private int mPressColor;
    private float mRadius;

    public HmiTextViewWithBg(Context context) {
        super(context);
        this.mNormalColor = 0;
        this.mPressColor = 0;
        this.mRadius = 0.0f;
        init(context, null);
    }

    public HmiTextViewWithBg(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mNormalColor = 0;
        this.mPressColor = 0;
        this.mRadius = 0.0f;
        init(context, attrs);
    }

    public HmiTextViewWithBg(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mNormalColor = 0;
        this.mPressColor = 0;
        this.mRadius = 0.0f;
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        if (attrs == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.HmiViewWithBackground);
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.HmiViewWithBackground_normalColor, 0);
        int color2 = typedArrayObtainStyledAttributes.getColor(R.styleable.HmiViewWithBackground_pressColor, 0);
        float dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.HmiViewWithBackground_radius, 0);
        typedArrayObtainStyledAttributes.recycle();
        setBackground(color, color2, dimensionPixelSize);
    }

    public void setNormalColor(int normalColor) {
        setBackground(normalColor, this.mPressColor, this.mRadius);
    }

    public void setPressColor(int pressColor) {
        setBackground(this.mNormalColor, pressColor, this.mRadius);
    }

    public void setBackground(int normalColor, int pressColor, float radius) {
        UiUtil.setBackgroundColor(this, normalColor, pressColor, radius);
        this.mRadius = radius;
        this.mNormalColor = normalColor;
        this.mPressColor = pressColor;
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (getLineCount() <= 1) {
            setGravity(17);
        } else {
            setGravity(8388611);
        }
    }
}
