package com.geely.toolchain.hmi.linkage;

import android.view.View;
import android.widget.SeekBar;
import com.geely.toolchain.hmi.view.HmiDampScrollView;
import com.geely.toolchain.hmi.view.HmiVerticalSeekbar;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class HmiScrollBindControl {
    private boolean mIsSeeking;
    private final View.OnScrollChangeListener mOnScrollChangeListener;
    private final SeekBar.OnSeekBarChangeListener mOnSeekBarChangeListener;
    private final View mScrollContent;
    private final HmiDampScrollView mScrollView;
    private final HmiVerticalSeekbar mSeekBar;

    public HmiScrollBindControl(HmiVerticalSeekbar seekBar, HmiDampScrollView scrollView) {
        View.OnScrollChangeListener onScrollChangeListener = new View.OnScrollChangeListener() { // from class: com.geely.toolchain.hmi.linkage.HmiScrollBindControl.1
            @Override // android.view.View.OnScrollChangeListener
            public void onScrollChange(View view, int x, int y, int i2, int i3) {
                HmiScrollBindControl.this.showScroll();
                if (HmiScrollBindControl.this.mIsSeeking) {
                    return;
                }
                HmiScrollBindControl.this.mSeekBar.setProgress(HmiScrollBindControl.this.getContentRange());
            }
        };
        this.mOnScrollChangeListener = onScrollChangeListener;
        SeekBar.OnSeekBarChangeListener onSeekBarChangeListener = new SeekBar.OnSeekBarChangeListener() { // from class: com.geely.toolchain.hmi.linkage.HmiScrollBindControl.2
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar2, int progress, boolean fromUser) {
                if (fromUser) {
                    return;
                }
                HmiScrollBindControl.this.mScrollView.scrollTo(0, progress);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar2) {
                HmiScrollBindControl.this.mIsSeeking = true;
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar2) {
                HmiScrollBindControl.this.mIsSeeking = false;
                SensorsDataAutoTrackHelper.trackViewOnClick(seekBar2);
            }
        };
        this.mOnSeekBarChangeListener = onSeekBarChangeListener;
        this.mSeekBar = seekBar;
        this.mScrollView = scrollView;
        this.mScrollContent = scrollView.getChildAt(0);
        seekBar.setOnSeekBarChangeListener(onSeekBarChangeListener);
        scrollView.setOnScrollChangeListener(onScrollChangeListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getContentRange() {
        this.mSeekBar.setMax(getScrollRange());
        return this.mScrollView.getScrollY();
    }

    private int getScrollRange() {
        return this.mScrollContent.getHeight() - this.mScrollView.getHeight();
    }

    public static HmiScrollBindControl bind(HmiVerticalSeekbar seekBar, HmiDampScrollView scrollView) {
        return new HmiScrollBindControl(seekBar, scrollView);
    }

    public void hideScroll() {
        this.mSeekBar.setVisibility(8);
    }

    public void showScroll() {
        this.mSeekBar.setVisibility(0);
    }
}
