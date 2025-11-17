package com.geely.hvac.trackballview;

import android.content.Context;
import android.util.AttributeSet;
import com.geely.hvac.util.TrackballHelper;
import com.geely.toolchain.hmi.view.HmiImageView;

/* loaded from: classes.dex */
public class TrackballHmiImageView extends HmiImageView {
    TrackballHelper trackballHelper;

    public TrackballHmiImageView(Context context) {
        this(context, null);
    }

    public TrackballHmiImageView(Context context, AttributeSet attrs) {
        this(context, attrs, -1);
    }

    public TrackballHmiImageView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        TrackballHelper trackballHelper = new TrackballHelper();
        this.trackballHelper = trackballHelper;
        trackballHelper.resolveAttrs(this, context, attrs, defStyleAttr);
    }
}
