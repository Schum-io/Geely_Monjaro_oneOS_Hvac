package com.geely.hvac.component;

import android.widget.SeekBar;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class SeekBarBindingAdapter {
    public static void bind(SeekBar seekBar, SeekBar.OnSeekBarChangeListener listener) {
        seekBar.setOnSeekBarChangeListener(listener);
    }

    public static abstract class OnSeekBarChangeListenerImp implements SeekBar.OnSeekBarChangeListener {
        private boolean mFromUser;
        private int mProgress = -1;

        public abstract void onDragEnd(SeekBar seekBar, int progress, boolean fromUser);

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
            this.mProgress = progress;
            this.mFromUser = fromUser;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            int i = this.mProgress;
            if (i >= 0) {
                onDragEnd(seekBar, i, this.mFromUser);
            }
            this.mProgress = -1;
            this.mFromUser = false;
            SensorsDataAutoTrackHelper.trackViewOnClick(seekBar);
        }
    }
}
