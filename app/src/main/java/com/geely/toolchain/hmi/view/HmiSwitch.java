package com.geely.toolchain.hmi.view;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.Switch;
import com.geely.toolchain.hmi.R;

/* loaded from: classes.dex */
public class HmiSwitch extends Switch {
    private static final String TGA = "HmiSwitch";

    protected void initDrawable(Context context, AttributeSet attrs) {
    }

    public HmiSwitch(Context context) {
        super(context);
        init(context, null);
    }

    public HmiSwitch(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context, attrs);
    }

    public HmiSwitch(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        setTrackDrawable(context.getDrawable(R.drawable.oneoshmi_switch_selector_track));
        setThumbDrawable(context.getDrawable(R.drawable.oneoshmi_switch_selector_thumb));
        setBackground(null);
        initDrawable(context, attrs);
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
