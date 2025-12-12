package com.geely.hvac.trackballview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import com.geely.hvac.util.TrackballHelper;

/* loaded from: classes.dex */
public class TrackballLinearLayout extends LinearLayout {
    TrackballHelper trackballHelper;

    @Override // android.view.ViewGroup
    public boolean onInterceptHoverEvent(MotionEvent event) {
        return true;
    }

    public TrackballLinearLayout(Context context) {
        this(context, null);
    }

    public TrackballLinearLayout(Context context, AttributeSet attrs) {
        this(context, attrs, -1);
    }

    public TrackballLinearLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        TrackballHelper trackballHelper = new TrackballHelper();
        this.trackballHelper = trackballHelper;
        trackballHelper.resolveAttrs(this, context, attrs, defStyleAttr);
    }
}
