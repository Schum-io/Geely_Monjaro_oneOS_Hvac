package com.geely.toolchain.hmi.view.selector;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.geely.toolchain.hmi.util.UiUtil;

/* loaded from: classes.dex */
public class HmiSelectorIndicator extends View {
    public HmiSelectorIndicator(Context context) {
        super(context);
    }

    public HmiSelectorIndicator(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public HmiSelectorIndicator(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    public HmiSelectorIndicator(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
    }

    public void setCorner(int color, float radius) {
        UiUtil.setBackgroundColor(this, color, color, radius);
    }

    public void setSelectTabView(int color, int strokeColor, int strokeWidth, int radius) {
        UiUtil.setSelectBgColor(this, color, strokeColor, strokeWidth, radius);
    }
}
