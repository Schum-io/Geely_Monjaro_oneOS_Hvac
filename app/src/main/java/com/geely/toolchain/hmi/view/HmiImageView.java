package com.geely.toolchain.hmi.view;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;

/* loaded from: classes.dex */
public class HmiImageView extends AppCompatImageView {
    public HmiImageView(Context context) {
        super(context);
        init(context, null);
    }

    public HmiImageView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context, attrs);
    }

    public HmiImageView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        if (isInEditMode()) {
            // Set a placeholder background color or image for design time
            setBackgroundColor(Color.GRAY);
        }
    }
}
