package com.geely.hvac.component;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.geely.hvac.common.R;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.utils.UiUtil;

/* loaded from: classes.dex */
public class ConstraintLayoutWithBg extends ConstraintLayout {
    private final String TAG;
    private int mNormalColor;
    private int mPressColor;
    private float mRadius;

    public ConstraintLayoutWithBg(Context context) {
        super(context);
        this.TAG = getClass().getSimpleName();
        this.mNormalColor = 0;
        this.mPressColor = 0;
        this.mRadius = 0.0f;
        init(context, null);
    }

    public ConstraintLayoutWithBg(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.TAG = getClass().getSimpleName();
        this.mNormalColor = 0;
        this.mPressColor = 0;
        this.mRadius = 0.0f;
        init(context, attrs);
    }

    public ConstraintLayoutWithBg(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.TAG = getClass().getSimpleName();
        this.mNormalColor = 0;
        this.mPressColor = 0;
        this.mRadius = 0.0f;
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        if (attrs == null) {
            LogUtil.d(this.TAG, "init, attr is null");
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.ViewWithBackground);
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.ViewWithBackground_normalColor, 0);
        int color2 = typedArrayObtainStyledAttributes.getColor(R.styleable.ViewWithBackground_pressColor, 0);
        float dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ViewWithBackground_radius, 0);
        LogUtil.d(this.TAG, "init, radius:" + dimensionPixelSize);
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
}
