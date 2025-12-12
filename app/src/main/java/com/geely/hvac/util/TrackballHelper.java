package com.geely.hvac.util;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.geely.hvac.R;

/* loaded from: classes.dex */
public class TrackballHelper {
    private static final float DEFAULT_RADIUS = 0.0f;
    private static final float DEFAULT_SCALE = 1.2f;
    private static final int DEFAULT_STROKE_WIDTH = 3;
    private float radius;
    private float scale;
    private int strokeColor;
    private int strokeWidth;
    private static final int DEFAULT_STROKE_COLOR = Color.parseColor("#FF018786");
    private static final Long ANIM_DURATION = 200L;

    public void resolveAttrs(final View view, Context context, AttributeSet attrs, int defStyleAttr) {
        TypedArray typedArrayObtainStyledAttributes = null;
        try {
            try {
                typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.TrackBallHelper);
                this.strokeWidth = (int) typedArrayObtainStyledAttributes.getDimension(3, 3.0f);
                this.strokeColor = typedArrayObtainStyledAttributes.getColor(2, DEFAULT_STROKE_COLOR);
                this.radius = typedArrayObtainStyledAttributes.getDimension(0, 0.0f);
                this.scale = typedArrayObtainStyledAttributes.getFloat(1, 1.2f);
            } catch (Exception e) {
                e.printStackTrace();
                if (typedArrayObtainStyledAttributes != null) {
                }
            }
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            view.setOnHoverListener((view2, motionEvent) -> lambda$resolveAttrs$0$TrackballHelper(view, view2, motionEvent));
        } catch (Throwable th) {
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            throw th;
        }
    }

    public /* synthetic */ boolean lambda$resolveAttrs$0$TrackballHelper(View view, View view2, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 9) {
            focus(view, this.strokeWidth, this.strokeColor, this.radius, this.scale);
            return true;
        }
        if (action != 10) {
            return true;
        }
        normal(view);
        return true;
    }

    private void focus(View view, int strokeWidth, int strokeColor, float radius, float scale) {
        view.animate().scaleX(scale).scaleY(scale).setDuration(ANIM_DURATION.longValue());
        view.setAlpha(0.7f);
    }

    public void normal(View view) {
        view.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(ANIM_DURATION.longValue());
        view.setForeground(null);
    }
}
