package com.geely.hvac.utils;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.util.TypedValue;
import android.view.View;
import android.widget.TextView;

/* loaded from: classes.dex */
public class UiUtil {
    private static final String TAG = "UiUtil";

    public static int dp2px(Context ctx, float dp) {
        return (int) TypedValue.applyDimension(1, dp, ctx.getResources().getDisplayMetrics());
    }

    public static int px2Dp(Context ctx, float px) {
        return (int) ((px / ctx.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static boolean isLight(Context context) {
        LogUtil.d(TAG, "" + context.getResources().getConfiguration().uiMode);
        return context.getResources().getConfiguration().uiMode == 17;
    }

    public static void setBackgroundColor(View view, int normalColor, int pressColor, float radius) {
        if (normalColor == 0 && pressColor == 0) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(normalColor);
            view.setBackground(gradientDrawable);
            return;
        }
        if (pressColor == 0) {
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setColor(normalColor);
            gradientDrawable2.setCornerRadius(radius);
            view.setBackground(gradientDrawable2);
            return;
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        GradientDrawable gradientDrawable3 = new GradientDrawable();
        gradientDrawable3.setColor(pressColor);
        gradientDrawable3.setCornerRadius(radius);
        gradientDrawable3.setGradientType(0);
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, gradientDrawable3);
        stateListDrawable.addState(new int[]{R.attr.state_focused}, gradientDrawable3);
        stateListDrawable.addState(new int[]{R.attr.state_activated}, gradientDrawable3);
        GradientDrawable gradientDrawable4 = new GradientDrawable();
        gradientDrawable4.setColor(normalColor);
        gradientDrawable4.setCornerRadius(radius);
        gradientDrawable4.setGradientType(0);
        stateListDrawable.addState(new int[0], gradientDrawable4);
        view.setBackground(stateListDrawable);
    }

    public static void setHandTextColor(TextView view, int normalColor) {
        view.setTextColor(new ColorStateList(new int[][]{new int[0]}, new int[]{normalColor}));
    }

    public static void setHandBackColor(TextView view, int color, float radius) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(color);
        gradientDrawable.setCornerRadius(radius);
        gradientDrawable.setGradientType(0);
        stateListDrawable.addState(new int[0], gradientDrawable);
        view.setBackground(stateListDrawable);
    }
}
