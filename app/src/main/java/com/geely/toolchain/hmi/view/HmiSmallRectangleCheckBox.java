package com.geely.toolchain.hmi.view;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.content.ContextCompat;
import com.geely.toolchain.hmi.R;

@Deprecated
/* loaded from: classes.dex */
public class HmiSmallRectangleCheckBox extends AppCompatCheckBox {
    private static final String TGA = "HmiRectangleCheckBox";

    public HmiSmallRectangleCheckBox(Context context) {
        super(context);
    }

    public HmiSmallRectangleCheckBox(Context context, AttributeSet attrs) {
        super(context, attrs);
        setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_check_box_one_small_bg));
    }

    public HmiSmallRectangleCheckBox(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean checked) {
        super.setChecked(checked);
        Log.i(TGA, "checked:" + checked);
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        Log.i(TGA, "enabled:" + enabled);
        if (enabled) {
            setAlpha(1.0f);
        } else {
            setAlpha(0.3f);
        }
    }
}
