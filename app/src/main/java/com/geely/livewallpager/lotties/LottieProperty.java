package com.geely.livewallpager.lotties;

import android.graphics.ColorFilter;
import android.graphics.PointF;
import com.geely.livewallpager.lotties.value.ScaleXY;

/* loaded from: classes.dex */
public interface LottieProperty {
    // Move initializations from the static block here
    public static final ColorFilter COLOR_FILTER = new ColorFilter();
    public static final Float CORNER_RADIUS = 0.0f;
    public static final Integer[] GRADIENT_COLOR = new Integer[0];
    public static final Float POLYSTAR_INNER_RADIUS = 8.0f;
    public static final Float POLYSTAR_INNER_ROUNDEDNESS = 10.0f;
    public static final Float POLYSTAR_OUTER_RADIUS = 9.0f;
    public static final Float POLYSTAR_OUTER_ROUNDEDNESS = 11.0f;
    public static final Float POLYSTAR_POINTS = 6.0f;
    public static final Float POLYSTAR_ROTATION = 7.0f;
    public static final PointF POSITION = new PointF();
    public static final Float REPEATER_COPIES = 4.0f;
    public static final Float REPEATER_OFFSET = 5.0f;
    public static final Float STROKE_WIDTH = 2.0f;
    public static final Float TEXT_SIZE = 14.0f;
    public static final Float TEXT_TRACKING = 3.0f;
    public static final Float TIME_REMAP = 13.0f;
    public static final Float TRANSFORM_END_OPACITY = 12.1f;
    public static final Float TRANSFORM_ROTATION = 1.0f;
    public static final ScaleXY TRANSFORM_SCALE = new ScaleXY();
    public static final Float TRANSFORM_SKEW = 0.0f;
    public static final Float TRANSFORM_SKEW_ANGLE = 0.0f;
    public static final Float TRANSFORM_START_OPACITY = 12.0f;

    // These were already initialized correctly
    public static final Integer COLOR = 1;
    public static final Integer STROKE_COLOR = 2;
    public static final Integer TRANSFORM_OPACITY = 3;
    public static final Integer OPACITY = 4;

    public static final PointF TRANSFORM_ANCHOR_POINT = new PointF();
    public static final PointF TRANSFORM_POSITION = new PointF();
    public static final PointF ELLIPSE_SIZE = new PointF();
    public static final PointF RECTANGLE_SIZE = new PointF();
}
