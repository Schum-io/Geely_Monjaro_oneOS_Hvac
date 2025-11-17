package com.geely.toolchain.hmi.util;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.util.Log;
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

    public static int dp(Context context, int value) {
        return dp2px(context, value);
    }

    public static boolean isLight(Context context) {
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

    public static void setSelectBgColor(View view, int normalColor, int strokeColor, int strokeWidth, int radius) {
        if (normalColor == 0) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(normalColor);
            view.setBackground(gradientDrawable);
        } else {
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setColor(normalColor);
            gradientDrawable2.setStroke(strokeWidth, strokeColor);
            gradientDrawable2.setCornerRadius(radius);
            gradientDrawable2.setGradientType(0);
            view.setBackground(gradientDrawable2);
        }
    }

    public static int getColor(Context context, int colorRes) {
        return context.getColor(colorRes);
    }

    public static boolean getHmiCurrentModelIsDark(Context context) {
        int i = context.getResources().getConfiguration().uiMode;
        int i2 = i & 48;
        String str = TAG;
        Log.i(str, "currentMode is " + i2);
        Log.i(str, "uiMode is " + i);
        if (i2 == 16) {
            Log.i(str, "currentMode is UI_MODE_NIGHT_NO = 16");
            return false;
        }
        if (i2 != 32) {
            return false;
        }
        Log.i(str, "currentMode is UI_MODE_NIGHT_YES = 32");
        return true;
    }

    public static ColorStateList createCheckColorStateList(int onColor, int offColor) {
        return new ColorStateList(new int[][]{new int[]{R.attr.state_checked}, new int[]{-16842912}, new int[]{R.attr.enabled}}, new int[]{onColor, offColor, offColor});
    }

    public static StateListDrawable createCheckDrawableStateList(Drawable onDrawable, Drawable offDrawable) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        if (onDrawable != null) {
            stateListDrawable.addState(new int[]{R.attr.state_checked}, onDrawable);
        }
        if (offDrawable != null) {
            stateListDrawable.addState(new int[]{-16842912}, offDrawable);
            stateListDrawable.addState(new int[]{R.attr.enabled}, offDrawable);
        }
        return stateListDrawable;
    }

    public static void setMediumText(TextView textView) {
        textView.setTypeface(Typeface.create("sans-serif-medium", 1));
    }
}
