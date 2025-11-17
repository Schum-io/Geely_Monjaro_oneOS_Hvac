package com.ecarx.xui.adaptapi.uiinteraction;

import com.ecarx.xui.adaptapi.FunctionStatus;

public interface IMultiWindowManager {
    void closeSplitScreenMode();
    void closeSplitScreenMode(int screen);
    String getScreenStackPackageName(int screen);
    boolean isActivitySupportedSplitScreen(String pkg, String cls);
    boolean isInSplitScreenWindowingMode();
    boolean isPackageSupportedSplitScreen(String pkg);
    FunctionStatus isSplitScreenModeSupported();
    int moveActivityBetweenDisplay(int gesture);
    void swapDockedAndFullscreenStack();
    String getTopScreenPackageName();
    String getBottomScreenPackageName();
}