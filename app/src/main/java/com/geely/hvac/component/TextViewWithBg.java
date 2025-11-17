package com.geely.hvac.component;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.geely.hvac.common.R;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.utils.UiUtil;

/* loaded from: classes.dex */
public class TextViewWithBg extends AppCompatTextView {
    private boolean mAutoEnable;
    private int mAutoMode;
    private int mDisableBackColor;
    private int mDisableTextColor;
    private String mDisplayView;
    private int mLevel;
    private int mNormalColor;
    private int mNormalTextColor;
    private int mPressColor;
    private int mPressTextColor;
    private float mRadius;

    public TextViewWithBg(Context context) {
        super(context);
        this.mNormalColor = 0;
        this.mPressColor = 0;
        this.mPressTextColor = 0;
        this.mNormalTextColor = 0;
        this.mRadius = 0.0f;
        this.mLevel = 0;
        this.mAutoMode = -1;
        init(context, null);
    }

    public TextViewWithBg(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mNormalColor = 0;
        this.mPressColor = 0;
        this.mPressTextColor = 0;
        this.mNormalTextColor = 0;
        this.mRadius = 0.0f;
        this.mLevel = 0;
        this.mAutoMode = -1;
        init(context, attrs);
    }

    public TextViewWithBg(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mNormalColor = 0;
        this.mPressColor = 0;
        this.mPressTextColor = 0;
        this.mNormalTextColor = 0;
        this.mRadius = 0.0f;
        this.mLevel = 0;
        this.mAutoMode = -1;
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        if (attrs == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.ViewWithBackground);
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.ViewWithBackground_normalColor, 0);
        int color2 = typedArrayObtainStyledAttributes.getColor(R.styleable.ViewWithBackground_pressColor, 0);
        float dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ViewWithBackground_radius, 0);
        this.mNormalTextColor = typedArrayObtainStyledAttributes.getColor(R.styleable.ViewWithBackground_normalTextColor, 0);
        this.mPressTextColor = typedArrayObtainStyledAttributes.getColor(R.styleable.ViewWithBackground_pressTextColor, 0);
        this.mDisableBackColor = typedArrayObtainStyledAttributes.getColor(R.styleable.ViewWithBackground_disableBackColor, 0);
        this.mDisableTextColor = typedArrayObtainStyledAttributes.getColor(R.styleable.ViewWithBackground_disableTextColor, 0);
        this.mDisplayView = typedArrayObtainStyledAttributes.getString(R.styleable.ViewWithBackground_displayView);
        typedArrayObtainStyledAttributes.recycle();
        setBackground(color, color2, dimensionPixelSize);
    }

    public void setNormalColor(int normalColor) {
        setBackground(normalColor, this.mPressColor, this.mRadius);
    }

    public void setPressColor(int pressColor) {
        setBackground(this.mNormalColor, pressColor, this.mRadius);
    }

    public static void bindSeatLevel(TextViewWithBg v, int level, int autoMode) {
        LogUtil.d("TextViewWithBg", "bindSeatLevel change = " + level + " auto = " + autoMode);
        v.setLeveAndMode(level, autoMode);
        v.setTextAndBackMode();
    }

    public void setTextAndBackMode() {
        if (!this.mAutoEnable) {
            setDisableMode();
        } else if (this.mLevel == this.mAutoMode) {
            setAutoBackground();
            setAutoColor();
        } else {
            setNotAutoBackground();
            setNotAutoColor();
        }
    }

    public static void bindEnable(TextViewWithBg v, boolean enable) {
        LogUtil.d("TextViewWithBg", "bindEnable enable = " + enable);
        v.setAutoEnable(enable);
        v.setTextAndBackMode();
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        if (enabled) {
            UiUtil.setBackgroundColor(this, this.mNormalColor, this.mPressColor, this.mRadius);
        } else {
            UiUtil.setBackgroundColor(this, this.mNormalColor, 0, this.mRadius);
        }
    }

    public void setBackground(int normalColor, int pressColor, float radius) {
        UiUtil.setBackgroundColor(this, normalColor, pressColor, radius);
        this.mRadius = radius;
        this.mNormalColor = normalColor;
        this.mPressColor = pressColor;
    }

    public void setAutoBackground() {
        UiUtil.setHandBackColor(this, this.mPressColor, this.mRadius);
    }

    public void setNotAutoBackground() {
        UiUtil.setHandBackColor(this, this.mNormalColor, this.mRadius);
    }

    public void setAutoColor() {
        int i = this.mPressTextColor;
        if (i == 0 && this.mNormalTextColor == 0) {
            return;
        }
        UiUtil.setHandTextColor(this, i);
    }

    public void setNotAutoColor() {
        if (this.mPressTextColor == 0 && this.mNormalTextColor == 0) {
            return;
        }
        UiUtil.setHandTextColor(this, this.mNormalTextColor);
    }

    public void setLeveAndMode(int level, int autoMode) {
        this.mLevel = level;
        this.mAutoMode = autoMode;
    }

    public void setDisableMode() {
        int i = this.mDisableBackColor;
        UiUtil.setBackgroundColor(this, i, i, this.mRadius);
        UiUtil.setHandTextColor(this, this.mDisableTextColor);
    }

    public void setAutoEnable(boolean enable) {
        this.mAutoEnable = enable;
    }

    public void setHandBackColor(int color) {
        UiUtil.setHandBackColor(this, color, this.mRadius);
    }

    public String getDisplayView() {
        return this.mDisplayView;
    }
}
