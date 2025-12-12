package com.geely.hvac.utils;

import android.content.SharedPreferences;
import com.geely.hvac.GlyAcApp;

/* loaded from: classes.dex */
public class SpUtils {
    public static final String PREF_NAME = "hvac_other_data";

    private static SharedPreferences getSharedPreferences() {
        return GlyAcApp.getInstance().getSharedPreferences(PREF_NAME, 0);
    }

    public static String getString(String key) {
        return getSharedPreferences().getString(key, "");
    }

    public static String getString(String key, String defValue) {
        return getSharedPreferences().getString(key, defValue);
    }

    public static void setString(String key, String value) {
        getSharedPreferences().edit().putString(key, value).apply();
    }

    public static boolean getBoolean(String key, boolean defValue) {
        return getSharedPreferences().getBoolean(key, defValue);
    }

    public static void setBoolean(String key, boolean value) {
        getSharedPreferences().edit().putBoolean(key, value).apply();
    }

    public static long getLong(String key) {
        return getSharedPreferences().getLong(key, 0L);
    }

    public static long getLong(String key, long defValue) {
        return getSharedPreferences().getLong(key, defValue);
    }

    public static void setLong(String key, long value) {
        getSharedPreferences().edit().putLong(key, value).apply();
    }
}
