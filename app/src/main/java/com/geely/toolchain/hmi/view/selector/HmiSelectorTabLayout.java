package com.geely.toolchain.hmi.view.selector;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.geely.toolchain.hmi.R;

/* loaded from: classes.dex */
public class HmiSelectorTabLayout extends HmiSelectorLayout {
    public static final String TAG = "HmiSelectorTabLayout";

    public HmiSelectorTabLayout(Context context) {
        this(context, null);
    }

    public HmiSelectorTabLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public HmiSelectorTabLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @Override // com.geely.toolchain.hmi.view.selector.HmiSelectorLayout
    protected void obtainAttributes(Context context, AttributeSet attrs) {
        super.obtainAttributes(context, attrs);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.HmiSelectorLayout);
        this.mBgRadius = typedArrayObtainStyledAttributes.getDimension(R.styleable.HmiSelectorLayout_hmi_sl_bg_radius, dp2px(2.0f));
        this.mTextSelectColor = typedArrayObtainStyledAttributes.getColor(R.styleable.HmiSelectorLayout_hmi_sl_textSelectColor, ContextCompat.getColor(getContext(), R.color.oneoshmi_main_theme_color));
        this.mTextUnselectColor = typedArrayObtainStyledAttributes.getColor(R.styleable.HmiSelectorLayout_hmi_sl_textUnselectColor, ContextCompat.getColor(getContext(), R.color.oneoshmi_check_off_text_color));
        this.mIndicatorMarginLeft = typedArrayObtainStyledAttributes.getDimension(R.styleable.HmiSelectorLayout_hmi_sl_indicator_margin_left, typedArrayObtainStyledAttributes.getDimension(R.styleable.HmiSelectorLayout_hmi_sl_indicator_margin, dp2px(0.0f)));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // com.geely.toolchain.hmi.view.selector.HmiSelectorLayout
    protected void addTab(int position, View tabView) {
        super.addTab(position, tabView);
        ((HmiSelectorIndicator) tabView.findViewById(R.id.view_indicator)).setSelectTabView(Color.parseColor("#0D3DA595"), ContextCompat.getColor(getContext(), R.color.oneoshmi_main_theme_color), dp2px(4.0f), dp2px(2.0f));
    }

    @Override // com.geely.toolchain.hmi.view.selector.HmiSelectorLayout, android.view.View
    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        Log.i(TAG, "enabled:" + enabled);
        if (enabled) {
            setAlpha(1.0f);
        } else {
            setAlpha(0.3f);
        }
    }
}
