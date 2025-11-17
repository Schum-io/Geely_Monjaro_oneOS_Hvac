package com.geely.os.diminteraction;

/* loaded from: classes.dex */
public interface IGlyDimMenuInteractionCallback {
    void onChangeNaviMode(int mode);

    void onControlCenterStateChanged(int state);

    void onEngineStatusChanged(boolean isOff);

    void onTabChanged(int tab);

    void onThemeChanged(int color);

    void onVolumeBarStatusChanged(boolean isShow);
}
