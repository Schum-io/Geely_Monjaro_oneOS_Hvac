package com.geely.toolchain.hmi.view;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.core.content.ContextCompat;
import com.geely.toolchain.hmi.R;

/* loaded from: classes.dex */
public class HmiSmallRadioButton extends AppCompatRadioButton {
    public HmiSmallRadioButton(Context context) {
        super(context);
    }

    public HmiSmallRadioButton(Context context, AttributeSet attrs) {
        super(context, attrs);
        setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_radiobutton_small_bg));
    }

    public HmiSmallRadioButton(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
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
