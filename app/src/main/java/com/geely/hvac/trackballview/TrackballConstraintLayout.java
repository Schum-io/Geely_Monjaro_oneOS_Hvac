package com.geely.hvac.trackballview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.geely.hvac.util.TrackballHelper;

/* loaded from: classes.dex */
public class TrackballConstraintLayout extends ConstraintLayout {
    TrackballHelper trackballHelper;

    @Override // android.view.ViewGroup
    public boolean onInterceptHoverEvent(MotionEvent event) {
        return true;
    }

    public TrackballConstraintLayout(Context context) {
        this(context, null);
    }

    public TrackballConstraintLayout(Context context, AttributeSet attrs) {
        this(context, attrs, -1);
    }

    public TrackballConstraintLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        TrackballHelper trackballHelper = new TrackballHelper();
        this.trackballHelper = trackballHelper;
        trackballHelper.resolveAttrs(this, context, attrs, defStyleAttr);
    }
}
