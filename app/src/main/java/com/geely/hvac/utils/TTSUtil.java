package com.geely.hvac.utils;

import android.content.Context;
import com.geely.lib.oneosapi.OneOSApiManager;
import com.geely.lib.oneosapi.vr.VrManager;

/* loaded from: classes.dex */
public class TTSUtil {
    private static final String TAG = "TTSUtil";

    public static void speak(Context context, String text) {
        VrManager vrManager = OneOSApiManager.getInstance(context).getVrManager();
        LogUtil.d(TAG, "ttsBroadcast vrManager: " + vrManager + " text: " + text);
        if (vrManager != null) {
            vrManager.speak(text, false, 0);
        }
    }
}
