package com.geely.toolchain.hmi.view.pickerview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.view.HmiTextView;
import com.geely.toolchain.hmi.view.pickerview.HmiHourPickerView;
import com.geely.toolchain.hmi.view.pickerview.HmiMinutePickerView;

/* loaded from: classes.dex */
public class HmiHourMinutePickerView extends LinearLayout implements HmiHourPickerView.OnHourSelectedListener, HmiMinutePickerView.OnMinuteSelectedListener {
    private HmiHourPickerView mHourPicker;
    private int mLastX;
    private int mLastY;
    private HmiMinutePickerView mMinutePicker;
    private OnTimeSelectedListener mOnTimeSelectedListener;
    private HmiTextView mTvTimeDivide;
    private HmiTextView mTvTimeHour;
    private HmiTextView mTvTimeHourBefore;
    private HmiTextView mTvTimeMinute;

    public interface OnTimeSelectedListener {
        void onTimeSelected(int hour, int minute);
    }

    public HmiHourMinutePickerView(Context context) {
        this(context, null);
    }

    public HmiHourMinutePickerView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public HmiHourMinutePickerView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mLastX = 0;
        this.mLastY = 0;
        LayoutInflater.from(context).inflate(R.layout.hmi_layout_time, this);
        initChild();
        this.mHourPicker.setBackgroundDrawable(getBackground());
        this.mMinutePicker.setBackgroundDrawable(getBackground());
    }

    @Override // com.geely.toolchain.hmi.view.pickerview.HmiHourPickerView.OnHourSelectedListener
    public void onHourSelected(int hour) {
        onTimeSelected();
    }

    @Override // com.geely.toolchain.hmi.view.pickerview.HmiMinutePickerView.OnMinuteSelectedListener
    public void onMinuteSelected(int minute) {
        onTimeSelected();
    }

    private void initChild() {
        HmiHourPickerView hmiHourPickerView = (HmiHourPickerView) findViewById(R.id.hourPicker_layout_time);
        this.mHourPicker = hmiHourPickerView;
        hmiHourPickerView.setOnHourSelectedListener(this);
        HmiMinutePickerView hmiMinutePickerView = (HmiMinutePickerView) findViewById(R.id.minutePicker_layout_time);
        this.mMinutePicker = hmiMinutePickerView;
        hmiMinutePickerView.setOnMinuteSelectedListener(this);
        this.mTvTimeHourBefore = (HmiTextView) findViewById(R.id.tv_time_hour_before);
        this.mTvTimeHour = (HmiTextView) findViewById(R.id.tv_time_hour);
        this.mTvTimeMinute = (HmiTextView) findViewById(R.id.tv_time_minute);
        this.mTvTimeDivide = (HmiTextView) findViewById(R.id.tv_time_divide);
        this.mTvTimeHourBefore.setTextColor(this.mHourPicker.getSelectedItemTextColor());
        this.mTvTimeHour.setTextColor(this.mHourPicker.getSelectedItemTextColor());
        this.mTvTimeMinute.setTextColor(this.mMinutePicker.getSelectedItemTextColor());
    }

    private void onTimeSelected() {
        Log.i("HmiHourMinutePickerView", "onTimeSelected: Hour = " + getHour() + " Minute = " + getMinute());
        OnTimeSelectedListener onTimeSelectedListener = this.mOnTimeSelectedListener;
        if (onTimeSelectedListener != null) {
            onTimeSelectedListener.onTimeSelected(getHour(), getMinute());
        }
    }

    public void setTime(int hour, int minute) {
        this.mHourPicker.setCurrentItem(hour);
        this.mMinutePicker.setCurrentItem(minute);
    }

    public int getHour() {
        return this.mHourPicker.getCurrentItem();
    }

    public int getMinute() {
        return this.mMinutePicker.getCurrentItem();
    }

    @Override // android.view.View
    public void setBackgroundColor(int color) {
        super.setBackgroundColor(color);
        HmiHourPickerView hmiHourPickerView = this.mHourPicker;
        if (hmiHourPickerView != null) {
            hmiHourPickerView.setBackgroundColor(color);
        }
        HmiMinutePickerView hmiMinutePickerView = this.mMinutePicker;
        if (hmiMinutePickerView != null) {
            hmiMinutePickerView.setBackgroundColor(color);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int resid) {
        super.setBackgroundResource(resid);
        HmiHourPickerView hmiHourPickerView = this.mHourPicker;
        if (hmiHourPickerView != null) {
            hmiHourPickerView.setBackgroundResource(resid);
        }
        HmiMinutePickerView hmiMinutePickerView = this.mMinutePicker;
        if (hmiMinutePickerView != null) {
            hmiMinutePickerView.setBackgroundResource(resid);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable background) {
        super.setBackgroundDrawable(background);
        HmiHourPickerView hmiHourPickerView = this.mHourPicker;
        if (hmiHourPickerView != null) {
            hmiHourPickerView.setBackgroundDrawable(background);
        }
        HmiMinutePickerView hmiMinutePickerView = this.mMinutePicker;
        if (hmiMinutePickerView != null) {
            hmiMinutePickerView.setBackgroundDrawable(background);
        }
    }

    public HmiHourPickerView getHourPicker() {
        return this.mHourPicker;
    }

    public HmiMinutePickerView getMinutePicker() {
        return this.mMinutePicker;
    }

    public HmiTextView getTvTimeHour() {
        return this.mTvTimeHour;
    }

    public HmiTextView getTvTimeMinute() {
        return this.mTvTimeMinute;
    }

    public void setTimeHourBeforeText(String timeHourBeforeText) {
        if (TextUtils.isEmpty(timeHourBeforeText)) {
            return;
        }
        this.mTvTimeHourBefore.setText(timeHourBeforeText);
        this.mTvTimeHourBefore.setVisibility(0);
    }

    public void setTimeHourText(String timeHourText) {
        if (TextUtils.isEmpty(timeHourText)) {
            return;
        }
        this.mTvTimeHour.setText(timeHourText);
        this.mTvTimeHour.setVisibility(0);
    }

    public void setTimeMinuteText(String timeMinuteText) {
        if (TextUtils.isEmpty(timeMinuteText)) {
            return;
        }
        this.mTvTimeMinute.setText(timeMinuteText);
        this.mTvTimeMinute.setVisibility(0);
    }

    public void showTimeDivide(boolean showTimeDivide) {
        this.mTvTimeDivide.setVisibility(showTimeDivide ? 0 : 8);
    }

    public void setTextColor(int textColor) {
        this.mHourPicker.setTextColorOut(textColor);
        this.mMinutePicker.setTextColorOut(textColor);
    }

    public void setTextColor(int selectedColorId, int colorId) {
        Log.i("HmiHourMinutePickerView", "onConfigurationChanged: uiMode = " + getResources().getConfiguration().uiMode);
        HmiTextView hmiTextView = this.mTvTimeHourBefore;
        if (hmiTextView != null) {
            hmiTextView.setTextColor(selectedColorId);
        }
        HmiTextView hmiTextView2 = this.mTvTimeHour;
        if (hmiTextView2 != null) {
            hmiTextView2.setTextColor(selectedColorId);
        }
        HmiTextView hmiTextView3 = this.mTvTimeMinute;
        if (hmiTextView3 != null) {
            hmiTextView3.setTextColor(selectedColorId);
        }
        HmiHourPickerView hmiHourPickerView = this.mHourPicker;
        if (hmiHourPickerView != null) {
            hmiHourPickerView.setTextColorCenter(selectedColorId);
            this.mHourPicker.setTextColorOut(colorId);
        }
        HmiMinutePickerView hmiMinutePickerView = this.mMinutePicker;
        if (hmiMinutePickerView != null) {
            hmiMinutePickerView.setTextColorCenter(selectedColorId);
            this.mMinutePicker.setTextColorOut(colorId);
        }
    }

    public void setTextColors(int colorId) {
        setTextColor(colorId, colorId);
    }

    public void setSelectedItemTextColor(int selectedItemTextColor) {
        this.mHourPicker.setTextColorCenter(selectedItemTextColor);
        this.mMinutePicker.setTextColorCenter(selectedItemTextColor);
        this.mTvTimeHour.setTextColor(selectedItemTextColor);
        this.mTvTimeMinute.setTextColor(selectedItemTextColor);
    }

    public void setCyclic(boolean cyclic) {
        this.mHourPicker.setCyclic(cyclic);
        this.mMinutePicker.setCyclic(cyclic);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent ev) {
        int x = (int) ev.getX();
        int y = (int) ev.getY();
        int action = ev.getAction();
        if (action == 0) {
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (action == 2) {
            if (Math.abs(x - this.mLastX) > Math.abs(y - this.mLastY)) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
        }
        this.mLastX = x;
        this.mLastY = y;
        return super.dispatchTouchEvent(ev);
    }

    public void setOnTimeSelectedListener(OnTimeSelectedListener onTimeSelectedListener) {
        this.mOnTimeSelectedListener = onTimeSelectedListener;
    }
}
