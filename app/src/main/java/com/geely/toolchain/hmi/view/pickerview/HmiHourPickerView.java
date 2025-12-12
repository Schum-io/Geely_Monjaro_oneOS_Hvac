package com.geely.toolchain.hmi.view.pickerview;

import android.content.Context;
import android.util.AttributeSet;
import com.geely.toolchain.hmi.view.pickerview.HmiWheelView;

/* loaded from: classes.dex */
public class HmiHourPickerView extends HmiWheelView {
    private OnHourSelectedListener mOnHourSelectedListener;

    public interface OnHourSelectedListener {
        void onHourSelected(int hour);
    }

    public HmiHourPickerView(Context context) {
        this(context, null);
    }

    public HmiHourPickerView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public HmiHourPickerView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        updateHour();
        setOnItemSelectedListener(new OnItemSelectedListener() {
            @Override // com.geely.toolchain.hmi.view.pickerview.HmiWheelView.OnItemSelectedListener
            public final void onItemSelected(int i) {
                HmiHourPickerView.this.lambda$new$0$HmiHourPickerView(i);
            }
        });
    }

    public /* synthetic */ void lambda$new$0$HmiHourPickerView(int i) {
        OnHourSelectedListener onHourSelectedListener = this.mOnHourSelectedListener;
        if (onHourSelectedListener != null) {
            onHourSelectedListener.onHourSelected(i);
        }
    }

    private void updateHour() {
        setAdapter(new NumericWheelAdapter(0, 23));
    }

    public void setOnHourSelectedListener(OnHourSelectedListener onHourSelectedListener) {
        this.mOnHourSelectedListener = onHourSelectedListener;
    }
}
