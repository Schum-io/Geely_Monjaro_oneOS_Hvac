package com.ecarx.xui.adaptapi.device.ext;

public interface IA2dpExtension {
    String getA2dpConnectedAddress();
    int getA2dpConnectionState();
    int getA2dpThresholdVolume(String address);
    boolean isA2dpConnected();
    boolean isA2dpServiceReady();
    void muteA2dpAudio(boolean mute, String address);
    void pauseA2dpRender();
    boolean registerA2dpCallback(IA2dpCallback cb);
    boolean reqA2dpConnect(String address);
    boolean reqA2dpDisconnect(String address);
    boolean setA2dpLocalVolume(int vol);
    void startA2dpRender();
    boolean unregisterA2dpCallback(IA2dpCallback cb);
}