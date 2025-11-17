package com.geely.toolchain.hmi.view;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import androidx.appcompat.widget.AppCompatToggleButton;
import androidx.core.content.ContextCompat;
import com.geely.toolchain.hmi.util.UiUtil;

/* loaded from: classes.dex */
public abstract class HmiBaseToggleButton extends AppCompatToggleButton {
    public static final String TAG = "HmiBaseToggleButton";
    protected Drawable mOffIcon;
    protected int mOffTextColor;
    protected Drawable mOnIcon;
    protected int mOnTextColor;

    protected abstract void setIconDrawable();

    public HmiBaseToggleButton(Context context) {
        this(context, null);
    }

    public HmiBaseToggleButton(Context context, AttributeSet attrs) {
        this(context, attrs, R.attr.buttonStyleToggle);
    }

    public HmiBaseToggleButton(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        initView(context, attrs);
    }

    private void initView(Context context, AttributeSet attrs) {
        if (attrs == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, com.geely.toolchain.hmi.R.styleable.HmiBaseToggleButton);
        this.mOnTextColor = typedArrayObtainStyledAttributes.getColor(com.geely.toolchain.hmi.R.styleable.HmiBaseToggleButton_hmi_toggle_on_text_color, ContextCompat.getColor(context, com.geely.toolchain.hmi.R.color.oneoshmi_check_on_text_color));
        this.mOffTextColor = typedArrayObtainStyledAttributes.getColor(com.geely.toolchain.hmi.R.styleable.HmiBaseToggleButton_hmi_toggle_off_text_color, ContextCompat.getColor(context, com.geely.toolchain.hmi.R.color.oneoshmi_check_off_text_color));
        this.mOnIcon = typedArrayObtainStyledAttributes.getDrawable(com.geely.toolchain.hmi.R.styleable.HmiBaseToggleButton_hmi_toggle_on_icon);
        this.mOffIcon = typedArrayObtainStyledAttributes.getDrawable(com.geely.toolchain.hmi.R.styleable.HmiBaseToggleButton_hmi_toggle_off_icon);
        typedArrayObtainStyledAttributes.recycle();
        setTextColor(this.mOnTextColor, this.mOffTextColor);
        setIcon(this.mOnIcon, this.mOffIcon);
        setOutlineProvider(null);
    }

    public void setTextColor(int onColor, int offColor) {
        Log.i(TAG, "setTextColor: onColor = " + onColor + " offColor = " + offColor);
        this.mOnTextColor = onColor;
        this.mOffTextColor = offColor;
        setTextColor(UiUtil.createCheckColorStateList(onColor, offColor));
    }

    public void setIcon(Drawable onIcon, Drawable offIcon) {
        Log.i(TAG, "setIcon: onIcon = " + onIcon + " offIcon = " + offIcon);
        this.mOnIcon = onIcon;
        this.mOffIcon = offIcon;
        setIconDrawable();
        invalidate();
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        Log.i(TAG, "enabled:" + enabled);
        if (enabled) {
            setAlpha(1.0f);
        } else {
            setAlpha(0.3f);
        }
    }
}
