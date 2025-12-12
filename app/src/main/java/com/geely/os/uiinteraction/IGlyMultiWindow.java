package com.geely.os.uiinteraction;

/* loaded from: classes.dex */
public interface IGlyMultiWindow {
    void closeSplitScreenMode();

    void closeSplitScreenMode(int screen);

    String getBottomScreenPackageName();

    String getScreenStackPackageName(int screen);

    String getTopScreenPackageName();

    boolean isActivitySupportedSplitScreen(String pkg, String cls);

    boolean isInSplitScreenWindowingMode();

    boolean isPackageSupportedSplitScreen(String pkg);

    int isSplitScreenModeSupported();

    int moveActivityBetweenDisplay(int gesture);

    void swapDockedAndFullscreenStack();
}
