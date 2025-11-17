package com.geely.toolchain.hmi.view.pickerview;

import android.content.Context;
import android.util.AttributeSet;
import com.geely.toolchain.hmi.view.pickerview.HmiWheelView;

/* loaded from: classes.dex */
public class HmiMinutePickerView extends HmiWheelView {
    private OnMinuteSelectedListener mOnMinuteSelectedListener;

    public interface OnMinuteSelectedListener {
        void onMinuteSelected(int minute);
    }

    public HmiMinutePickerView(Context context) {
        this(context, null);
    }

    public HmiMinutePickerView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public HmiMinutePickerView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        updateMinute();
        setOnItemSelectedListener(new OnItemSelectedListener() {
            @Override // com.geely.toolchain.hmi.view.pickerview.HmiWheelView.OnItemSelectedListener
            public final void onItemSelected(int i) {
                HmiMinutePickerView.this.lambda$new$0$HmiMinutePickerView(i);
            }
        });
    }

    public /* synthetic */ void lambda$new$0$HmiMinutePickerView(int i) {
        OnMinuteSelectedListener onMinuteSelectedListener = this.mOnMinuteSelectedListener;
        if (onMinuteSelectedListener != null) {
            onMinuteSelectedListener.onMinuteSelected(i);
        }
    }

    private void updateMinute() {
        setAdapter(new NumericWheelAdapter(0, 59));
    }

    public void setOnMinuteSelectedListener(OnMinuteSelectedListener onMinuteSelectedListener) {
        this.mOnMinuteSelectedListener = onMinuteSelectedListener;
    }
}
