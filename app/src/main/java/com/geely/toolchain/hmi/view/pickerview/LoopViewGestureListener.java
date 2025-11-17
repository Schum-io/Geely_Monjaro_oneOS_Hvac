package com.geely.toolchain.hmi.view.pickerview;

import android.view.GestureDetector;
import android.view.MotionEvent;

/* loaded from: classes.dex */
public final class LoopViewGestureListener extends GestureDetector.SimpleOnGestureListener {
    private final HmiWheelView wheelView;

    public LoopViewGestureListener(HmiWheelView wheelView) {
        this.wheelView = wheelView;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX, float velocityY) {
        this.wheelView.scrollBy(velocityY);
        return true;
    }
}
