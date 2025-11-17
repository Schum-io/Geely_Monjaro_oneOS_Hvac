package com.geely.toolchain.hmi.dialog;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* loaded from: classes.dex */
public abstract class AbstractHmiLastMsgHandler extends Handler {
    private int count;

    protected abstract void handleLastMessage(Message msg);

    public AbstractHmiLastMsgHandler(Looper looper) {
        super(looper);
        this.count = 0;
    }

    public final synchronized void increaseCount() {
        this.count++;
    }

    public final void sendMsg() {
        sendMsgDelayed(0L);
    }

    public final void sendMsgDelayed(long delay) {
        increaseCount();
        if (delay <= 0) {
            sendEmptyMessage(0);
        } else {
            sendEmptyMessageDelayed(0, delay);
        }
    }

    public final synchronized void clearAll() {
        this.count = 0;
        removeCallbacksAndMessages(null);
    }

    @Override // android.os.Handler
    public final synchronized void handleMessage(Message msg) {
        super.handleMessage(msg);
        int i = this.count - 1;
        this.count = i;
        if (i < 0) {
            throw new IllegalStateException("count数异常");
        }
        if (i == 0) {
            handleLastMessage(msg);
        }
    }
}
