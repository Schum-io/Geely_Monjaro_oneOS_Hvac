package com.geely.hvac.psd.component;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;

/* loaded from: classes.dex */
public class MultiLineRadioGroup extends RadioGroup {
    private OnCheckedChangeListener mOnCheckedChangeListener;

    public MultiLineRadioGroup(Context context) {
        super(context);
    }

    public MultiLineRadioGroup(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override // android.widget.RadioGroup
    public void setOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.mOnCheckedChangeListener = onCheckedChangeListener;
    }

    @Override // android.widget.RadioGroup, android.view.ViewGroup
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
        if (child instanceof LinearLayout) {
            LinearLayout linearLayout = (LinearLayout) child;
            int childCount = linearLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = linearLayout.getChildAt(i);
                if (childAt instanceof RadioButton) {
                    final RadioButton radioButton = (RadioButton) childAt;
                    radioButton.setOnTouchListener((view, motionEvent) -> {
                        radioButton.setChecked(true);
                        checkRadioButton(radioButton);
                        if (mOnCheckedChangeListener != null) {
                            mOnCheckedChangeListener.onCheckedChanged(MultiLineRadioGroup.this, radioButton.getId());
                        }
                        return true;
                    });
                }
            }
        }
        super.addView(child, index, params);
    }

    private void checkRadioButton(RadioButton button) {
        RadioButton radioButton;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((childAt instanceof RadioButton) && childAt != button) {
                ((RadioButton) childAt).setChecked(false);
            } else if (childAt instanceof LinearLayout) {
                LinearLayout linearLayout = (LinearLayout) childAt;
                int childCount2 = linearLayout.getChildCount();
                for (int i2 = 0; i2 < childCount2; i2++) {
                    View childAt2 = linearLayout.getChildAt(i2);
                    if ((childAt2 instanceof RadioButton) && (radioButton = (RadioButton) childAt2) != button) {
                        radioButton.setChecked(false);
                    }
                }
            }
        }
    }

    public void clearAllButtonChecked() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            LinearLayout linearLayout = (LinearLayout) getChildAt(i);
            int childCount2 = linearLayout.getChildCount();
            for (int i2 = 0; i2 < childCount2; i2++) {
                ((RadioButton) linearLayout.getChildAt(i2)).setChecked(false);
            }
        }
    }
}
