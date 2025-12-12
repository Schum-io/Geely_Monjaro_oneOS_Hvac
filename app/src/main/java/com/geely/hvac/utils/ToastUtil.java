package com.geely.hvac.utils;

import android.content.Context;
import android.view.View;
import android.widget.Toast;
import com.geely.lib.oneosapi.navi.model.base.NaviResultCode;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class ToastUtil {
    private static final String TAG = "ToastUtil";
    private static Toast mToastRef;
    private static Runnable mToastRefResetRunnable = new Runnable() { // from class: com.geely.hvac.utils.ToastUtil.1
        @Override // java.lang.Runnable
        public void run() {
            Toast unused = ToastUtil.mToastRef = null;
        }
    };
    private static WeakReference<com.geely.hvac.component.Toast> mToastTimeRef;
    private static ToastUtilViewCreate sToastUtilViewCreate;

    public static void setToastUtilViewCreate(ToastUtilViewCreate toastUtilViewCreate) {
        sToastUtilViewCreate = toastUtilViewCreate;
    }

    public static void showTime(Context context, int resId) {
        showTime(context, resId, NaviResultCode.RESULT_OK);
    }

    public static void showTime(Context context, int resId, int duration) {
        showTime(context, context.getResources().getString(resId), duration, true);
    }

    public static void showTime(Context context, String msg, int duration, boolean cancelOld) {
        com.geely.hvac.component.Toast toast;
        LogUtil.d(TAG, "showTime, msg:" + msg + ",duration:" + duration + ",cancelOld:" + cancelOld);
        WeakReference<com.geely.hvac.component.Toast> weakReference = mToastTimeRef;
        if (weakReference != null && (toast = weakReference.get()) != null && cancelOld) {
            try {
                toast.cancel();
            } catch (Exception e) {
                LogUtil.d(TAG, "cancel toast fail");
                e.printStackTrace();
            }
        }
        com.geely.hvac.component.Toast toast2 = new com.geely.hvac.component.Toast(context);
        mToastTimeRef = new WeakReference<>(toast2);
        ToastUtilViewCreate toastUtilViewCreate = sToastUtilViewCreate;
        if (toastUtilViewCreate != null) {
            toastUtilViewCreate.onTimeToast(context, toast2, msg);
        }
        toast2.setDuration(duration);
        toast2.show();
    }

    public static void show(Context context, int resId) {
        show(context, resId, 1);
    }

    public static void show(Context context, String msg, int duration) {
        show(context, msg, duration, true);
    }

    public static void show(Context context, int resId, int duration) {
        show(context, context.getResources().getString(resId), duration, true);
    }

    public static void show(Context context, String msg, int duration, boolean cancelOld) {
        Toast toast = mToastRef;
        if (toast != null && cancelOld) {
            try {
                toast.cancel();
            } catch (Exception e) {
                LogUtil.d(TAG, "cancel toast fail");
                e.printStackTrace();
            }
        }
        Executor.MAIN.removeCallbacks(mToastRefResetRunnable);
        Toast toast2 = new Toast(context);
        mToastRef = toast2;
        ToastUtilViewCreate toastUtilViewCreate = sToastUtilViewCreate;
        if (toastUtilViewCreate != null) {
            toastUtilViewCreate.onToast(context, toast2, msg);
        }
        toast2.setDuration(duration);
        toast2.show();
        Executor.MAIN.postDelayed(mToastRefResetRunnable, 5000L);
    }

    public static void show(Context context, View view, int duration, boolean cancelOld, int gravity, int xOffset, int yOffset) {
        LogUtil.d(TAG, "show, duration:" + duration + ",cancelOld:" + cancelOld);
        Toast toast = mToastRef;
        if (toast != null && cancelOld) {
            try {
                toast.cancel();
            } catch (Exception e) {
                LogUtil.d(TAG, "cancel toast fail");
                e.printStackTrace();
            }
        }
        Executor.MAIN.removeCallbacks(mToastRefResetRunnable);
        Toast toast2 = new Toast(context);
        mToastRef = toast2;
        toast2.setView(view);
        toast2.setGravity(gravity, xOffset, yOffset);
        toast2.setDuration(duration);
        toast2.show();
        Executor.MAIN.postDelayed(mToastRefResetRunnable, 5000L);
    }
}
