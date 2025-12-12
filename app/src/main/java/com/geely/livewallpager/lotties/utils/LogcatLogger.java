package com.geely.livewallpager.lotties.utils;

import android.util.Log;
import com.geely.livewallpager.lotties.L;
import com.geely.livewallpager.lotties.LottieLogger;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class LogcatLogger implements LottieLogger {
    private static final Set<String> loggedMessages = new HashSet();

    @Override // com.geely.livewallpager.lotties.LottieLogger
    public void debug(String message) {
        debug(message, null);
    }

    @Override // com.geely.livewallpager.lotties.LottieLogger
    public void debug(String message, Throwable exception) {
        if (L.DBG) {
            Log.d("LOTTIE", message, exception);
        }
    }

    @Override // com.geely.livewallpager.lotties.LottieLogger
    public void warning(String message) {
        warning(message, null);
    }

    @Override // com.geely.livewallpager.lotties.LottieLogger
    public void warning(String message, Throwable exception) {
        Set<String> set = loggedMessages;
        if (set.contains(message)) {
            return;
        }
        Log.w("LOTTIE", message, exception);
        set.add(message);
    }

    @Override // com.geely.livewallpager.lotties.LottieLogger
    public void error(String message, Throwable exception) {
        if (L.DBG) {
            Log.d("LOTTIE", message, exception);
        }
    }
}
