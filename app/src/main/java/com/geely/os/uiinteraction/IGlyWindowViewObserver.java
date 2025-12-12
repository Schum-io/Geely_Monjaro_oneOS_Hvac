package com.geely.os.uiinteraction;

import android.graphics.Rect;

/* loaded from: classes.dex */
public interface IGlyWindowViewObserver {
    void onWindowAdded(IGlyWindow window);

    void onWindowFrameChanged(IGlyWindow window, Rect oldFrame, Rect newFrame);

    void onWindowRemoved(IGlyWindow window);

    void onWindowVisibilityChanged(IGlyWindow window, int visibility);
}
