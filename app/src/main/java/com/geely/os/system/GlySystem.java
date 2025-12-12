package com.geely.os.system;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.util.Log;
import com.geely.os.car.GlyLog;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class GlySystem {
    public static IGlySystem create(Context context) {
        return GlySystemImpl.create(context);
    }

    public static IGlySystemMode createSystemMode(Context context) {
        return GlySystemModeImpl.create(context);
    }

    private static class StackInfo {
        public Rect bounds;
        public final Configuration configuration;
        public int displayId;
        public int position;
        public int stackId;
        public int[] taskIds;
        public String[] taskNames;
        public int[] taskUserIds;
        public ComponentName topActivity;
        public int userId;
        public boolean visible;

        private StackInfo() {
            this.configuration = new Configuration();
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Stack id=");
            stringBuffer.append(this.stackId);
            stringBuffer.append(" displayId=");
            stringBuffer.append(this.displayId);
            stringBuffer.append(" visible=").append(this.visible);
            stringBuffer.append(" position=").append(this.position);
            for (int i = 0; i < this.taskNames.length; i++) {
                stringBuffer.append(" taskName[").append(i).append("]:");
                stringBuffer.append(this.taskNames[i]);
                if (this.topActivity != null) {
                    stringBuffer.append(" topActivity=").append(this.topActivity);
                }
            }
            stringBuffer.append("\n");
            return stringBuffer.toString();
        }
    }

    public static ComponentName getTopActivityByDisplayId(int displayIndex) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        List list;
        ArrayList arrayList = new ArrayList();
        try {
            Method declaredMethod = ActivityManager.class.getDeclaredMethod("getService", new Class[0]);
            declaredMethod.setAccessible(true);
            ArrayList arrayList2 = new ArrayList();
            Object objInvoke = declaredMethod.invoke(null, new Object[0]);
            if (objInvoke != null && (list = (List) objInvoke.getClass().getDeclaredMethod("getAllStackInfos", new Class[0]).invoke(objInvoke, new Object[0])) != null) {
                arrayList2.addAll(list);
            }
            for (Object obj : arrayList2) {
                Class<?> cls = obj.getClass();
                Field declaredField = cls.getDeclaredField("displayId");
                declaredField.setAccessible(true);
                Field declaredField2 = cls.getDeclaredField("topActivity");
                declaredField2.setAccessible(true);
                Field declaredField3 = cls.getDeclaredField("visible");
                declaredField2.setAccessible(true);
                int i = declaredField.getInt(obj);
                ComponentName componentName = (ComponentName) declaredField2.get(obj);
                boolean z = declaredField3.getBoolean(obj);
                if (displayIndex == i) {
                    StackInfo stackInfo = new StackInfo();
                    stackInfo.displayId = i;
                    stackInfo.topActivity = componentName;
                    stackInfo.visible = z;
                    if (componentName != null) {
                        arrayList.add(stackInfo);
                    }
                }
            }
        } catch (Exception e) {
            GlyLog.w("OneVehicleSDK_GlySystem", "getTopActivityByDisplayId, e: " + Log.getStackTraceString(e));
        }
        if (arrayList.size() == 0 || arrayList.get(0) == null) {
            return null;
        }
        return ((StackInfo) arrayList.get(0)).topActivity;
    }
}
