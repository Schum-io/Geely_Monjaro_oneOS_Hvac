package com.geely.toolchain.hmi.view;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.content.ContextCompat;
import com.geely.toolchain.hmi.R;

/* loaded from: classes.dex */
public class HmiRectangleCheckBox extends AppCompatCheckBox {
    private static final String TGA = "HmiRectangleCheckBox";
    private Context mContext;
    private boolean misChecked;

    public HmiRectangleCheckBox(Context context) {
        super(context);
    }

    public HmiRectangleCheckBox(Context context, AttributeSet attrs) {
        super(context, attrs);
        setButtonDrawable(ContextCompat.getDrawable(context, R.drawable.oneoshmi_check_box_one_bg));
    }

    public HmiRectangleCheckBox(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean checked) {
        super.setChecked(checked);
        Log.i(TGA, "checked:" + checked);
        this.misChecked = checked;
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
