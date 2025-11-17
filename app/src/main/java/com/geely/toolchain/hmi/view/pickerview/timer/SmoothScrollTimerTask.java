package com.geely.toolchain.hmi.view.pickerview.timer;

import androidx.appcompat.widget.ActivityChooserView;
import com.geely.toolchain.hmi.view.pickerview.HmiWheelView;
import java.util.TimerTask;

/* loaded from: classes.dex */
public final class SmoothScrollTimerTask extends TimerTask {
    private int offset;
    private final HmiWheelView wheelView;
    private int realTotalOffset = Integer.MAX_VALUE;
    private int realOffset = 0;

    public SmoothScrollTimerTask(HmiWheelView wheelView, int offset) {
        this.wheelView = wheelView;
        this.offset = offset;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        if (this.realTotalOffset == Integer.MAX_VALUE) {
            this.realTotalOffset = this.offset;
        }
        int i = this.realTotalOffset;
        int i2 = (int) (i * 0.1f);
        this.realOffset = i2;
        if (i2 == 0) {
            if (i < 0) {
                this.realOffset = -1;
            } else {
                this.realOffset = 1;
            }
        }
        if (Math.abs(i) <= 1) {
            this.wheelView.cancelFuture();
            this.wheelView.getHandler().sendEmptyMessage(3000);
            return;
        }
        HmiWheelView hmiWheelView = this.wheelView;
        hmiWheelView.setTotalScrollY(hmiWheelView.getTotalScrollY() + this.realOffset);
        if (!this.wheelView.isLoop()) {
            float itemHeight = this.wheelView.getItemHeight();
            float itemsCount = ((this.wheelView.getItemsCount() - 1) - this.wheelView.getInitPosition()) * itemHeight;
            if (this.wheelView.getTotalScrollY() <= (-this.wheelView.getInitPosition()) * itemHeight || this.wheelView.getTotalScrollY() >= itemsCount) {
                HmiWheelView hmiWheelView2 = this.wheelView;
                hmiWheelView2.setTotalScrollY(hmiWheelView2.getTotalScrollY() - this.realOffset);
                this.wheelView.cancelFuture();
                this.wheelView.getHandler().sendEmptyMessage(3000);
                return;
            }
        }
        this.wheelView.getHandler().sendEmptyMessage(1000);
        this.realTotalOffset -= this.realOffset;
    }
}
