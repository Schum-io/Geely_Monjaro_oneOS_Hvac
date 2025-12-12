package com.geely.hvac.trackballview;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatRadioButton;
import com.geely.hvac.util.TrackballHelper;

/* loaded from: classes.dex */
public class TrackballRadioButton extends AppCompatRadioButton {
    TrackballHelper trackballHelper;

    public TrackballRadioButton(Context context) {
        this(context, null);
    }

    public TrackballRadioButton(Context context, AttributeSet attrs) {
        this(context, attrs, -1);
    }

    public TrackballRadioButton(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        TrackballHelper trackballHelper = new TrackballHelper();
        this.trackballHelper = trackballHelper;
        trackballHelper.resolveAttrs(this, context, attrs, defStyleAttr);
    }
}
