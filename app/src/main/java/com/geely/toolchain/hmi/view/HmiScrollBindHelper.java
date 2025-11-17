package com.geely.toolchain.hmi.view;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.View;
import com.geely.toolchain.hmi.dialog.AbstractHmiLastMsgHandler;
import com.geely.toolchain.hmi.view.HmiDialogDampScrollView;
import com.geely.toolchain.hmi.view.HmiVerticalSeekbar;

/* loaded from: classes.dex */
public class HmiScrollBindHelper implements HmiVerticalSeekbar.OnSeekBarChangeListener, HmiDialogDampScrollView.ScrollViewListener {
    public static final long DEFAULT_TIME_OUT = 2000;
    private static final String TAG = "HmiScrollBindHelper";
    private static HmiScrollBindHelper helper;
    private VisibleHandler handler = new VisibleHandler(this);
    private boolean isUserSeeking;
    int process;
    private final View scrollContent;
    private final HmiDialogDampScrollView scrollView;
    private final HmiVerticalSeekbar seekBar;

    private HmiScrollBindHelper(HmiVerticalSeekbar seekBar, HmiDialogDampScrollView scrollView) {
        this.seekBar = seekBar;
        this.scrollView = scrollView;
        this.scrollContent = scrollView.getChildAt(0);
    }

    public static HmiScrollBindHelper bind(HmiVerticalSeekbar seekBar, HmiDialogDampScrollView scrollView) {
        HmiScrollBindHelper hmiScrollBindHelper = new HmiScrollBindHelper(seekBar, scrollView);
        helper = hmiScrollBindHelper;
        seekBar.setOnSeekBarChangeListener(hmiScrollBindHelper);
        scrollView.setScrollViewListener(helper);
        return helper;
    }

    private int getContentRange() {
        return this.scrollContent.getHeight();
    }

    private int getScrollRange() {
        return this.scrollContent.getHeight() - this.scrollView.getHeight();
    }

    @Override // com.geely.toolchain.hmi.view.HmiVerticalSeekbar.OnSeekBarChangeListener
    public void onProgressChanged(HmiVerticalSeekbar seekbar, int progress) {
        Log.d(TAG, "onProgressChanged  progress-> " + progress);
        if (!this.isUserSeeking) {
            this.handler.reset();
        }
        this.scrollView.scrollTo(0, (progress * getScrollRange()) / 100);
    }

    @Override // com.geely.toolchain.hmi.view.HmiVerticalSeekbar.OnSeekBarChangeListener
    public void onStartTrackingTouch(HmiVerticalSeekbar seekbar) {
        this.isUserSeeking = true;
        this.handler.clearAll();
    }

    @Override // com.geely.toolchain.hmi.view.HmiVerticalSeekbar.OnSeekBarChangeListener
    public void onStopTrackingTouch(HmiVerticalSeekbar seekbar) {
        this.isUserSeeking = false;
        this.handler.reset();
    }

    @Override // com.geely.toolchain.hmi.view.HmiDialogDampScrollView.ScrollViewListener
    public void onScrollChanged(HmiDialogDampScrollView scrollView, int x, int y, int oldx, int oldy) {
        if (this.isUserSeeking) {
            return;
        }
        showScroll();
        int scrollRange = getScrollRange() != 0 ? (y * 100) / getScrollRange() : 0;
        Log.d(TAG, "seekBar onProgressChanged: " + scrollRange);
        this.seekBar.setProgress(scrollRange);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideScroll() {
        this.seekBar.setVisibility(8);
    }

    private void showScroll() {
        this.seekBar.setVisibility(0);
    }

    private static class VisibleHandler extends AbstractHmiLastMsgHandler {
        private HmiScrollBindHelper helper;

        public VisibleHandler(HmiScrollBindHelper helper) {
            super(Looper.getMainLooper());
            this.helper = helper;
        }

        public void reset() {
            sendMsgDelayed(2000L);
        }

        @Override // com.geely.toolchain.hmi.dialog.AbstractHmiLastMsgHandler
        protected void handleLastMessage(Message msg) {
            this.helper.hideScroll();
        }
    }
}
