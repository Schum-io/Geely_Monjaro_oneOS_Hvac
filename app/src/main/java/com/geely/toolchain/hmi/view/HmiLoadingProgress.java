package com.geely.toolchain.hmi.view;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import androidx.core.content.ContextCompat;

/* loaded from: classes.dex */
public class HmiLoadingProgress extends ProgressBar {
    public HmiLoadingProgress(Context context) {
        this(context, null);
    }

    public HmiLoadingProgress(Context context, AttributeSet attrs) {
        this(context, attrs, R.attr.progressBarStyle);
    }

    public HmiLoadingProgress(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        setIndeterminate(true);
        setIndeterminateDrawable(ContextCompat.getDrawable(context, com.geely.toolchain.hmi.R.drawable.oneoshmi_loading_progress_bg));
    }
}
