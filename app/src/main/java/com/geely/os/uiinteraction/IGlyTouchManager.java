package com.geely.os.uiinteraction;

import android.view.View;

/* loaded from: classes.dex */
public interface IGlyTouchManager {
    boolean registerFullScreenTouchListener(int mode, View.OnTouchListener listener);

    boolean unregisterFullScreenTouchListener(View.OnTouchListener listener);
}
