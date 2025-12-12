package com.geely.lib.oneosapi.navi.utils;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.text.TextUtils;
import com.geely.lib.oneosapi.user.bean.LoginType;
import com.geely.os.bt.GlyBtDef;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

/* loaded from: classes.dex */
public class Utils {
    public static Intent createExplicitFromImplicitIntent(Context context, Intent implicitIntent) {
        List<ResolveInfo> listQueryIntentServices = context.getPackageManager().queryIntentServices(implicitIntent, 0);
        if (listQueryIntentServices == null || listQueryIntentServices.size() != 1) {
            return null;
        }
        ServiceInfo serviceInfo = listQueryIntentServices.get(0).serviceInfo;
        ComponentName componentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
        Intent intent = new Intent(implicitIntent);
        intent.setComponent(componentName);
        return intent;
    }

    public static String md5(String string) {
        if (TextUtils.isEmpty(string)) {
            return "";
        }
        try {
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(string.getBytes("utf-8"));
            StringBuilder sb = new StringBuilder();
            for (byte b : bArrDigest) {
                String hexString = Integer.toHexString(b & GlyBtDef.AVRCP_PLAYING_STATUS_ID_ERROR);
                if (hexString.length() == 1) {
                    hexString = LoginType.PASSWORD + hexString;
                }
                sb.append(hexString);
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return "";
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static boolean string2boolean(String string, boolean def) {
        if (TextUtils.isEmpty(string)) {
            return def;
        }
        try {
            return Boolean.valueOf(string.toLowerCase()).booleanValue();
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return def;
        }
    }

    public static double string2double(String string, double def) {
        if (TextUtils.isEmpty(string)) {
            return def;
        }
        try {
            return Double.valueOf(string).doubleValue();
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return def;
        }
    }

    public static int string2int(String string, int def) {
        if (TextUtils.isEmpty(string)) {
            return def;
        }
        try {
            return Integer.valueOf(string).intValue();
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return def;
        }
    }
}
