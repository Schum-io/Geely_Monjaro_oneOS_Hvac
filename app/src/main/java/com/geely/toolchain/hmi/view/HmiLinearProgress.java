package com.geely.toolchain.hmi.view;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.core.content.ContextCompat;

/* loaded from: classes.dex */
public class HmiLinearProgress extends ProgressBar {
    private static final int MIN_HEIGHT = 16;

    public HmiLinearProgress(Context context) {
        this(context, null);
    }

    public HmiLinearProgress(Context context, AttributeSet attrs) {
        this(context, attrs, R.attr.progressBarStyleHorizontal);
    }

    public HmiLinearProgress(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, R.attr.progressBarStyleHorizontal);
    }

    public HmiLinearProgress(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        setProgressDrawable(ContextCompat.getDrawable(context, com.geely.toolchain.hmi.R.drawable.oneoshmi_linear_progress_bg));
        setLayoutParams(new ViewGroup.LayoutParams(-2, 16));
    }
}
