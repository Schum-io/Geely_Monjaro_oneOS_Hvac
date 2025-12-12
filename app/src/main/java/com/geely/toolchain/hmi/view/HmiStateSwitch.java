package com.geely.toolchain.hmi.view;

import android.content.Context;
import android.util.AttributeSet;
import androidx.core.content.ContextCompat;
import com.geely.toolchain.hmi.R;

/* loaded from: classes.dex */
public class HmiStateSwitch extends HmiSwitch {
    public HmiStateSwitch(Context context) {
        super(context);
    }

    public HmiStateSwitch(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public HmiStateSwitch(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @Override // com.geely.toolchain.hmi.view.HmiSwitch
    protected void initDrawable(Context context, AttributeSet attrs) {
        super.initDrawable(context, attrs);
        updateView();
    }

    public void updateView() {
        setTrackDrawable(ContextCompat.getDrawable(getContext(), R.drawable.oneoshmi_state_switch_track));
        setThumbDrawable(ContextCompat.getDrawable(getContext(), R.drawable.oneoshmi_state_switch_thumb));
    }
}
