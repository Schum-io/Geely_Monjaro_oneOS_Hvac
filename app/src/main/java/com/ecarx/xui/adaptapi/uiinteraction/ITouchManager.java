package com.ecarx.xui.adaptapi.uiinteraction;

import android.view.View;

public interface ITouchManager {
    boolean registerFullScreenTouchListener(int mode, View.OnTouchListener listener);
    boolean unregisterFullScreenTouchListener(View.OnTouchListener listener);
}