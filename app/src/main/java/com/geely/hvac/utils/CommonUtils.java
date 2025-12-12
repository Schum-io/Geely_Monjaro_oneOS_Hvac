package com.geely.hvac.utils;

import android.content.Context;
import android.provider.Settings;
import com.geely.lib.oneosapi.user.bean.LoginType;

/* loaded from: classes.dex */
public class CommonUtils {
    private static final String TAG = "CommonUtils";

    public static boolean isFX11() {
        return false;
    }

    public static boolean isG636() {
        return false;
    }

    public static boolean isG733() {
        return false;
    }

    public static boolean isKX11_A2() {
        return true;
    }

    public static boolean isShowAnim(Context context) {
        int i = Settings.Global.getInt(context.getContentResolver(), "show_settings_anim", 0);
        LogUtil.d(TAG, "show_settings_anim = " + i);
        return i != 0;
    }

    public static boolean isFX11A1() throws ClassNotFoundException {
        String str = LoginType.PASSWORD;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            str = (String) cls.getMethod("get", String.class, String.class).invoke(cls, "persist.vendor.ecarx.cfg.cc.year.edition", LoginType.PASSWORD);
        } catch (Exception e) {
            e.printStackTrace();
        }
        LogUtil.i(TAG, "isFX11A1():value=" + str);
        return "131".equals(str) && isFX11();
    }
}
