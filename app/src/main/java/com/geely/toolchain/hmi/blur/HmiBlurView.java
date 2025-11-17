package com.geely.toolchain.hmi.blur;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.Window;

/* loaded from: classes.dex */
public class HmiBlurView extends View {
    private static final String TAG = "HmiBlurView";

    public HmiBlurView(Context context) {
        super(context);
        Log.e(TAG, "Android befor 12 not supput.");
    }

    public HmiBlurView(Context context, AttributeSet attrs) {
        super(context, attrs);
        Log.e(TAG, "Android befor 12 not supput.");
    }

    public HmiBlurView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        Log.e(TAG, "Android befor 12 not supput.");
    }

    public void setWindow(Window window) {
        Log.e(TAG, "Android befor 12 not supput.");
    }
}
