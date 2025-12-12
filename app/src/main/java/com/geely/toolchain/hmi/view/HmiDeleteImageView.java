package com.geely.toolchain.hmi.view;

import android.content.Context;
import android.util.AttributeSet;
import com.geely.toolchain.hmi.R;

/* loaded from: classes.dex */
public class HmiDeleteImageView extends HmiImageView {
    public HmiDeleteImageView(Context context) {
        super(context);
    }

    public HmiDeleteImageView(Context context, AttributeSet attrs) {
        super(context, attrs);
        setImageResource(R.drawable.oneoshmi_delete_bt_bg);
    }

    public HmiDeleteImageView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
