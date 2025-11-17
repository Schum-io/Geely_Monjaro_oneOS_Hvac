package com.geely.hvac.component;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;

/* loaded from: classes.dex */
public class ViewAdapter {
    private static final String TAG = "ViewAdapter";

    public static void layoutWidth(View v, int value) {
        ViewGroup.LayoutParams layoutParams = v.getLayoutParams();
        layoutParams.width = value;
        v.setLayoutParams(layoutParams);
    }

    public static void layoutHeight(View v, int value) {
        ViewGroup.LayoutParams layoutParams = v.getLayoutParams();
        layoutParams.height = value;
        v.setLayoutParams(layoutParams);
    }

    public static void layoutMarginBottom(View v, int value) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) v.getLayoutParams();
        marginLayoutParams.bottomMargin = value;
        v.setLayoutParams(marginLayoutParams);
    }

    public static void layoutMarginTop(View v, int value) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) v.getLayoutParams();
        marginLayoutParams.topMargin = value;
        v.setLayoutParams(marginLayoutParams);
    }

    public static void layoutMarginStart(View v, int value) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) v.getLayoutParams();
        marginLayoutParams.setMarginStart(value);
        v.setLayoutParams(marginLayoutParams);
    }

    public static void layoutMarginEnd(View v, int value) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) v.getLayoutParams();
        marginLayoutParams.setMarginEnd(value);
        v.setLayoutParams(marginLayoutParams);
    }

    public static void bindImageSrc(ImageView v, int resId) {
        v.setImageResource(resId);
    }

    public static void bindImageBg(View v, int resId) {
        v.setBackground(ContextCompat.getDrawable(v.getContext(), resId));
    }

    public static void bindViewEnable(View v, boolean enable) {
        v.setEnabled(enable);
    }
}
