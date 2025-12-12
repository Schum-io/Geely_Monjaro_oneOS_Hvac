package com.geely.os.diminteraction;

/* loaded from: classes.dex */
public interface IGlyDimMenuInteraction {
    int getNaviMode();

    void notifyDimControlCenterActiveType(int activeType);

    void notifyDimEnterControlCenter(int enterControlCenterAction);

    void notifyDimSwitchThemeCompeted(boolean completed);

    void notifyIHUReady();

    void registerDimMenuInteractionCallback(IGlyDimMenuInteractionCallback callback);

    void requestDimSwitchTabWindow(int tab);

    void requestDimTheme();

    void setVolume(int volume);

    void setVolume(boolean isMute, int volume);

    boolean switchNaviMode(int naviMode);

    void unregisterDimMenuInteractionCallback(IGlyDimMenuInteractionCallback callback);
}
