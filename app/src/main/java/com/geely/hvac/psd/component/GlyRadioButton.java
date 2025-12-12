package com.geely.hvac.psd.component;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;

/* loaded from: classes.dex */
public class GlyRadioButton extends AppCompatTextView {
    public GlyRadioButton(Context context) {
        this(context, null);
    }

    public GlyRadioButton(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public GlyRadioButton(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        setBackgroundColor(0);
    }
}
