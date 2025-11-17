package com.ecarx.xui.adaptapi.diminteraction;

public interface IDimMenuInteraction {
    interface IDimMenuInteractionCallback {
        void onThemeChanged(int i);
        void onTabChanged(int i);
        void onChangeNaviMode(int i);
        void onControlCenterStateChanged(int i);
        void onEngineStatusChanged(boolean b);
        void onVolumeBarStatusChanged(boolean b);
    }

    int getNaviMode();
    void notifyDimControlCenterActiveType(int activeType);
    void notifyDimSwitchThemeCompeted(boolean completed);
    void notifyIHUReady();
    void registerDimMenuInteractionCallback(IDimMenuInteractionCallback callback);
    void requestDimSwitchTabWindow(int tab);
    void requestDimTheme();
    void setVolume(boolean isMute, int volume);
    void setVolume(int volume);
    boolean switchNaviMode(int naviMode);
    void unregisterDimMenuInteractionCallback(IDimMenuInteractionCallback callback);
}