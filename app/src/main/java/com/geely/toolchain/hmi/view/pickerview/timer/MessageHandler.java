package com.geely.toolchain.hmi.view.pickerview.timer;

import android.os.Handler;
import android.os.Message;
import com.geely.toolchain.hmi.view.pickerview.HmiWheelView;

/* loaded from: classes.dex */
public final class MessageHandler extends Handler {
    public static final int WHAT_INVALIDATE_LOOP_VIEW = 1000;
    public static final int WHAT_ITEM_SELECTED = 3000;
    public static final int WHAT_SMOOTH_SCROLL = 2000;
    private final HmiWheelView wheelView;

    public MessageHandler(HmiWheelView wheelView) {
        this.wheelView = wheelView;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message msg) {
        int i = msg.what;
        if (i == 1000) {
            this.wheelView.invalidate();
        } else if (i == 2000) {
            this.wheelView.smoothScroll(HmiWheelView.ACTION.FLING);
        } else {
            if (i != 3000) {
                return;
            }
            this.wheelView.onItemSelected();
        }
    }
}
