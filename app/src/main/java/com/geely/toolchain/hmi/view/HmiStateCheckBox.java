package com.geely.toolchain.hmi.view;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.R;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.content.ContextCompat;

/* loaded from: classes.dex */
public class HmiStateCheckBox extends AppCompatCheckBox {
    public HmiStateCheckBox(Context context) {
        this(context, null);
    }

    public HmiStateCheckBox(Context context, AttributeSet attrs) {
        this(context, attrs, R.attr.checkboxStyle);
    }

    public HmiStateCheckBox(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        setButtonDrawable(ContextCompat.getDrawable(context, com.geely.toolchain.hmi.R.drawable.oneoshmi_state_checkbox_bg));
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        if (enabled) {
            setAlpha(1.0f);
        } else {
            setAlpha(0.3f);
        }
    }
}
