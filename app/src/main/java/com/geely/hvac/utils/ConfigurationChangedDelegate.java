package com.geely.hvac.utils;

import android.content.res.Configuration;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class ConfigurationChangedDelegate {
    private static final String TAG = "ConfigurationChangedDelegate";
    private static final List<ConfigurationChangedListener> mListeners = new ArrayList();

    public interface ConfigurationChangedListener {
        void onConfigurationChanged(Configuration newConfig);
    }

    public static void onConfigurationChanged(Configuration newConfig) {
        List<ConfigurationChangedListener> list = mListeners;
        synchronized (list) {
            Iterator<ConfigurationChangedListener> it = list.iterator();
            while (it.hasNext()) {
                it.next().onConfigurationChanged(newConfig);
            }
        }
    }

    public static void addListener(ConfigurationChangedListener listener) {
        List<ConfigurationChangedListener> list = mListeners;
        synchronized (list) {
            list.add(listener);
        }
        LogUtil.d(TAG, "addListener,size:" + list.size());
    }

    public static void removeListener(ConfigurationChangedListener listener) {
        List<ConfigurationChangedListener> list = mListeners;
        synchronized (list) {
            list.remove(listener);
        }
        LogUtil.d(TAG, "removeListener,size:" + list.size());
    }
}
