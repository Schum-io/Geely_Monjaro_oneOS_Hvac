package com.geely.hvac.activity;

import android.view.MotionEvent;
import com.geely.hvac.utils.Executor;
import com.geely.hvac.utils.LogUtil;

/* loaded from: classes.dex */
public abstract class AutoHideActivity extends BaseActivity {
    private boolean mAutoHide = true;
    private long mOpenTime = 10000;
    private final Runnable mHideRunnable = this::runHideAction;

    protected abstract void onAutoHide();

    private void runHideAction() {
        LogUtil.d(this.TAG, "hide runnable execute");
        LogUtil.d(this.TAG, "moveTaskToBack");
        if (this.mAutoHide) {
            LogUtil.d(this.TAG, "hide");
            onAutoHide();
        } else {
            LogUtil.d(this.TAG, "not hide");
        }
    }

    public void setAutoHide(boolean autoHide) {
        LogUtil.i(this.TAG, "setAutoHide, autoHide:" + autoHide);
        this.mAutoHide = autoHide;
    }

    public void setOpenTime(long openTime) {
        this.mOpenTime = openTime;
    }

    protected void resetHideRunnable() {
        LogUtil.d(this.TAG, "resetHideRunnable");
        Executor.MAIN.removeCallbacks(this.mHideRunnable);
        Executor.MAIN.postDelayed(this.mHideRunnable, this.mOpenTime);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        LogUtil.d(this.TAG, "onResume");
        resetHideRunnable();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent ev) {
        int action = ev.getAction();
        if (action == 0) {
            LogUtil.d(this.TAG, "ACTION_DOWN");
            Executor.MAIN.removeCallbacks(this.mHideRunnable);
        } else if (action == 1) {
            LogUtil.d(this.TAG, "ACTION_UP");
            resetHideRunnable();
        }
        return super.dispatchTouchEvent(ev);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        LogUtil.d(this.TAG, "onPause");
        Executor.MAIN.removeCallbacks(this.mHideRunnable);
    }
}
