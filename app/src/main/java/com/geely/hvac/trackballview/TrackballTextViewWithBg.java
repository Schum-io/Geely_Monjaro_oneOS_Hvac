package com.geely.hvac.trackballview;

import android.content.Context;
import android.util.AttributeSet;
import com.geely.hvac.component.TextViewWithBg;
import com.geely.hvac.util.TrackballHelper;

/* loaded from: classes.dex */
public class TrackballTextViewWithBg extends TextViewWithBg {
    TrackballHelper trackballHelper;

    public TrackballTextViewWithBg(Context context) {
        this(context, null);
    }

    public TrackballTextViewWithBg(Context context, AttributeSet attrs) {
        this(context, attrs, -1);
    }

    public TrackballTextViewWithBg(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        TrackballHelper trackballHelper = new TrackballHelper();
        this.trackballHelper = trackballHelper;
        trackballHelper.resolveAttrs(this, context, attrs, defStyleAttr);
    }
}
