package com.ecarx.xui.adaptapi.uiinteraction;

import android.graphics.Rect;

public interface IWindowManager {
    IWindow[] getWindowList();
    boolean registerWindowObserver(IWindowObserver observer);
    boolean unregisterWindowObserver(IWindowObserver observer);
    boolean registerWindowObserver(IWindowViewObserver observer);
    boolean unregisterWindowObserver(IWindowViewObserver observer);

    interface IWindow {
        int getDisplayId();
        String getPackage();
        int getType();
        int getUID();
        int getViewVisibility();
        Rect getWindowFrame();
        String getWindowIdentity();
        String getWindowTag();
    }

    interface IWindowObserver {
        void onWindowAdded(IWindow iWindow);
        void onWindowRemoved(IWindow iWindow);
    }

    interface IWindowViewObserver extends IWindowObserver {
        void onWindowVisibilityChanged(IWindow iWindow, int i);
        void onWindowFrameChanged(IWindow iWindow, Rect rect, Rect rect1);
    }
}