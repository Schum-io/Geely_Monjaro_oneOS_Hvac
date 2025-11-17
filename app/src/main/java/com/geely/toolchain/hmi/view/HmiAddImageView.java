package com.geely.toolchain.hmi.view;

import android.content.Context;
import android.util.AttributeSet;
import com.geely.toolchain.hmi.R;

/* loaded from: classes.dex */
public class HmiAddImageView extends HmiImageView {
    public HmiAddImageView(Context context) {
        super(context);
    }

    public HmiAddImageView(Context context, AttributeSet attrs) {
        super(context, attrs);
        setImageResource(R.drawable.oneoshmi_add_bt_bg);
    }

    public HmiAddImageView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
