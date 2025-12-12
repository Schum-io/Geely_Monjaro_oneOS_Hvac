package com.geely.hvac;

import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import com.geely.hvac.data.GlySensorsData;
import com.geely.hvac.util.GlySystemUtil;
import com.geely.hvac.utils.Executor;
import com.geely.hvac.utils.FontManager;
import com.geely.hvac.utils.LogUtil;
import com.geely.lib.oneosapi.OneOSApiManager;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class GlyAcManager {
    private static final String TAG = "GlyAcManager";
    private Context appCtx;
    private final GlyAcInterfaceManager mAcInterfaceManager;
    private final GlyAcStateManager mAcStateManager;

    private GlyAcManager() {
        this.mAcInterfaceManager = new GlyAcInterfaceManager();
        this.mAcStateManager = new GlyAcStateManager();
    }

    public static GlyAcManager getInstance() {
        return AirConditionManagerHolder.instance;
    }

    private static class AirConditionManagerHolder {
        private static final GlyAcManager instance = new GlyAcManager();

        private AirConditionManagerHolder() {
        }
    }

    public GlyAcInterfaceManager getAcInterfaceManager() {
        return this.mAcInterfaceManager;
    }

    public void init(Context context) {
        LogUtil.d(TAG, "init");
        this.appCtx = context.getApplicationContext();
        Executor.IO.execute(this::lambda$init$0$GlyAcManager);
        this.mAcInterfaceManager.init(this.appCtx);
        this.mAcStateManager.init(this.appCtx);
    }

    public /* synthetic */ void lambda$init$0$GlyAcManager() {
        FontManager.getInstance().init(this.appCtx);
        GlySensorsData.init(this.appCtx);
        OneOSApiManager.getInstance(this.appCtx).init();
    }

    public void dismiss() {
        this.mAcInterfaceManager.dismiss();
    }

    public void open() {
        this.mAcInterfaceManager.show();
    }

    public boolean isStartLauncher() throws SecurityException {
        List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) this.appCtx.getSystemService("activity")).getRunningTasks(10);
        if (runningTasks.size() == 0) {
            return true;
        }
        if (runningTasks.size() == 1) {
            return TextUtils.equals(runningTasks.get(0).baseActivity.getPackageName(), this.appCtx.getPackageName());
        }
        return false;
    }

    public void jumpToHome() {
        LogUtil.i(TAG, "jumpToHome() screenId=0/topPackageName=" + this.appCtx.getPackageName());
        Intent intent = new Intent();
        intent.setAction("android.intent.action.MAIN");
        intent.setComponent(new ComponentName("com.android.launcher3", "com.android.launcher3.Launcher"));
        intent.putExtra("topPackageName", this.appCtx.getPackageName());
        intent.putExtra("title", "");
        intent.putExtra("screenId", 0);
        intent.setFlags(268435456);
        intent.addFlags(131072);
        try {
            this.appCtx.getApplicationContext().startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void jumpToPSDHome() {
        try {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.android.launcher3", "com.geely.view.psd.PsdActivity"));
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.addFlags(268435456);
            intent.putExtra("topPackageName", "com.android.launcher3");
            ActivityOptions activityOptionsMakeBasic = ActivityOptions.makeBasic();
            activityOptionsMakeBasic.setLaunchDisplayId(2);
            this.appCtx.getApplicationContext().startActivity(intent, activityOptionsMakeBasic.toBundle());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean isStartLauncherByDisplayId(int displayIndex) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Method declaredMethod = null;
        ArrayList arrayList = new ArrayList();
        try {
            declaredMethod = ActivityManager.class.getDeclaredMethod("getService", new Class[0]);
        } catch (Exception e) {
            LogUtil.d("GlySystemUtil", "getTopActivityByDisplayId, e: " + Log.getStackTraceString(e));
        }
        if (declaredMethod == null) {
            return false;
        }
        declaredMethod.setAccessible(true);
        ArrayList arrayList2 = new ArrayList();
        Object objInvoke = declaredMethod.invoke(null, new Object[0]);
        if (objInvoke != null) {
            Method declaredMethod2 = objInvoke.getClass().getDeclaredMethod("getAllStackInfos", new Class[0]);
            if (declaredMethod2 == null) {
                return false;
            }
            List list = (List) declaredMethod2.invoke(objInvoke, new Object[0]);
            if (list != null) {
                arrayList2.addAll(list);
            }
        }
        for (Object obj : arrayList2) {
            Class<?> cls = obj.getClass();
            Field declaredField = cls.getDeclaredField("displayId");
            if (declaredField == null) {
                return false;
            }
            declaredField.setAccessible(true);
            Field declaredField2 = cls.getDeclaredField("topActivity");
            if (declaredField2 == null) {
                return false;
            }
            declaredField2.setAccessible(true);
            Field declaredField3 = cls.getDeclaredField("visible");
            if (declaredField3 == null) {
                return false;
            }
            declaredField2.setAccessible(true);
            int i = declaredField.getInt(obj);
            ComponentName componentName = (ComponentName) declaredField2.get(obj);
            boolean z = declaredField3.getBoolean(obj);
            if (displayIndex == i) {
                GlySystemUtil.StackInfo stackInfo = new GlySystemUtil.StackInfo();
                stackInfo.displayId = i;
                stackInfo.topActivity = componentName;
                stackInfo.visible = z;
                if (componentName != null) {
                    arrayList.add(stackInfo);
                }
            }
        }
        int size = arrayList.size();
        if (size == 0) {
            return true;
        }
        if (size == 1) {
            return TextUtils.equals(((GlySystemUtil.StackInfo) arrayList.get(0)).topActivity.getPackageName(), this.appCtx.getPackageName());
        }
        return false;
    }
}
