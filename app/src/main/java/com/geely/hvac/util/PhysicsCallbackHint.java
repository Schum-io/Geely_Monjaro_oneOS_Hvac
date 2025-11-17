package com.geely.hvac.util;

import android.content.Context;
import android.view.LayoutInflater;
import com.ecarx.xui.adaptapi.policy.Policy;
import com.geely.hvac.GlyAcApp;
import com.geely.hvac.R;
import com.geely.hvac.databinding.LayoutPhysicsCallbackHintBinding;
import com.geely.hvac.utils.Executor;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.utils.ToastUtil;
import com.geely.os.car.GlyCarPropertyValue;
import com.geely.os.policy.IGlyWindowManagerPolicy;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class PhysicsCallbackHint {
    private static final String TAG = "PhysicsCallbackHint";
    private static Map<Integer, Integer> mWindDirectionIconMap;
    private static Map<Integer, Integer> mWindDirectionTxtMap;
    private static int mWindowType;
    private static WeakReference<TemperatureToast> sTemperatureToastWeakReference;

    static {
        String simpleName = PhysicsCallbackHint.class.getSimpleName();
        mWindowType = Policy.create(GlyAcApp.getInstance()).getWindowManagerPolicy().getWindowTypeByCode(IGlyWindowManagerPolicy.CODE_SWIPE_FROM_BOTTOM_VIEW);
        LogUtil.d(simpleName, "Toast static, mWindowType:" + mWindowType);
        mWindDirectionIconMap = new HashMap<Integer, Integer>() { // from class: com.geely.hvac.util.PhysicsCallbackHint.1
            {
                put(Integer.valueOf(GlyCarPropertyValue.BLOWING_ALL), Integer.valueOf(R.mipmap.wind_temperature_toast_all));
                put(Integer.valueOf(GlyCarPropertyValue.BLOWING_MODE_FRONT_WINDOW), Integer.valueOf(R.mipmap.wind_temperature_toast_window));
                put(Integer.valueOf(GlyCarPropertyValue.BLOWING_MODE_FACE), Integer.valueOf(R.mipmap.wind_temperature_toast_face));
                put(Integer.valueOf(GlyCarPropertyValue.BLOWING_MODE_LEG), Integer.valueOf(R.mipmap.wind_temperature_toast_leg));
                put(Integer.valueOf(GlyCarPropertyValue.BLOWING_MODE_FACE_AND_FRONT_WINDOW), Integer.valueOf(R.mipmap.wind_temperature_toast_window_face));
                put(Integer.valueOf(GlyCarPropertyValue.BLOWING_MODE_LEG_AND_FRONT_WINDOW), Integer.valueOf(R.mipmap.wind_temperature_toast_window_leg));
                put(Integer.valueOf(GlyCarPropertyValue.BLOWING_MODE_FACE_AND_LEG), Integer.valueOf(R.mipmap.wind_temperature_toast_face_leg));
            }
        };
        mWindDirectionTxtMap = new HashMap<Integer, Integer>() { // from class: com.geely.hvac.util.PhysicsCallbackHint.2
            {
                put(Integer.valueOf(GlyCarPropertyValue.BLOWING_ALL), Integer.valueOf(R.string.wind_temperature_toast_tv_all));
                put(Integer.valueOf(GlyCarPropertyValue.BLOWING_MODE_FRONT_WINDOW), Integer.valueOf(R.string.wind_temperature_toast_tv_window));
                put(Integer.valueOf(GlyCarPropertyValue.BLOWING_MODE_FACE), Integer.valueOf(R.string.wind_temperature_toast_tv_face));
                put(Integer.valueOf(GlyCarPropertyValue.BLOWING_MODE_LEG), Integer.valueOf(R.string.wind_temperature_toast_tv_leg));
                put(Integer.valueOf(GlyCarPropertyValue.BLOWING_MODE_FACE_AND_FRONT_WINDOW), Integer.valueOf(R.string.wind_temperature_toast_tv_face_window));
                put(Integer.valueOf(GlyCarPropertyValue.BLOWING_MODE_LEG_AND_FRONT_WINDOW), Integer.valueOf(R.string.wind_temperature_toast_tv_leg_window));
                put(Integer.valueOf(GlyCarPropertyValue.BLOWING_MODE_FACE_AND_LEG), Integer.valueOf(R.string.wind_temperature_toast_tv_face_leg));
            }
        };
    }

    public static void showTemperature(Context context) {
        TemperatureToast temperatureToast;
        WeakReference<TemperatureToast> weakReference = sTemperatureToastWeakReference;
        if (weakReference != null && (temperatureToast = weakReference.get()) != null && temperatureToast.isShow()) {
            temperatureToast.resetTimer();
            return;
        }
        TemperatureToast temperatureToast2 = new TemperatureToast(context);
        sTemperatureToastWeakReference = new WeakReference<>(temperatureToast2);
        temperatureToast2.show();
    }

    public static void showWindLevel(final Context context, final boolean isAuto, final int level) {
        LogUtil.d(TAG, "showWindLevel, isAuto:" + isAuto + ",level:" + level);
        Executor.MAIN.post(new Runnable() { // from class: com.geely.hvac.util.-$$Lambda$PhysicsCallbackHint$kHO241youfJsFIb12yNdwl16Wco
            @Override // java.lang.Runnable
            public final void run() {
                PhysicsCallbackHint.lambda$showWindLevel$0(context, isAuto, level);
            }
        });
    }

    static /* synthetic */ void lambda$showWindLevel$0(Context context, boolean z, int i) {
        LayoutPhysicsCallbackHintBinding layoutPhysicsCallbackHintBindingInflate = LayoutPhysicsCallbackHintBinding.inflate(LayoutInflater.from(context));
        layoutPhysicsCallbackHintBindingInflate.icon.setImageResource(z ? R.mipmap.wind_temperature_toast_auto_fan : R.mipmap.wind_temperature_toast_manual_fan);
        if (i == 0) {
            layoutPhysicsCallbackHintBindingInflate.tv.setText(context.getString(R.string.ac_air_close));
        } else {
            layoutPhysicsCallbackHintBindingInflate.tv.setText(context.getString(z ? R.string.wind_temperature_toast_tv_auto_wind : R.string.wind_temperature_toast_tv_manual_wind) + i);
        }
        ToastUtil.show(context, layoutPhysicsCallbackHintBindingInflate.getRoot(), 1, true, 17, 0, 0);
    }

    public static void showWindDirection(final Context context, final int direction) {
        LogUtil.d(TAG, "showWindDirection, direction:" + direction);
        Executor.MAIN.post(new Runnable() { // from class: com.geely.hvac.util.-$$Lambda$PhysicsCallbackHint$ao78AFRBtY0t-3GF9AHp5tynWnw
            @Override // java.lang.Runnable
            public final void run() {
                PhysicsCallbackHint.lambda$showWindDirection$1(context, direction);
            }
        });
    }

    static /* synthetic */ void lambda$showWindDirection$1(Context context, int i) {
        LayoutPhysicsCallbackHintBinding layoutPhysicsCallbackHintBindingInflate = LayoutPhysicsCallbackHintBinding.inflate(LayoutInflater.from(context));
        if (!mWindDirectionIconMap.containsKey(Integer.valueOf(i))) {
            LogUtil.d(TAG, "showWindDirection, not support direction");
            return;
        }
        int iIntValue = mWindDirectionIconMap.getOrDefault(Integer.valueOf(i), 0).intValue();
        if (iIntValue != 0) {
            layoutPhysicsCallbackHintBindingInflate.icon.setImageResource(iIntValue);
        }
        int iIntValue2 = mWindDirectionTxtMap.getOrDefault(Integer.valueOf(i), 0).intValue();
        if (iIntValue2 != 0) {
            layoutPhysicsCallbackHintBindingInflate.tv.setText(context.getString(iIntValue2));
        }
        ToastUtil.show(context, layoutPhysicsCallbackHintBindingInflate.getRoot(), 1, true, 17, 0, 0);
    }
}
