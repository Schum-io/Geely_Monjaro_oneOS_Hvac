package com.geely.os.uiinteraction;

import android.graphics.Rect;

/* loaded from: classes.dex */
public interface IGlyWindow {
    int getDisplayId();

    String getPackage();

    int getType();

    int getUID();

    int getViewVisibility();

    Rect getWindowFrame();

    String getWindowIdentity();

    String getWindowTag();
}
