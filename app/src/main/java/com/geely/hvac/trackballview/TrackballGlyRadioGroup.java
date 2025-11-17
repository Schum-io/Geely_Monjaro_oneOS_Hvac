package com.geely.hvac.trackballview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.geely.hvac.psd.component.GlyRadioGroup;
import com.geely.hvac.util.TrackballHelper;

/* loaded from: classes.dex */
public class TrackballGlyRadioGroup extends GlyRadioGroup {
    TrackballHelper trackballHelper;

    @Override // android.view.ViewGroup
    public boolean onInterceptHoverEvent(MotionEvent event) {
        return true;
    }

    public TrackballGlyRadioGroup(Context context) {
        this(context, null);
    }

    public TrackballGlyRadioGroup(Context context, AttributeSet attrs) {
        this(context, attrs, -1);
    }

    public TrackballGlyRadioGroup(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        TrackballHelper trackballHelper = new TrackballHelper();
        this.trackballHelper = trackballHelper;
        trackballHelper.resolveAttrs(this, context, attrs, defStyleAttr);
    }
}
