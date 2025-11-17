package com.geely.hvac.data;

import android.content.Context;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.utils.StackPrinter;
import com.geely.lib.oneosapi.OneOSApiManager;
import com.geely.lib.oneosapi.user.UserManager;
import com.geely.lib.oneosapi.user.bean.UserInfo;
import com.geely.os.system.GlySystem;
import com.sensorsdata.analytics.android.sdk.SAConfigOptions;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class GlySensorsData {
    private static final String SA_SERVER_URL = "https://ubpdata.geely.com/sa?project=OneOS";
    private static final String TAG = "GlySensorsData";

    public static void init(Context appCtx) {
        try {
            SensorsDataAPI.startWithConfigOptions(appCtx, new SAConfigOptions(SA_SERVER_URL).setAutoTrackEventType(15).enableTrackAppCrash().enableLog(false));
            SensorsDataAPI.sharedInstance().trackFragmentAppViewScreen();
            SensorsDataAPI.sharedInstance().identify(GlySystem.create(appCtx).getVin());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void registerSuperProperties(Context appCtx, int screen) {
        UserManager userManager = OneOSApiManager.getInstance(appCtx).getUserManager();
        UserInfo loginUser = userManager == null ? null : userManager.getLoginUser();
        String userId = loginUser == null ? "" : loginUser.getUserId();
        boolean z = userManager != null && userManager.hasLogin();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("account_id", userId);
            jSONObject.put("is_login", z);
            jSONObject.put("is_main_driving_screen", screen);
            SensorsDataAPI.sharedInstance().registerSuperProperties(jSONObject);
            LogUtil.d(TAG, "registerSuperProperties, userId:" + userId + ",isUserLogin:" + z + ",um:" + userManager + ",userInfo:" + loginUser);
        } catch (JSONException e) {
            LogUtil.e(TAG, "registerSuperProperties: " + StackPrinter.getExceptionStack(e));
        }
    }

    public static void track(String eventName) {
        LogUtil.d(TAG, "track: eventName = " + eventName);
        SensorsDataAPI.sharedInstance().track(eventName);
    }

    public static <T> void track(String eventName, String field, T value) {
        LogUtil.d(TAG, "track: eventName = " + eventName + ", field = " + field + ", value = " + value);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(field, value);
            SensorsDataAPI.sharedInstance().track(eventName, jSONObject);
        } catch (JSONException e) {
            LogUtil.e(TAG, "track: " + e.getMessage());
        }
    }

    public static void track(String eventName, Map<String, Object> paramsMap) {
        if (paramsMap == null || paramsMap.isEmpty()) {
            LogUtil.d(TAG, "track: []");
            return;
        }
        JSONObject jSONObject = new JSONObject(paramsMap);
        LogUtil.d(TAG, "track: " + jSONObject);
        SensorsDataAPI.sharedInstance().track(eventName, jSONObject);
    }
}
