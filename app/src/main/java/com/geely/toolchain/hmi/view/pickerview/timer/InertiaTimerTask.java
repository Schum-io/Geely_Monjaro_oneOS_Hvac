package com.geely.toolchain.hmi.view.pickerview.timer;

import com.geely.toolchain.hmi.view.pickerview.HmiWheelView;
import java.util.TimerTask;

/* loaded from: classes.dex */
public final class InertiaTimerTask extends TimerTask {
    private float mCurrentVelocityY = 2.1474836E9f;
    private final float mFirstVelocityY;
    private final HmiWheelView mWheelView;

    public InertiaTimerTask(HmiWheelView wheelView, float velocityY) {
        this.mWheelView = wheelView;
        this.mFirstVelocityY = velocityY;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        if (this.mCurrentVelocityY == 2.1474836E9f) {
            if (Math.abs(this.mFirstVelocityY) > 2000.0f) {
                this.mCurrentVelocityY = this.mFirstVelocityY <= 0.0f ? -2000.0f : 2000.0f;
            } else {
                this.mCurrentVelocityY = this.mFirstVelocityY;
            }
        }
        if (Math.abs(this.mCurrentVelocityY) >= 0.0f && Math.abs(this.mCurrentVelocityY) <= 20.0f) {
            this.mWheelView.cancelFuture();
            this.mWheelView.getHandler().sendEmptyMessage(2000);
            return;
        }
        int i = (int) (this.mCurrentVelocityY / 100.0f);
        HmiWheelView hmiWheelView = this.mWheelView;
        float f = i;
        hmiWheelView.setTotalScrollY(hmiWheelView.getTotalScrollY() - f);
        if (!this.mWheelView.isLoop()) {
            float itemHeight = this.mWheelView.getItemHeight();
            float totalScrollY = (-this.mWheelView.getInitPosition()) * itemHeight;
            float itemsCount = ((this.mWheelView.getItemsCount() - 1) - this.mWheelView.getInitPosition()) * itemHeight;
            double d = itemHeight * 0.25d;
            if (this.mWheelView.getTotalScrollY() - d < totalScrollY) {
                totalScrollY = this.mWheelView.getTotalScrollY() + f;
            } else if (this.mWheelView.getTotalScrollY() + d > itemsCount) {
                itemsCount = this.mWheelView.getTotalScrollY() + f;
            }
            if (this.mWheelView.getTotalScrollY() <= totalScrollY) {
                this.mCurrentVelocityY = 40.0f;
                this.mWheelView.setTotalScrollY((int) totalScrollY);
            } else if (this.mWheelView.getTotalScrollY() >= itemsCount) {
                this.mWheelView.setTotalScrollY((int) itemsCount);
                this.mCurrentVelocityY = -40.0f;
            }
        }
        float f2 = this.mCurrentVelocityY;
        if (f2 < 0.0f) {
            this.mCurrentVelocityY = f2 + 20.0f;
        } else {
            this.mCurrentVelocityY = f2 - 20.0f;
        }
        this.mWheelView.getHandler().sendEmptyMessage(1000);
    }
}
