package com.geely.hvac.activity;

import android.content.Context;
import android.os.Bundle;
import android.view.MotionEvent;
import com.geely.hvac.dialog.BaseDialog;
import com.geely.hvac.utils.Executor;
import com.geely.hvac.utils.LogUtil;

/* loaded from: classes.dex */
public class BaseAutoHideDialog extends BaseDialog {
    private static final String TAG = "BaseAutoHideDialog";
    private final Runnable mHideRunnable;

    public BaseAutoHideDialog(Context context) {
        super(context);
        this.mHideRunnable = this::run;
    }

    @Override // com.geely.hvac.dialog.BaseDialog, android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        resetHideRunnable();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        resetHideRunnable();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        Executor.MAIN.removeCallbacks(this.mHideRunnable);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Executor.MAIN.removeCallbacks(this.mHideRunnable);
    }

    protected void resetHideRunnable() {
        LogUtil.i(TAG, "resetHideRunnable");
        Executor.MAIN.removeCallbacks(this.mHideRunnable);
        Executor.MAIN.postDelayed(this.mHideRunnable, 10000L);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent ev) {
        int action = ev.getAction();
        if (action == 0) {
            LogUtil.d(TAG, "ACTION_DOWN");
            Executor.MAIN.removeCallbacks(this.mHideRunnable);
        } else if (action == 1) {
            LogUtil.d(TAG, "ACTION_UP");
            resetHideRunnable();
        }
        return super.dispatchTouchEvent(ev);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void run() {
        LogUtil.i(TAG, "hide runnable execute");
        dismiss();
        Executor.MAIN.removeCallbacks(this.mHideRunnable);
    }
}
