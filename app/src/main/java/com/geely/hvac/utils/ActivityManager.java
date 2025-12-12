package com.geely.hvac.utils;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ActivityManager {
    public static final String TAG = "ActivityManager";
    private List<Activity> activities;
    private Application.ActivityLifecycleCallbacks mActivityLifecycleCallbacks = new Application.ActivityLifecycleCallbacks() { // from class: com.geely.hvac.utils.ActivityManager.1
        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            ActivityManager.this.mVisibleActivityRef = new WeakReference(activity);
            if (!CommonUtils.isKX11_A2() || !activity.getLocalClassName().contains("activity.GlyMainActivity") || activity == null || ActivityManager.this.activities.contains(activity)) {
                return;
            }
            ActivityManager.this.activities.add(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (!CommonUtils.isKX11_A2() || activity == null) {
                return;
            }
            ActivityManager.this.activities.remove(activity);
        }
    };
    private Context mAppCtx;
    private WeakReference<Activity> mVisibleActivityRef;

    private static class ActivityManagerHolder {
        public static final ActivityManager INSTANCE = new ActivityManager();

        private ActivityManagerHolder() {
        }
    }

    public static ActivityManager getInstance() {
        return ActivityManagerHolder.INSTANCE;
    }

    public void init(Application app) {
        this.mAppCtx = app.getApplicationContext();
        this.activities = new ArrayList();
        app.registerActivityLifecycleCallbacks(this.mActivityLifecycleCallbacks);
    }

    public Context getCurrentVisibleActivityOrContext() {
        Activity activity;
        WeakReference<Activity> weakReference = this.mVisibleActivityRef;
        return (weakReference == null || (activity = weakReference.get()) == null) ? this.mAppCtx : activity;
    }

    public Activity getCurrentVisibleActivity() {
        Activity activity;
        WeakReference<Activity> weakReference = this.mVisibleActivityRef;
        if (weakReference == null || (activity = weakReference.get()) == null) {
            return null;
        }
        return activity;
    }

    public List<Activity> getCurrentVisibleActivities() {
        if (this.activities == null) {
            return null;
        }
        LogUtil.d(TAG, "activities size: " + this.activities.size());
        return this.activities;
    }
}
