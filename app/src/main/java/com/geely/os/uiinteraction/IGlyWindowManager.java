package com.geely.os.uiinteraction;

/* loaded from: classes.dex */
public interface IGlyWindowManager {
    IGlyWindow[] getWindowList();

    boolean registerWindowObserver(IGlyWindowObserver observer);

    boolean registerWindowViewObserver(IGlyWindowViewObserver observer);

    boolean unregisterWindowObserver(IGlyWindowObserver observer);

    boolean unregisterWindowViewObserver(IGlyWindowViewObserver observer);
}
