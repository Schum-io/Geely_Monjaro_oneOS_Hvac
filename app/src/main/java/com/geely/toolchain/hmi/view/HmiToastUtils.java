package com.geely.toolchain.hmi.view;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.geely.toolchain.hmi.R;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class HmiToastUtils {
    private static final String TAG = "HmiToastUtils";
    private static final long TOAST_MIN_TIME = 2000;
    private static long mCurrentTime;
    private static WeakReference<Toast> mToastRef;

    public static void showTopShortTime(Context context, String msg) throws Resources.NotFoundException {
        showGravity(context, msg, 0, 49, true, true);
    }

    public static void showTopLongTime(Context context, String msg) throws Resources.NotFoundException {
        showGravity(context, msg, 1, 49, true, true);
    }

    public static void showTopShortTime(View view) throws Resources.NotFoundException {
        showView(view, 0, 49, true, true);
    }

    public static void showTopLongTime(View view) throws Resources.NotFoundException {
        showView(view, 1, 49, true, true);
    }

    public static void showTopLongTime(Context context, int resId) {
        showView(context, resId, 1, 49, true, true);
    }

    public static void showTopShortTime(Context context, int resId) {
        showView(context, resId, 0, 49, true, true);
    }

    public static void showBottomShortTime(View view) throws Resources.NotFoundException {
        showView(view, 0, 81, false, true);
    }

    public static void showBottomLongTime(View view) throws Resources.NotFoundException {
        showView(view, 1, 81, false, true);
    }

    public static void showBottomShortTime(Context context, int resId) {
        showView(context, resId, 0, 81, false, true);
    }

    public static void showBottomLongTime(Context context, int resId) {
        showView(context, resId, 1, 81, false, true);
    }

    public static void showBottomShortTime(Context context, String msg) throws Resources.NotFoundException {
        showGravity(context, msg, 0, 81, false, true);
    }

    public static void showBottomLongTime(Context context, String msg) throws Resources.NotFoundException {
        showGravity(context, msg, 1, 81, false, true);
    }

    public static void showTopShortTimeNoDelay(View view) throws Resources.NotFoundException {
        showView(view, 0, 49, true, false);
    }

    public static void showTopLongTimeNoDelay(View view) throws Resources.NotFoundException {
        showView(view, 1, 49, true, false);
    }

    public static void showTopLongTimeNoDelay(Context context, int resId) {
        showView(context, resId, 1, 49, true, false);
    }

    public static void showTopShortTimeNoDelay(Context context, int resId) {
        showView(context, resId, 0, 49, true, false);
    }

    public static void showBottomShortTimeNoDelay(View view) throws Resources.NotFoundException {
        showView(view, 0, 81, false, false);
    }

    public static void showBottomLongTimeNoDelay(View view) throws Resources.NotFoundException {
        showView(view, 1, 81, false, false);
    }

    public static void showBottomShortTimeNoDelay(Context context, int resId) {
        showView(context, resId, 0, 81, false, false);
    }

    public static void showBottomLongTimeNoDelay(Context context, int resId) {
        showView(context, resId, 1, 81, false, false);
    }

    public static void showBottomShortTimeNoDelay(Context context, String msg) throws Resources.NotFoundException {
        showGravity(context, msg, 0, 81, false, false);
    }

    public static void showBottomLongTimeNoDelay(Context context, String msg) throws Resources.NotFoundException {
        showGravity(context, msg, 1, 81, false, false);
    }

    public static void showTopShortTimeNoDelay(Context context, String msg) throws Resources.NotFoundException {
        showGravity(context, msg, 0, 49, true, false);
    }

    public static void showTopLongTimeNoDelay(Context context, String msg) throws Resources.NotFoundException {
        showGravity(context, msg, 1, 49, true, false);
    }

    private static void showGravity(Context context, String msg, int duration, int gravity, boolean isTop, boolean isTimeOut) throws Resources.NotFoundException {
        float dimension = context.getResources().getDimension(R.dimen.oneoshmi_toast_bottom_elevation);
        float dimension2 = context.getResources().getDimension(R.dimen.oneoshmi_toast_margin_Bottom);
        if (isTop) {
            dimension2 = context.getResources().getDimension(R.dimen.oneoshmi_toast_margin_Top);
            dimension = context.getResources().getDimension(R.dimen.oneoshmi_toast_elevation);
        }
        showGravityLocation(context, msg, duration, gravity, dimension2, dimension, isTimeOut);
    }

    private static void showView(View view, int duration, int gravity, boolean isTop, boolean isTimeOut) throws Resources.NotFoundException {
        float dimension = view.getContext().getResources().getDimension(R.dimen.oneoshmi_toast_bottom_elevation);
        float dimension2 = view.getContext().getResources().getDimension(R.dimen.oneoshmi_toast_margin_Bottom);
        if (isTop) {
            dimension2 = view.getContext().getResources().getDimension(R.dimen.oneoshmi_toast_margin_Top);
            dimension = view.getContext().getResources().getDimension(R.dimen.oneoshmi_toast_elevation);
        }
        showGravityLocation(view, duration, gravity, dimension2, dimension, isTimeOut);
    }

    private static void showView(Context context, int resId, int duration, int gravity, boolean isTop, boolean isTimeOut) {
        try {
            showView(LayoutInflater.from(context).inflate(resId, (ViewGroup) null, false), duration, gravity, isTop, isTimeOut);
        } catch (Exception e) {
            Log.d(TAG, "notfindResid:" + e.getMessage());
        }
    }

    private static void showGravityLocation(View view, int duration, int gravity, float yOffset, float elevation, boolean isTimeOut) {
        Toast toast;
        if (!isTimeOut || System.currentTimeMillis() - mCurrentTime >= 2000) {
            if (view == null) {
                Log.d(TAG, "view ==null");
                return;
            }
            WeakReference<Toast> weakReference = mToastRef;
            if (weakReference != null && (toast = weakReference.get()) != null) {
                try {
                    toast.cancel();
                } catch (Exception e) {
                    Log.d(TAG, "cancel toast fail");
                    e.printStackTrace();
                }
            }
            View viewInflate = LayoutInflater.from(view.getContext()).inflate(R.layout.hmi_layout_toast, (ViewGroup) null);
            TextView textView = (TextView) viewInflate.findViewById(R.id.toast_tv);
            RelativeLayout relativeLayout = (RelativeLayout) viewInflate.findViewById(R.id.view_root_fl);
            ((HmiShadowLayerBlurView) viewInflate.findViewById(R.id.shadowView)).setElevation(elevation);
            textView.setVisibility(8);
            relativeLayout.setVisibility(0);
            relativeLayout.addView(view);
            Toast toast2 = new Toast(view.getContext());
            mToastRef = new WeakReference<>(toast2);
            toast2.setView(viewInflate);
            toast2.setGravity(gravity, (int) view.getContext().getResources().getDimension(R.dimen.oneoshmi_toast_margin_left), (int) yOffset);
            toast2.setDuration(duration);
            toast2.show();
            mCurrentTime = System.currentTimeMillis();
        }
    }

    private static void showGravityLocation(Context context, String msg, int duration, int gravity, float yOffset, float elevation, boolean isTimeOut) {
        Toast toast;
        if (!isTimeOut || System.currentTimeMillis() - mCurrentTime >= 2000) {
            if (context == null || TextUtils.isEmpty(msg)) {
                Log.d(TAG, "context ==null");
                return;
            }
            WeakReference<Toast> weakReference = mToastRef;
            if (weakReference != null && (toast = weakReference.get()) != null) {
                try {
                    toast.cancel();
                } catch (Exception e) {
                    Log.d(TAG, "cancel toast fail");
                    e.printStackTrace();
                }
            }
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.hmi_layout_toast, (ViewGroup) null);
            TextView textView = (TextView) viewInflate.findViewById(R.id.toast_tv);
            RelativeLayout relativeLayout = (RelativeLayout) viewInflate.findViewById(R.id.view_root_fl);
            ((HmiShadowLayerBlurView) viewInflate.findViewById(R.id.shadowView)).setElevation(elevation);
            textView.setVisibility(0);
            relativeLayout.setVisibility(8);
            textView.setText(msg);
            Toast toast2 = new Toast(context);
            mToastRef = new WeakReference<>(toast2);
            toast2.setView(viewInflate);
            toast2.setGravity(gravity, (int) context.getResources().getDimension(R.dimen.oneoshmi_toast_margin_left), (int) yOffset);
            toast2.setDuration(duration);
            toast2.show();
            mCurrentTime = System.currentTimeMillis();
        }
    }
}
